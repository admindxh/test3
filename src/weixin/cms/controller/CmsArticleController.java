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
import weixin.cms.entity.CmsArticleEntity;
import weixin.cms.entity.CmsMenuEntity;
import weixin.cms.service.CmsArticleServiceI;
import weixin.guanjia.account.service.WeixinAccountServiceI;

@Controller
@RequestMapping({"/cmsArticleController"})
public class CmsArticleController extends BaseController
{
  private static final Logger logger = Logger.getLogger(CmsArticleController.class);

  @Autowired
  private CmsArticleServiceI cmsArticleService;

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

  @RequestMapping(params={"cmsArticle"})
  public ModelAndView cmsArticle(HttpServletRequest request)
  {
    request.setAttribute("accountid", ResourceUtil.getShangJiaAccountId());
    return new ModelAndView("weixin/cms/cmsArticleList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(CmsArticleEntity cmsArticle, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(CmsArticleEntity.class, dataGrid);
    cq.eq("accountid", ResourceUtil.getShangJiaAccountId());

    HqlGenerateUtil.installHql(cq, cmsArticle, request.getParameterMap());
    this.cmsArticleService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"datagridwx"})
  public void datagridwx(CmsArticleEntity cmsArticle, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(CmsArticleEntity.class, dataGrid);
    cq.eq("columnId", cmsArticle.getColumnId());

    HqlGenerateUtil.installHql(cq, cmsArticle, request.getParameterMap());
    this.cmsArticleService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(CmsArticleEntity cmsArticle, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    cmsArticle = (CmsArticleEntity)this.systemService.getEntity(CmsArticleEntity.class, cmsArticle.getId());
    this.message = "信息删除成功";
    this.cmsArticleService.delete(cmsArticle);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(CmsArticleEntity cmsArticle, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    String accountId = ResourceUtil.getShangJiaAccountId();
    if ((StringUtil.isEmpty(accountId)) || ("-1".equals(accountId))) {
      j.setSuccess(false);
      this.message = "请添加一个公众帐号。";
    }
    else if (StringUtil.isNotEmpty(cmsArticle.getId())) {
      this.message = "信息更新成功";
      CmsArticleEntity t = (CmsArticleEntity)this.cmsArticleService.get(CmsArticleEntity.class, cmsArticle.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(cmsArticle, t);
        this.cmsArticleService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "信息更新失败";
      }
    } else {
      this.message = "信息添加成功";
      cmsArticle.setAccountid(accountId);
      this.cmsArticleService.save(cmsArticle);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(CmsArticleEntity cmsArticle, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(cmsArticle.getId())) {
      cmsArticle = (CmsArticleEntity)this.cmsArticleService.getEntity(CmsArticleEntity.class, cmsArticle.getId());
      req.setAttribute("cmsArticlePage", cmsArticle);
    }
    req.setAttribute("accountid", ResourceUtil.getShangJiaAccountId());
    return new ModelAndView("weixin/cms/cmsArticle");
  }

  @RequestMapping(params={"cmsArticleListShow"})
  public ModelAndView cmsArticleListShow(HttpServletRequest request)
  {
    if (StringUtil.isNotEmpty(request.getParameter("columnId"))) {
      request.setAttribute("column", this.cmsArticleService.getEntity(CmsMenuEntity.class, request.getParameter("columnId")));
    }
    return new ModelAndView("weixin/cms/cmsArticleListShow");
  }

  @RequestMapping(params={"cmsArticleShow"})
  public ModelAndView cmsArticleShow(HttpServletRequest request)
  {
    if (StringUtil.isNotEmpty(request.getParameter("articleId"))) {
      CmsArticleEntity cmsArticle = (CmsArticleEntity)this.cmsArticleService.getEntity(CmsArticleEntity.class, request.getParameter("articleId"));
      request.setAttribute("cmsArticlePage", cmsArticle);
    }
    return new ModelAndView("weixin/cms/cmsArticleShow");
  }
}