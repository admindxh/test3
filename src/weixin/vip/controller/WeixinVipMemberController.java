package weixin.vip.controller;

import java.util.List;
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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.vip.common.WeixinVipEnum;
import weixin.vip.entity.WeixinVipInfoEntity;
import weixin.vip.entity.WeixinVipMemberEntity;
import weixin.vip.service.WeixinVipInfoServiceI;
import weixin.vip.service.WeixinVipMemberServiceI;

@Controller
@RequestMapping({"/weixinVipMemberController"})
public class WeixinVipMemberController extends BaseController
{
  private static final Logger logger = Logger.getLogger(WeixinVipMemberController.class);

  @Autowired
  private WeixinVipMemberServiceI weixinVipMemberService;

  @Autowired
  private WeixinVipInfoServiceI weixinVipInfoService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinVipMember"})
  public ModelAndView weixinVipMember(HttpServletRequest request)
  {
    return new ModelAndView("weixin/vip/weixinVipMemberList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinVipMemberEntity weixinVipMember, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinVipMemberEntity.class, dataGrid);

    List list = this.weixinVipInfoService.findByProperty(WeixinVipInfoEntity.class, "accountid", ResourceUtil.getShangJiaAccountId());
    cq.in("vipInfo", list.toArray());
    HqlGenerateUtil.installHql(cq, weixinVipMember, request.getParameterMap());
    this.weixinVipMemberService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(WeixinVipMemberEntity weixinVipMember, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinVipMember = (WeixinVipMemberEntity)this.systemService.getEntity(WeixinVipMemberEntity.class, weixinVipMember.getId());
    this.message = "微信会员卡和用户关系表删除成功";
    this.weixinVipMemberService.delete(weixinVipMember);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(WeixinVipMemberEntity weixinVipMember, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(weixinVipMember.getId())) {
      this.message = "微信会员卡和用户关系表更新成功";
      WeixinVipMemberEntity t = (WeixinVipMemberEntity)this.weixinVipMemberService.get(WeixinVipMemberEntity.class, weixinVipMember.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(weixinVipMember, t);
        this.weixinVipMemberService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "微信会员卡和用户关系表更新失败";
      }
    } else {
      this.message = "微信会员卡和用户关系表添加成功";
      this.weixinVipMemberService.save(weixinVipMember);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(WeixinVipMemberEntity weixinVipMember, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinVipMember.getId())) {
      weixinVipMember = (WeixinVipMemberEntity)this.weixinVipMemberService.getEntity(WeixinVipMemberEntity.class, weixinVipMember.getId());
      req.setAttribute("weixinVipMemberPage", weixinVipMember);
    }
    req.setAttribute("LEVEL", WeixinVipEnum.values());
    return new ModelAndView("weixin/vip/weixinVipMember");
  }
}