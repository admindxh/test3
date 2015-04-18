package weixin.wall.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.wall.entity.WeixinWallEntity;
import weixin.wall.service.WeixinWallServiceI;

@Scope("prototype")
@Controller
@RequestMapping({"/weixinWallController"})
public class WeixinWallController extends BaseController
{
  private static final Logger logger = Logger.getLogger(WeixinWallController.class);

  @Autowired
  private WeixinWallServiceI weixinWallService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinWall"})
  public ModelAndView weixinWall(HttpServletRequest request)
  {
    return new ModelAndView("weixin/wall/weixinWallList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinWallEntity weixinWall, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinWallEntity.class, dataGrid);
    cq.eq("accountid", ResourceUtil.getShangJiaAccountId());

    HqlGenerateUtil.installHql(cq, weixinWall, request.getParameterMap());
    this.weixinWallService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(WeixinWallEntity weixinWall, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinWall = (WeixinWallEntity)this.systemService.getEntity(WeixinWallEntity.class, weixinWall.getId());
    this.message = "微信墙删除成功";
    this.weixinWallService.delete(weixinWall);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(WeixinWallEntity weixinWall, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(weixinWall.getId())) {
      this.message = "微信墙更新成功";
      WeixinWallEntity t = (WeixinWallEntity)this.weixinWallService.get(WeixinWallEntity.class, weixinWall.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(weixinWall, t);
        this.weixinWallService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "微信墙更新失败";
      }
    } else {
      this.message = "微信墙添加成功";

      this.weixinWallService.save(weixinWall);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(WeixinWallEntity weixinWall, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinWall.getId())) {
      weixinWall = (WeixinWallEntity)this.weixinWallService.getEntity(WeixinWallEntity.class, weixinWall.getId());
      req.setAttribute("weixinWallPage", weixinWall);
    }
    return new ModelAndView("weixin/wall/weixinWall");
  }
}