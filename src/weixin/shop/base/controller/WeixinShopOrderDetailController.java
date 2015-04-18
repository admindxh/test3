package weixin.shop.base.controller;

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
import weixin.shop.base.entity.WeixinShopOrderDetailEntity;
import weixin.shop.base.service.WeixinShopOrderDetailServiceI;

@Scope("prototype")
@Controller
@RequestMapping({"/weixinShopOrderDetailController"})
public class WeixinShopOrderDetailController extends BaseController
{
  private static final Logger logger = Logger.getLogger(WeixinShopOrderDetailController.class);

  @Autowired
  private WeixinShopOrderDetailServiceI weixinShopOrderDetailService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinShopOrderDetail"})
  public ModelAndView weixinShopOrderDetail(HttpServletRequest request)
  {
    return new ModelAndView("weixin/shop/orderdetail/weixinShopOrderDetailList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinShopOrderDetailEntity weixinShopOrderDetail, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinShopOrderDetailEntity.class, dataGrid);

    HqlGenerateUtil.installHql(cq, weixinShopOrderDetail, request.getParameterMap());
    this.weixinShopOrderDetailService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(WeixinShopOrderDetailEntity weixinShopOrderDetail, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinShopOrderDetail = (WeixinShopOrderDetailEntity)this.systemService.getEntity(WeixinShopOrderDetailEntity.class, weixinShopOrderDetail.getId());
    this.message = "订单详情删除成功";
    this.weixinShopOrderDetailService.delete(weixinShopOrderDetail);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(WeixinShopOrderDetailEntity weixinShopOrderDetail, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(weixinShopOrderDetail.getId())) {
      this.message = "订单详情更新成功";
      WeixinShopOrderDetailEntity t = (WeixinShopOrderDetailEntity)this.weixinShopOrderDetailService.get(WeixinShopOrderDetailEntity.class, weixinShopOrderDetail.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(weixinShopOrderDetail, t);
        this.weixinShopOrderDetailService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "订单详情更新失败";
      }
    } else {
      this.message = "订单详情添加成功";
      this.weixinShopOrderDetailService.save(weixinShopOrderDetail);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(WeixinShopOrderDetailEntity weixinShopOrderDetail, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinShopOrderDetail.getId())) {
      weixinShopOrderDetail = (WeixinShopOrderDetailEntity)this.weixinShopOrderDetailService.getEntity(WeixinShopOrderDetailEntity.class, weixinShopOrderDetail.getId());
      req.setAttribute("weixinShopOrderDetailPage", weixinShopOrderDetail);
    }
    return new ModelAndView("weixin/shop/orderdetail/weixinShopOrderDetail");
  }
}