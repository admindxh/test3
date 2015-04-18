package weixin.shop.base.controller;

import java.io.PrintStream;
import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
import weixin.shop.base.entity.WeixinShopMemberEntity;
import weixin.shop.base.service.WeixinShopMemberServiceI;

@Controller
@RequestMapping({"/weixinShopMemberController"})
public class WeixinShopMemberController extends BaseController
{
  private static final Logger logger = Logger.getLogger(WeixinShopMemberController.class);

  @Autowired
  private WeixinShopMemberServiceI weixinShopMemberService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message) {
    this.message = message;
  }

  @RequestMapping(params={"weixinShopMember"})
  public ModelAndView weixinShopMember(HttpServletRequest request)
  {
    return new ModelAndView("weixin/shop/shopmember/weixinShopMemberList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinShopMemberEntity weixinShopMember, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinShopMemberEntity.class, dataGrid);

    HqlGenerateUtil.installHql(cq, weixinShopMember, request.getParameterMap());
    this.weixinShopMemberService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(WeixinShopMemberEntity weixinShopMember, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinShopMember = (WeixinShopMemberEntity)this.systemService.getEntity(WeixinShopMemberEntity.class, weixinShopMember.getId());
    this.message = "商城会员删除成功";
    this.weixinShopMemberService.delete(weixinShopMember);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(WeixinShopMemberEntity weixinShopMember, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(weixinShopMember.getId())) {
      this.message = "商城会员更新成功";
      WeixinShopMemberEntity t = (WeixinShopMemberEntity)this.weixinShopMemberService.get(WeixinShopMemberEntity.class, weixinShopMember.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(weixinShopMember, t);
        this.weixinShopMemberService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "商城会员更新失败";
      }
    } else {
      this.message = "商城会员添加成功";
      weixinShopMember.setAddtime(new Date());
      this.weixinShopMemberService.save(weixinShopMember);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(WeixinShopMemberEntity weixinShopMember, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinShopMember.getId())) {
      weixinShopMember = (WeixinShopMemberEntity)this.weixinShopMemberService.getEntity(WeixinShopMemberEntity.class, weixinShopMember.getId());
      req.setAttribute("weixinShopMemberPage", weixinShopMember);
    }
    return new ModelAndView("weixin/shop/shopmember/weixinShopMember");
  }

  @RequestMapping(params={"goRegisterUser"})
  public ModelAndView goRegisterUser(HttpServletRequest req)
  {
    ResourceUtil.initQianTaiRequestAccountId(req);
    req.setAttribute("WEIXIN_OPENID", req.getParameter("openid"));
    return new ModelAndView("weixin/shop/shopmember/registerUser");
  }
  @RequestMapping(params={"checkuser"})
  @ResponseBody
  public AjaxJson checkShopUser(HttpServletRequest req) {
    AjaxJson j = new AjaxJson();
    String userName = req.getParameter("username");
    String password = req.getParameter("password");
    System.out.println("...username..." + userName + "...password...." + password);
    String sql = "select  id , username  from weixin_shop_member where password='" + password + "' and username='" + userName + "'";
    System.out.println(".....sql......" + sql);
    Map paramsMap = this.systemService.findOneForJdbc(sql, null);
    if (paramsMap != null) {
      String id = paramsMap.get("id").toString();
      String username = paramsMap.get("username").toString();
      HttpSession session = req.getSession();
      session.setAttribute("buyerId", id);
      session.setAttribute("username", username);
    } else {
      j.setSuccess(false);
    }
    return j;
  }

  @RequestMapping(params={"gologinpage"})
  public ModelAndView goLoginPage(HttpServletRequest req) {
    ResourceUtil.initQianTaiRequestAccountId(req);
    req.setAttribute("WEIXIN_OPENID", req.getParameter("openid"));
    return new ModelAndView("weixin/shop/shopmember/checkUser");
  }
}