package weixin.cms.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.util.FileUtils;
import org.jeecgframework.core.util.LogUtil;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import weixin.cms.cmsdata.CmsDataCollectI;
import weixin.cms.cmsdata.impl.CmsArticleDataCollect;
import weixin.cms.cmsdata.impl.CmsIndexDataCollect;
import weixin.cms.cmsdata.impl.CmsLeaveMsgDataCollect;
import weixin.cms.cmsdata.impl.CmsMenuDataCollect;
import weixin.cms.cmsdata.impl.CmsPhotoAlbumDataCollect;
import weixin.cms.cmsdata.impl.CmsPhotoDataCollect;
import weixin.cms.common.CmsDataContent;
import weixin.cms.entity.WeixinCmsSiteEntity;
import weixin.cms.entity.WeixinCmsStyleEntity;
import weixin.cms.service.CmsArticleServiceI;
import weixin.cms.service.WeixinCmsSiteServiceI;
import weixin.cms.service.WeixinCmsStyleServiceI;
import weixin.cms.util.CmsFreemarkerHelper;

@Controller
@RequestMapping({"/cmsController"})
public class CmsController extends BaseController 
{

  @Autowired
  private CmsArticleServiceI cmsArticleService;

  @Autowired
  private WeixinCmsSiteServiceI weixinCmsSiteService;

  @Autowired
  private WeixinCmsStyleServiceI weixinCmsStyleService;
  private static Map<String, Object> dataCollectContent = new HashMap();

  private String getRootUrl(HttpServletRequest request, String page)
  {
    String rootUrl = null;
    ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");
    //System.out.println(request.getSession().getServletContext().getRealPath(""));
   // LogUtil.info("----------rooturl---"+super.getMyRootUrl(""));
   // rootUrl = super.getMyRootUrl("")+"/template/cms";
    rootUrl =  bundler.getString("tmBaseDir")+"template/cms";
    LogUtil.info(rootUrl+"----------------------rootUrl");
    //为了兼容多个应用项目 获取方式 
    return rootUrl;
  }

  @RequestMapping(params={"goPage"})
  public void goPage(HttpServletRequest request, HttpServletResponse response, @RequestParam String page)
  {
    Map params = paramsToMap(request);

    String rootUrl = getRootUrl(request, page);
    String styleUrl = null;

    WeixinCmsSiteEntity weixinCmsSiteEntity = (WeixinCmsSiteEntity)this.weixinCmsSiteService.findUniqueByProperty(WeixinCmsSiteEntity.class, "accountid", params.get("accountid"));

    WeixinCmsStyleEntity weixinCmsStyleEntity = null;

    String templateName = null;
    LogUtil.info(weixinCmsStyleEntity);
    if (weixinCmsSiteEntity != null) {
      if (weixinCmsSiteEntity.getSiteTemplateStyle() != null) {
        weixinCmsStyleEntity = (WeixinCmsStyleEntity)this.weixinCmsStyleService.get(WeixinCmsStyleEntity.class, weixinCmsSiteEntity.getSiteTemplateStyle());
      }
      if (weixinCmsStyleEntity != null) {
        templateName = ResourceUtil.getShangJiaAccountId() + "/" + weixinCmsStyleEntity.getTemplateUrl();
        styleUrl = rootUrl + "/" + ResourceUtil.getShangJiaAccountId() + "/" + weixinCmsStyleEntity.getTemplateUrl() + "/html/";
      } else {
        templateName = "default";
        styleUrl = rootUrl + "/default/html/";
      }
    } else {
      templateName = "default";
      styleUrl = rootUrl + "/default/html/";
    }
    LogUtil.info("-----------template------"+templateName+"------styleUrl-----"+styleUrl+"--------"+page);
    params.put("styleName", templateName);

    CmsFreemarkerHelper cmsFreemarkerHelper = new CmsFreemarkerHelper(styleUrl);
    LogUtil.info("-----------cmsFreemarkerHelper------"+cmsFreemarkerHelper);
    if (dataCollectContent.get(page) != null) {
      CmsDataCollectI cmsDataCollect = (CmsDataCollectI)dataCollectContent.get(page);
      cmsDataCollect.collect(params);
    }
    LogUtil.info("-----------page------"+page);
    CmsDataContent.loadContent().put("accountid", params.get("accountid"));
    String html = cmsFreemarkerHelper.parseTemplate(page + ".html", CmsDataContent.loadContent());
    response.setContentType("text/html");
    response.setHeader("Cache-Control", "no-store");
    try
    {
      PrintWriter writer = response.getWriter();
      writer.println(html);
      writer.flush();
    } catch (IOException e) {
      e.printStackTrace();
    }
  }
  @RequestMapping(params={"goGsjs"})
  public void gsjs(HttpServletRequest request, HttpServletResponse response, @RequestParam String page)
  {
   

    String rootUrl = getRootUrl(request, page);
    String styleUrl = null;

    String templateName = null;
    
      templateName = "default";
      styleUrl = rootUrl + "/default/html/";

    CmsFreemarkerHelper cmsFreemarkerHelper = new CmsFreemarkerHelper(styleUrl);
    String html = cmsFreemarkerHelper.parseTemplate(page + ".html", CmsDataContent.loadContent());
    response.setContentType("text/html");
    response.setHeader("Cache-Control", "no-store");
    try
    {
      PrintWriter writer = response.getWriter();
      writer.println(html);
      writer.flush();
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  @RequestMapping(params={"getMenuList"})
  public void getMenuList(HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    Map params = paramsToMap(request);
    List list = this.cmsArticleService.listByMap(params, dataGrid.getPage(), dataGrid.getRows());
    int count = this.cmsArticleService.getCount(params);
    dataGrid.setTotal(count);
    dataGrid.setResults(list);
    TagUtil.datagrid(response, dataGrid);
  }

  private Map<String, String> paramsToMap(HttpServletRequest request)
  {
    Map params = new HashMap();

    Enumeration em = request.getParameterNames();
    while (em.hasMoreElements()) {
      String paramName = (String)em.nextElement();
      String paramValue = request.getParameter(paramName);

      params.put(paramName, paramValue);
    }
    if (!params.containsKey("accountid")) {
      params.put("accountid", ResourceUtil.getShangJiaAccountId());
    }
    return params;
  }

  static
  {
    dataCollectContent.put("index", new CmsIndexDataCollect());

    dataCollectContent.put("menu", new CmsMenuDataCollect());

    dataCollectContent.put("article", new CmsArticleDataCollect());

    dataCollectContent.put("photoAlbum", new CmsPhotoAlbumDataCollect());

    dataCollectContent.put("photo", new CmsPhotoDataCollect());

    dataCollectContent.put("leaveMsg", new CmsLeaveMsgDataCollect());
  }

  
  
}