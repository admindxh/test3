package weixin.wall.core;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.jeecgframework.web.system.service.SystemService;
import org.jeecgframework.web.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.gzuserinfo.model.GzUserInfo;
import weixin.guanjia.gzuserinfo.service.GzUserInfoService;
import weixin.vip.util.WeixinVipFreemarkerHelper;
import weixin.wall.entity.WeixinWallEntity;
import weixin.wall.service.WeixinWallMessageServiceI;
import weixin.wall.service.WeixinWallServiceI;

@Controller
@RequestMapping({"/weixinWallCoreController"})
public class WeixinWallCoreController extends BaseController
{

  @Autowired
  private GzUserInfoService gzUserInfoService;

  @Autowired
  private WeixinWallServiceI weixinWallService;

  @Autowired
  private WeixinWallMessageServiceI weixinWallMessageService;

  @Autowired
  private WeixinAccountServiceI weixinAccountServiceI;

  @Autowired
  private UserService userService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage()
  {
    return this.message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  @RequestMapping(params={"goPage"})
  public void goPage(HttpServletRequest request, HttpServletResponse response, @RequestParam String page)
  {
    ResourceUtil.initQianTaiRequestAccountId(request);
    boolean flag = false;
    Map paras = new HashMap();

    String defaultUrl = request.getServletContext().getRealPath("/template/vip/default");
    if (!flag)
    {
      defaultUrl = defaultUrl + "/ftl/";
    }
    WeixinVipFreemarkerHelper weixinVipFreemarkerHelper = new WeixinVipFreemarkerHelper(defaultUrl);

    if ("index".equals(page))
    {
      TSUser user = ResourceUtil.getSessionUserName();
      paras.put("member", user);

      String accountId = ResourceUtil.getQianTaiAccountId();
      paras.put("WEIXIN_QIANTAI_ACCOUNTID", accountId);

      if ((user != null) && (user.getOpenid() != null)) {
        GzUserInfo userinfo = this.gzUserInfoService.getGzUserInfo(user.getOpenid(), accountId);
        if (userinfo != null) {
          paras.put("userinfo", userinfo);
        }
      }

      WeixinWallEntity wall = (WeixinWallEntity)this.weixinWallService.findUniqueByProperty(WeixinWallEntity.class, "accountid", accountId);

      if (wall != null) {
        Integer starindex = Integer.valueOf(1);
        Integer endindex = Integer.valueOf(7);
        String pageno = request.getParameter("pageno");
        Integer pagesize = Integer.valueOf(7);

        if ((pageno != null) || (!"".equals(pageno))) {
          starindex = Integer.valueOf(Integer.parseInt(pageno) * pagesize.intValue());
          endindex = Integer.valueOf(Integer.parseInt(pageno) * pagesize.intValue() + 7);
          request.setAttribute("pageno", Integer.valueOf(Integer.parseInt(pageno)));
        } else {
          pageno = "0";
          request.setAttribute("pageno", Integer.valueOf(0));
        }
        request.setAttribute("wallt", wall);
        List wallmessagelist = this.weixinWallMessageService.findByQueryString("from WeixinWallMessageEntity w where w.wallid='" + wall.getId() + "' " + "and w.accountid='" + wall.getAccountid() + "' order by w.createtime desc limit" + starindex + "," + endindex);

        request.setAttribute("walllist", wallmessagelist);
      }
    }

    String html = weixinVipFreemarkerHelper.parseTemplate(page + ".ftl", paras);

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
}