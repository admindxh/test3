package weixin.cms.controller;

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
import weixin.cms.entity.AdEntity;
import weixin.cms.service.AdServiceI;
import weixin.guanjia.account.service.WeixinAccountServiceI;

@Controller
@RequestMapping({"/adController"})
public class AdController extends BaseController
{
  private static final Logger logger = Logger.getLogger(AdController.class);

  @Autowired
  private AdServiceI adService;

  @Autowired
  private SystemService systemService;

  @Autowired
  private WeixinAccountServiceI weixinAccountService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"ad"})
  public ModelAndView ad(HttpServletRequest request)
  {
    return new ModelAndView("weixin/cms/adList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(AdEntity ad, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(AdEntity.class, dataGrid);
    cq.eq("accountid", ResourceUtil.getShangJiaAccountId());

    HqlGenerateUtil.installHql(cq, ad, request.getParameterMap());
    this.adService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(AdEntity ad, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    ad = (AdEntity)this.systemService.getEntity(AdEntity.class, ad.getId());
    this.message = "首页广告删除成功";
    this.adService.delete(ad);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(AdEntity ad, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    String accountId = ResourceUtil.getShangJiaAccountId();
    if ((StringUtil.isEmpty(accountId)) || ("-1".equals(accountId))) {
      j.setSuccess(false);
      this.message = "请添加一个公众帐号。";
    }
    else if (StringUtil.isNotEmpty(ad.getId())) {
      this.message = "首页广告更新成功";
      AdEntity t = (AdEntity)this.adService.get(AdEntity.class, ad.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(ad, t);
        t.setOrders(ad.getOrders());
        this.adService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "首页广告更新失败";
      }
    } else {
      this.message = "首页广告添加成功";
      ad.setAccountid(accountId);
      this.adService.save(ad);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(AdEntity ad, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(ad.getId())) {
      ad = (AdEntity)this.adService.getEntity(AdEntity.class, ad.getId());
      req.setAttribute("adPage", ad);
    }
    return new ModelAndView("weixin/cms/ad");
  }
}