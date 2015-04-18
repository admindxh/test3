package weixin.promotion.controller;

import java.util.Date;
import java.util.UUID;
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
import weixin.promotion.entity.PromotionCouponEntity;
import weixin.promotion.service.PromotionCouponServiceI;

@Scope("prototype")
@Controller
@RequestMapping({"/promotionCouponController"})
public class PromotionCouponController extends BaseController
{
  private static final Logger logger = Logger.getLogger(PromotionCouponController.class);

  @Autowired
  private PromotionCouponServiceI promotionCouponService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"promotionCoupon"})
  public ModelAndView promotionCoupon(HttpServletRequest request)
  {
    return new ModelAndView("weixin/promotion/promotionCouponList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(PromotionCouponEntity promotionCoupon, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(PromotionCouponEntity.class, dataGrid);

    HqlGenerateUtil.installHql(cq, promotionCoupon, request.getParameterMap());
    this.promotionCouponService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(PromotionCouponEntity promotionCoupon, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    promotionCoupon = (PromotionCouponEntity)this.systemService.getEntity(PromotionCouponEntity.class, promotionCoupon.getId());
    this.message = "促销模块--优惠劵删除成功";
    this.promotionCouponService.delete(promotionCoupon);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(PromotionCouponEntity promotionCoupon, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(promotionCoupon.getId())) {
      this.message = "促销模块--优惠劵更新成功";
      PromotionCouponEntity t = (PromotionCouponEntity)this.promotionCouponService.get(PromotionCouponEntity.class, promotionCoupon.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(promotionCoupon, t);
        this.promotionCouponService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "促销模块--优惠劵更新失败";
      }
    } else {
      this.message = "促销模块--优惠劵添加成功";
      promotionCoupon.setCreateTime(new Date());

      promotionCoupon.setType("0");
      promotionCoupon.setStatus("0");
      this.promotionCouponService.save(promotionCoupon);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(PromotionCouponEntity promotionCoupon, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(promotionCoupon.getId())) {
      promotionCoupon = (PromotionCouponEntity)this.promotionCouponService.getEntity(PromotionCouponEntity.class, promotionCoupon.getId());
      req.setAttribute("promotionCouponPage", promotionCoupon);
    }
    else {
      String s = UUID.randomUUID().toString();
      String ss = "";
      String s1 = s.substring(0, 8);
      String s2 = s.substring(9, 13);
      String s3 = s.substring(14, 18);
      String s4 = s.substring(19, 23);
      String s5 = s.substring(24);
      ss = ss + s1.substring(0, 1);
      ss = ss + s2.substring(1, 2);
      ss = ss + s3.substring(2, 3);
      ss = ss + s4.substring(3, 4);
      ss = ss + s5.substring(4, 5);
      req.setAttribute("code", ss);
    }
    return new ModelAndView("weixin/promotion/promotionCoupon");
  }
}