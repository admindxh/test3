package weixin.shop.base.controller;

import java.io.PrintStream;
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
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.shop.base.entity.WeixinShopCartEntity;
import weixin.shop.base.entity.WeixinShopGoodsEntity;
import weixin.shop.base.service.WeixinShopCartServiceI;

@Controller
@RequestMapping({ "/weixinShopCartController" })
public class WeixinShopCartController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(WeixinShopCartController.class);

	@Autowired
	private WeixinShopCartServiceI weixinShopCartService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "weixinShopCart" })
	public ModelAndView weixinShopCart(HttpServletRequest request) {
		return new ModelAndView("weixin/shop/cart/weixinShopCartList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinShopCartEntity weixinShopCart,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinShopCartEntity.class,
				dataGrid);
		String accountid = ResourceUtil.getQianTaiAccountId();
		if (StringUtil.isNotEmpty(accountid)) {
			cq.eq("accountid", accountid);
		}

		HqlGenerateUtil.installHql(cq, weixinShopCart,
				request.getParameterMap());
		this.weixinShopCartService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "del" })
	@ResponseBody
	public AjaxJson del(WeixinShopCartEntity weixinShopCart,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinShopCart = (WeixinShopCartEntity) this.systemService.getEntity(
				WeixinShopCartEntity.class, weixinShopCart.getId());
		this.message = "购物车 删除成功";
		this.weixinShopCartService.delete(weixinShopCart);
		this.systemService.addLog(this.message, Globals.Log_Type_DEL,
				Globals.Log_Leavel_INFO);
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "save" })
	public ModelAndView save(WeixinShopCartEntity weixinShopCart,
			HttpServletRequest request) {
		int buyNum = Integer.valueOf(request.getParameter("buyNum")).intValue();
		String goodsId = request.getParameter("goodsId");

		TSUser buyer = ResourceUtil.getSessionUserName();
		String buyId = buyer.getId();

		String accountid = ResourceUtil.getQianTaiAccountId();
		WeixinAccountEntity weixinAccount = ResourceUtil.getShangJiaAccount();
		String sellerId = "";
		if (weixinAccount != null) {
			TSUser seller = (TSUser) this.systemService.findUniqueByProperty(
					TSUser.class, "userName", weixinAccount.getUserName());
			sellerId = seller.getId();
			weixinShopCart.setSeller(seller);
		}
		System.out.println("....buyNum....." + buyNum + ".....goodsId....."
				+ goodsId + "...buyId..." + buyId);
		WeixinShopGoodsEntity goodsEntity = (WeixinShopGoodsEntity) this.systemService
				.getEntity(WeixinShopGoodsEntity.class, goodsId);

		String hql = "from WeixinShopCartEntity where shopGoodsEntity.id='"
				+ goodsId + "' and buyer.id='" + buyId + "' and seller.id='"
				+ sellerId + "'";
		List shopCarList = this.weixinShopCartService.findByQueryString(hql);
		System.out.println("....size of shopCarList...." + shopCarList.size());
		if (shopCarList.size() > 0) {
			weixinShopCart = (WeixinShopCartEntity) shopCarList.get(0);
			int count = weixinShopCart.getCount().intValue() + buyNum;
			weixinShopCart.setCount(Integer.valueOf(count));
			double total = count * goodsEntity.getRealPrice().doubleValue();
			weixinShopCart.setTotal(Double.valueOf(total));
			this.weixinShopCartService.updateEntitie(weixinShopCart);
		} else {
			double realPrice = goodsEntity.getRealPrice().doubleValue();
			weixinShopCart.setBuyPrice(Double.valueOf(realPrice));
			weixinShopCart.setCount(Integer.valueOf(buyNum));
			weixinShopCart.setShopGoodsEntity(goodsEntity);
			weixinShopCart.setGoodsProperty("");
			weixinShopCart.setTotal(Double.valueOf(realPrice * buyNum));
			weixinShopCart.setBuyer(buyer);
			weixinShopCart.setAccountid(accountid);
			this.weixinShopCartService.save(weixinShopCart);
		}

		List<WeixinShopCartEntity> ShopCarList = this.systemService.findByProperty(
				WeixinShopCartEntity.class, "buser.id", buyId);
		double totalMoney = 0.0D;
		for (WeixinShopCartEntity weixinShopCartEntity : ShopCarList) {
			totalMoney += weixinShopCartEntity.getTotal().doubleValue();
		}

		System.out.println("...the size of list...." + ShopCarList.size());
		request.setAttribute("ShopCarList", ShopCarList);
		request.setAttribute("totalNum", Integer.valueOf(ShopCarList.size()));
		request.setAttribute("totalMoney", Double.valueOf(totalMoney));
		return new ModelAndView("weixin/shop/cart/weixinShopCart");
	}

	@RequestMapping(params = { "judgeUserLogined" })
	@ResponseBody
	public AjaxJson judgeUserLogined(HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		TSUser user = ResourceUtil.getSessionUserName();
		if (user == null) {
			j.setSuccess(false);
		}
		return j;
	}

	@RequestMapping(params = { "addGoodsToCart" })
	@ResponseBody
	public AjaxJson addGoodsToCart(WeixinShopCartEntity weixinShopCart,
			HttpServletRequest request, HttpServletResponse response) {
		AjaxJson j = new AjaxJson();
		int buyNum = Integer.valueOf(request.getParameter("buyNum")).intValue();
		String goodsId = request.getParameter("goodsId");

		TSUser buyer = ResourceUtil.getSessionUserName();
		String buyId = buyer.getId();

		String accountid = ResourceUtil.getQianTaiAccountId();
		WeixinAccountEntity weixinAccount = ResourceUtil.getShangJiaAccount();
		String sellerId = "";
		if (weixinAccount != null) {
			TSUser seller = (TSUser) this.systemService.findUniqueByProperty(
					TSUser.class, "userName", weixinAccount.getUserName());
			sellerId = seller.getId();
			weixinShopCart.setSeller(seller);
		}
		System.out.println("....buyNum....." + buyNum + ".....goodsId....."
				+ goodsId + "...buyId..." + buyId);
		WeixinShopGoodsEntity goodsEntity = (WeixinShopGoodsEntity) this.systemService
				.getEntity(WeixinShopGoodsEntity.class, goodsId);

		String hql = "from WeixinShopCartEntity where shopGoodsEntity.id='"
				+ goodsId + "' and buyer.id='" + buyId + "' and seller.id='"
				+ sellerId + "'";
		List shopCarList = this.weixinShopCartService.findByQueryString(hql);
		System.out.println("....size of shopCarList...." + shopCarList.size());
		if (shopCarList.size() > 0) {
			weixinShopCart = (WeixinShopCartEntity) shopCarList.get(0);
			int count = weixinShopCart.getCount().intValue() + buyNum;
			weixinShopCart.setCount(Integer.valueOf(count));
			double total = count * goodsEntity.getRealPrice().doubleValue();
			weixinShopCart.setTotal(Double.valueOf(total));
			this.weixinShopCartService.updateEntitie(weixinShopCart);
		} else {
			double realPrice = goodsEntity.getRealPrice().doubleValue();
			weixinShopCart.setBuyPrice(Double.valueOf(realPrice));
			weixinShopCart.setCount(Integer.valueOf(buyNum));
			weixinShopCart.setShopGoodsEntity(goodsEntity);
			weixinShopCart.setGoodsProperty("");
			weixinShopCart.setTotal(Double.valueOf(realPrice * buyNum));
			weixinShopCart.setBuyer(buyer);
			weixinShopCart.setAccountid(accountid);
			this.weixinShopCartService.save(weixinShopCart);
		}
		return j;
	}

	@RequestMapping(params = { "goCart" })
	public ModelAndView goCart(WeixinShopCartEntity weixinShopCart,
			HttpServletRequest req) {
		String accountid = ResourceUtil.getQianTaiAccountId();
		WeixinAccountEntity weixinAccount = ResourceUtil.getShangJiaAccount();
		if (weixinAccount != null) {
			TSUser seller = (TSUser) this.systemService.findUniqueByProperty(
					TSUser.class, "userName", weixinAccount.getUserName());
			String sellerId = seller.getId();
			String hql = "from WeixinShopCartEntity where buyer.id='"
					+ ResourceUtil.getSessionUserName().getId()
					+ "' and seller.id='" + sellerId + "'";
			System.out.println("...the hql of cart is....." + hql);
			List<WeixinShopCartEntity> ShopCarList = this.systemService.findByQueryString(hql);
			System.out.println("...the size of cart is....."
					+ ShopCarList.size());
			double totalMoney = 0.0D;
			int totalNum = 0;
			for (WeixinShopCartEntity weixinShopCartEntity : ShopCarList) {
				totalNum += weixinShopCartEntity.getCount().intValue();
				totalMoney += weixinShopCartEntity.getTotal().doubleValue();
			}
			req.setAttribute("ShopCarList", ShopCarList);
			req.setAttribute("totalNum", Integer.valueOf(totalNum));
			req.setAttribute("totalMoney", Double.valueOf(totalMoney));
			req.setAttribute("accountid", req.getParameter("accountid"));

			hql = "from WeixinShopCategoryEntity where accountid='"
					+ weixinAccount.getId() + "'";
			List categoryList = this.systemService.findByQueryString(hql);
			req.setAttribute("categoryList", categoryList);
		}

		return new ModelAndView("weixin/shop/cart/weixinShopCart");
	}
}