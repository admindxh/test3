package weixin.promotion.controller;

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
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.promotion.entity.MemberCouponEntity;
import weixin.promotion.entity.PromotionCouponEntity;
import weixin.promotion.service.MemberCouponServiceI;
import weixin.vip.entity.WeixinVipMemberEntity;

@Scope("prototype")
@Controller
@RequestMapping({"/memberCouponController"})
public class MemberCouponController extends BaseController
{
  private static final Logger logger = Logger.getLogger(MemberCouponController.class);

  @Autowired
  private MemberCouponServiceI memberCouponService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"memberCoupon"})
  public ModelAndView memberCoupon(HttpServletRequest request)
  {
    return new ModelAndView("weixin/promotion/memberCouponList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(MemberCouponEntity memberCoupon, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(MemberCouponEntity.class, dataGrid);

    HqlGenerateUtil.installHql(cq, memberCoupon, request.getParameterMap());
    this.memberCouponService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(MemberCouponEntity memberCoupon, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    memberCoupon = (MemberCouponEntity)this.systemService.getEntity(MemberCouponEntity.class, memberCoupon.getId());
    this.message = "优惠劵和会员关系表删除成功";
    this.memberCouponService.delete(memberCoupon);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(MemberCouponEntity memberCoupon, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(memberCoupon.getId())) {
      this.message = "优惠劵和会员关系表更新成功";
      MemberCouponEntity t = (MemberCouponEntity)this.memberCouponService.get(MemberCouponEntity.class, memberCoupon.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(memberCoupon, t);
        this.memberCouponService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "优惠劵和会员关系表更新失败";
      }
    } else {
      this.message = "优惠劵和会员关系表添加成功";
      List mlist = this.memberCouponService.findByQueryString("from MemberCouponEntity m where m.coupon='" + memberCoupon.getCoupon().getId() + "' " + "and m.memberVip='" + memberCoupon.getMemberVip().getId() + "'");

      if ((mlist != null) && (mlist.size() > 0)) {
        MemberCouponEntity c = (MemberCouponEntity)mlist.get(0);
        c.setQuantity(Integer.valueOf(c.getQuantity().intValue() + memberCoupon.getQuantity().intValue()));
        this.memberCouponService.saveOrUpdate(c);
      } else {
        this.memberCouponService.save(memberCoupon);
      }
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(MemberCouponEntity memberCoupon, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(memberCoupon.getId())) {
      memberCoupon = (MemberCouponEntity)this.memberCouponService.getEntity(MemberCouponEntity.class, memberCoupon.getId());
      req.setAttribute("memberCouponPage", memberCoupon);
    }
    return new ModelAndView("weixin/promotion/memberCoupon");
  }

  @RequestMapping(params={"grantMemberByCoupon"})
  public ModelAndView grantMemberByCoupon(HttpServletRequest req)
  {
    return new ModelAndView("weixin/promotion/memberCoupon");
  }
}