package weixin.vip.core;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.jeecgframework.web.system.service.SystemService;
import org.jeecgframework.web.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.promotion.service.PromotionCouponServiceI;
import weixin.vip.entity.WeixinVipInfoEntity;
import weixin.vip.entity.WeixinVipMemberEntity;
import weixin.vip.service.WeixinVipInfoServiceI;
import weixin.vip.service.WeixinVipMemberServiceI;
import weixin.vip.util.WeixinVipFreemarkerHelper;

@Controller
@RequestMapping({"/weixinVipController"})
public class WeixinVipController extends BaseController
{

  @Autowired
  private WeixinVipMemberServiceI weixinVipMemberService;

  @Autowired
  private WeixinAccountServiceI weixinAccountServiceI;

  @Autowired
  private WeixinVipInfoServiceI weixinVipInfoService;

  @Autowired
  private PromotionCouponServiceI promotionCouponService;

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

    String defaultUrl = request.getRealPath("/template/vip/default");
    if (!flag)
    {
      defaultUrl = defaultUrl + "/ftl/";
    }
    WeixinVipFreemarkerHelper weixinVipFreemarkerHelper = new WeixinVipFreemarkerHelper(defaultUrl);

    if ("index".equals(page)) {
      paras.put("couponlength", Integer.valueOf(0));
      TSUser user = new TSUser();
      user = ResourceUtil.getSessionUserName();
      if ((user != null) && (user.getId() != null) && ("".equals(user.getId())));
      paras.put("member", user);
      String accountId = ResourceUtil.getQianTaiAccountId();
      paras.put("WEIXIN_QIANTAI_ACCOUNTID", accountId);
      List list = this.weixinVipInfoService.findByQueryString("from WeixinVipInfoEntity vipinfo where vipinfo.accountid='" + accountId + "'  order by vipinfo.levelId asc");

      paras.put("Vip_Index", "member");
      if ((list == null) || (list.size() == 0)) {
        paras.put("Vip_Index", "zero");
      }
      String str = "";
      for (int i = 0; i < list.size(); i++) {
        str = str + "'" + ((WeixinVipInfoEntity)list.get(i)).getId() + "',";
      }
      str = str.substring(0, str.length() - 1);
      List memberlist = this.weixinVipMemberService.findByQueryString("from WeixinVipMemberEntity m where m.vipInfo in (" + str + ") and m.tsuer = '" + user.getId() + "'");

      if ((memberlist == null) || (memberlist.size() == 0)) {
        paras.put("Vip_Index", "nomember");
      } else {
        paras.put("Vip_Info", memberlist.get(0));
        List memebrcouponlist = this.promotionCouponService.findCouponByMember(((WeixinVipMemberEntity)memberlist.get(0)).getId());
        if ((memebrcouponlist != null) && (memebrcouponlist.size() > 0)) {
          paras.put("couponlist", memebrcouponlist);
          paras.put("couponlength", Integer.valueOf(memebrcouponlist.size()));
        }
      }
      WeixinVipMemberEntity member = loadIndex();
      if (member == null) {
        paras.put("weixinVipMember", null);
        paras.put("weixinVipInfo", null);
      } else {
        paras.put("weixinVipMember", member);
        paras.put("weixinVipInfo", member.getVipInfo());
      }
    }

    if ("member".equals(page)) {
      String accountId = ResourceUtil.getQianTaiAccountId();
      paras.put("WEIXIN_QIANTAI_ACCOUNTID", accountId);
      TSUser user = ResourceUtil.getSessionUserName();
      TSUser u = (TSUser)this.userService.getEntity(TSUser.class, user.getId());
      user = ResourceUtil.setSessionUserName(u);
      paras.put("member", user);
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

  private WeixinVipMemberEntity loadIndex()
  {
    TSUser user = ResourceUtil.getSessionUserName();
    String hql = "from WeixinVipMemberEntity where tsuer='" + user.getId() + "'";
    List weixinShopCategoryList = this.weixinVipMemberService.findByQueryString(hql);
    if ((weixinShopCategoryList != null) && (weixinShopCategoryList.size() > 0)) {
      return (WeixinVipMemberEntity)weixinShopCategoryList.get(0);
    }
    return null;
  }

  @RequestMapping(params={"vipInfo"})
  @ResponseBody
  public AjaxJson vipInfo(HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    String accountid = request.getParameter("accountid");
    if ((accountid == null) || ("".equals(accountid))) {
      j.setMsg("accountid_error");
    }

    List list = this.weixinVipInfoService.findByProperty(WeixinVipInfoEntity.class, "accountid", accountid);
    if ((list == null) || (list.size() == 0)) {
      j.setMsg("vip_zero");
    } else {
      TSUser user = ResourceUtil.getSessionUserName();
      if (user == null)
      {
        j.setMsg("user_error");
      }
      List memberlist = this.weixinVipMemberService.findByQueryString("from WeixinVipMemberEntity member where member.vipInfo.id in (" + list.toArray() + ") and member.tsuer.id = " + user.getId());

      if ((memberlist == null) || (memberlist.size() == 0)) {
        j.setMsg("vip_not_exist");
      } else {
        j.setMsg("vip_exist");
        j.setObj(memberlist.get(0));
      }
    }
    return j;
  }

  @RequestMapping(params={"addvipInfo"})
  @ResponseBody
  public AjaxJson addMemberVip(HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    String accountid = request.getParameter("accountid");
    if ((accountid == null) || ("".equals(accountid)))
    {
      j.setMsg("accountid_error");
    }

    List<WeixinVipInfoEntity> list = this.weixinVipInfoService.findByQueryString("from WeixinVipInfoEntity vipinfo where vipinfo.accountid='" + accountid + "' order by vipinfo.levelId asc");

    if ((list == null) || (list.size() == 0)) {
      j.setMsg("vip_zero");
    } else {
      TSUser user = ResourceUtil.getSessionUserName();
      if (user == null)
      {
        j.setMsg("user_error");
      }
      String ids = "";
      for (WeixinVipInfoEntity v : list) {
        ids = ids + "'" + v.getId() + "',";
      }
      ids = ids.substring(0, ids.length() - 1);
      List memberlist = this.weixinVipMemberService.findByQueryString("from WeixinVipMemberEntity m where m.vipInfo in (" + ids + ") and m.tsuer = '" + user.getId() + "'");

      if ((memberlist == null) || (memberlist.size() == 0)) {
        j.setMsg("vip_not_exist");
        WeixinVipMemberEntity memberobj = new WeixinVipMemberEntity();
        memberobj.setMemberBalance(new BigDecimal("0.00"));
        memberobj.setMemberIntegral(Integer.valueOf(0));
        memberobj.setTsuer(user);
        memberobj.setVipInfo((WeixinVipInfoEntity)list.get(0));
        memberobj.setCreateTime(new Date());
        memberobj.setMemberName(user.getUserName());

        this.weixinVipMemberService.save(memberobj);
        this.message = (user.getUserName() + "加入会员成功!");
        j.setMsg("add_ok");
        this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
      } else {
        j.setMsg("vip_exist");
        j.setObj(memberlist.get(0));
      }
    }
    return j;
  }

  @RequestMapping(params={"updatMember"})
  @ResponseBody
  public AjaxJson updatMember(HttpServletRequest request, HttpServletResponse response)
  {
    AjaxJson j = new AjaxJson();
    try {
      j.setSuccess(Boolean.FALSE.booleanValue());
      String name = request.getParameter("username");
      String email = request.getParameter("email");
      String phone = request.getParameter("phone");
      String userid = request.getParameter("userid");
      TSUser u = (TSUser)this.userService.getEntity(TSUser.class, userid);
      u.setRealName(name);
      u.setEmail(email);
      u.setMobilePhone(phone);
      this.userService.saveOrUpdate(u);
      List<WeixinVipMemberEntity> memberlist = this.weixinVipMemberService.findByProperty(WeixinVipMemberEntity.class, "tsuer.id", userid);
      if ((memberlist != null) && (memberlist.size() > 0)) {
        for (WeixinVipMemberEntity m : memberlist) {
          m.setMemberName(name);
          this.weixinVipMemberService.saveOrUpdate(m);
        }
      }
      j.setSuccess(Boolean.TRUE.booleanValue());
    } catch (Exception e) {
      j.setSuccess(Boolean.FALSE.booleanValue());
    }
    return j;
  }

  @RequestMapping(params={"updateMemberIntegral"})
  @ResponseBody
  public AjaxJson updateMemberIntegral(HttpServletRequest request, HttpServletResponse response)
  {
    AjaxJson j = new AjaxJson();
    try {
      j.setSuccess(Boolean.FALSE.booleanValue());

      String userid = request.getParameter("userid");
      ResourceUtil.initQianTaiRequestAccountId(request);
      String accountid = ResourceUtil.getQianTaiAccountId();
      Integer integral = Integer.valueOf(Integer.parseInt(request.getParameter("integral")));

      List<WeixinVipInfoEntity> list = this.weixinVipInfoService.findByQueryString("from WeixinVipInfoEntity vipinfo where vipinfo.accountid='" + accountid + "' order by vipinfo.levelId asc");

      String ids = "";
      for (WeixinVipInfoEntity v : list) {
        ids = ids + "'" + v.getId() + "',";
      }
      ids = ids.substring(0, ids.length() - 1);

      List memberlist = this.weixinVipMemberService.findByQueryString("from WeixinVipMemberEntity m where m.vipInfo in (" + ids + ") and m.tsuer = '" + userid + "'");

      if ((memberlist != null) && (memberlist.size() > 0)) {
        WeixinVipMemberEntity membervip = (WeixinVipMemberEntity)memberlist.get(0);

        if (integral.intValue() > 0) {
          membervip.setMemberIntegral(Integer.valueOf(membervip.getMemberIntegral().intValue() + integral.intValue()));
        }
        else if (membervip.getMemberIntegral().intValue() + integral.intValue() >= 0) {
          membervip.setMemberIntegral(Integer.valueOf(membervip.getMemberIntegral().intValue() + integral.intValue()));
        }

        this.weixinVipMemberService.saveOrUpdate(membervip);
      }
      j.setSuccess(Boolean.TRUE.booleanValue());
    } catch (Exception e) {
      j.setSuccess(Boolean.FALSE.booleanValue());
    }
    return j;
  }
}