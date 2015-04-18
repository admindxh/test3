package weixin.bbs.controller;

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
import weixin.bbs.entity.WeixinBbsEntity;
import weixin.bbs.service.WeixinBbsServiceI;

@Scope("prototype")
@Controller
@RequestMapping({"/weixinBbsController"})
public class WeixinBbsController extends BaseController
{
  private static final Logger logger = Logger.getLogger(WeixinBbsController.class);

  @Autowired
  private WeixinBbsServiceI weixinBbsService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinBbs"})
  public ModelAndView weixinBbs(HttpServletRequest request)
  {
    return new ModelAndView("weixin/bbs/weixinBbsList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinBbsEntity weixinBbs, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinBbsEntity.class, dataGrid);
    cq.eq("accountid", ResourceUtil.getShangJiaAccountId());

    HqlGenerateUtil.installHql(cq, weixinBbs, request.getParameterMap());
    this.weixinBbsService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(WeixinBbsEntity weixinCommunity, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinCommunity = (WeixinBbsEntity)this.systemService.getEntity(WeixinBbsEntity.class, weixinCommunity.getId());
    this.message = "微社区删除成功";
    this.weixinBbsService.delete(weixinCommunity);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(WeixinBbsEntity weixinBbs, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(weixinBbs.getId())) {
      this.message = "微社区更新成功";
      WeixinBbsEntity t = (WeixinBbsEntity)this.weixinBbsService.get(WeixinBbsEntity.class, weixinBbs.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(weixinBbs, t);
        this.weixinBbsService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "微社区更新失败";
      }
    } else {
      this.message = "微社区添加成功";
      String accountId = ResourceUtil.getShangJiaAccountId();
      weixinBbs.setAccountid(accountId);
      this.weixinBbsService.save(weixinBbs);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(WeixinBbsEntity weixinBbs, HttpServletRequest req)
  {
    String accountid = ResourceUtil.getShangJiaAccountId();
    weixinBbs = (WeixinBbsEntity)this.weixinBbsService.findUniqueByProperty(WeixinBbsEntity.class, "accountid", accountid);
    req.setAttribute("weixinBbsPage", weixinBbs);
    return new ModelAndView("weixin/bbs/weixinBbs");
  }
}