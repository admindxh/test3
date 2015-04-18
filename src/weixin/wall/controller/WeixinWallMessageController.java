package weixin.wall.controller;

import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.constant.WeiXinConstant;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.guanjia.gzuserinfo.model.GzUserInfo;
import weixin.guanjia.gzuserinfo.service.GzUserInfoService;
import weixin.wall.entity.WeixinWallEntity;
import weixin.wall.entity.WeixinWallMessageEntity;
import weixin.wall.service.WeixinWallMessageServiceI;

@Scope("prototype")
@Controller
@RequestMapping({"/weixinWallMessageController"})
public class WeixinWallMessageController extends BaseController
{
  private static final Logger logger = Logger.getLogger(WeixinWallMessageController.class);

  @Autowired
  private GzUserInfoService gzUserInfoService;

  @Autowired
  private WeixinWallMessageServiceI weixinWallMessageService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinWallMessage"})
  public ModelAndView weixinWallMessage(HttpServletRequest request)
  {
    return new ModelAndView("weixin/wall/weixinWallMessageList");
  }

  @RequestMapping(params={"wallAuthstr"})
  public ModelAndView wallAuthstr(HttpServletRequest request)
  {
    request.setAttribute("wall_status", WeiXinConstant.WALL_TYPE_WALLAUTHSTR);
    return new ModelAndView("weixin/wall/weixinWallMessageList");
  }

  @RequestMapping(params={"wallAudited"})
  public ModelAndView wallAudited(HttpServletRequest request) {
    request.setAttribute("wall_status", WeiXinConstant.WALL_TYPE_WALLAUDITED);
    return new ModelAndView("weixin/wall/weixinWallMessageList");
  }

  @RequestMapping(params={"wallNoAudit"})
  public ModelAndView wallNoAudit(HttpServletRequest request) {
    request.setAttribute("wall_status", WeiXinConstant.WALL_TYPE_WALLNOAUDIT);
    return new ModelAndView("weixin/wall/weixinWallMessageList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinWallMessageEntity weixinWallMessage, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinWallMessageEntity.class, dataGrid);
    cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
    String status = request.getParameter("wall_status");
    if ((status != null) && (!"".equals(status))) {
      cq.eq("status", status);
    }

    HqlGenerateUtil.installHql(cq, weixinWallMessage, request.getParameterMap());
    this.weixinWallMessageService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(WeixinWallMessageEntity weixinWallMessage, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinWallMessage = (WeixinWallMessageEntity)this.systemService.getEntity(WeixinWallMessageEntity.class, weixinWallMessage.getId());
    this.message = "微信墙信息删除成功";
    this.weixinWallMessageService.delete(weixinWallMessage);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(WeixinWallMessageEntity weixinWallMessage, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if ((weixinWallMessage.getOpenid() == null) || (weixinWallMessage.getAccountid() == null) || (weixinWallMessage.getAccountid() == null)) {
      this.message = "用户身份过期,请重新关闭页面重新访问";
      j.setMsg(this.message);
      j.setSuccess(false);
      return j;
    }

    TSUser u = (TSUser)this.systemService.findUniqueByProperty(TSUser.class, "openid", weixinWallMessage.getOpenid());
    if (u == null) {
      this.message = "用户身份不存在,请重新关闭页面重新访问";
      j.setMsg(this.message);
      j.setSuccess(false);
      return j;
    }
    WeixinWallEntity wall = (WeixinWallEntity)this.systemService.findUniqueByProperty(WeixinWallEntity.class, "id", weixinWallMessage.getWallid());
    if (wall == null) {
      this.message = "大屏幕已关闭,活动结束";
      j.setMsg(this.message);
      j.setSuccess(false);
      return j;
    }
    GzUserInfo userinfo = this.gzUserInfoService.getGzUserInfo(weixinWallMessage.getOpenid(), weixinWallMessage.getAccountid());
    if (userinfo == null) {
      this.message = "用户身份过期,请重新关闭页面重新访问";
      j.setMsg(this.message);
      j.setSuccess(false);
      return j;
    }
    if (WeiXinConstant.WALL_TYPE_AUDIT.equals(wall.getType()))
      weixinWallMessage.setStatus(WeiXinConstant.WALL_TYPE_WALLAUTHSTR);
    else if (WeiXinConstant.WALL_TYPE_NOAUDIT.equals(wall.getType())) {
      weixinWallMessage.setStatus(WeiXinConstant.WALL_TYPE_WALLAUDITED);
    }
    weixinWallMessage.setCreatetime(new Date());
    weixinWallMessage.setHeadimgurl(userinfo.getHeadimgurl());
    weixinWallMessage.setNickname(userinfo.getNickname());
    weixinWallMessage.setUserid(u.getId());
    try {
      this.weixinWallMessageService.save(weixinWallMessage);
    } catch (Exception e) {
      this.message = "发表失败";
      j.setSuccess(false);
    }
    j.setMsg(this.message);
    j.setSuccess(true);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(WeixinWallMessageEntity weixinWallMessage, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinWallMessage.getId())) {
      weixinWallMessage = (WeixinWallMessageEntity)this.weixinWallMessageService.getEntity(WeixinWallMessageEntity.class, weixinWallMessage.getId());
      req.setAttribute("weixinWallMessagePage", weixinWallMessage);
    }
    return new ModelAndView("weixin/wall/weixinWallMessage");
  }

  @RequestMapping(params={"auditMember"})
  @ResponseBody
  public AjaxJson auditMember(WeixinWallMessageEntity weixinWallMessage, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(weixinWallMessage.getId())) {
      this.message = "微信墙信息更新成功";
      WeixinWallMessageEntity t = (WeixinWallMessageEntity)this.weixinWallMessageService.get(WeixinWallMessageEntity.class, weixinWallMessage.getId());
      try {
        if (t != null) {
          String falg = request.getParameter("falg");
          if (WeiXinConstant.WALL_TYPE_WALLAUDITED.equals(falg))
          {
            t.setStatus(WeiXinConstant.WALL_TYPE_WALLAUDITED);
          } else if (WeiXinConstant.WALL_TYPE_WALLNOAUDIT.equals(falg))
          {
            t.setStatus(WeiXinConstant.WALL_TYPE_WALLNOAUDIT);
          }
          this.message = "审核操作成功";
          this.weixinWallMessageService.saveOrUpdate(t);
        } else {
          this.message = "审核失败,非法数据";
        }
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "微信墙信息更新失败";
      }
    } else {
      this.message = "审核失败,非法数据";
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }
}