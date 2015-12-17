package weixin.shop.base.controller;

import java.io.IOException;
import java.io.PrintStream;
import java.nio.charset.Charset;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.net.ssl.SSLContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.Header;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.methods.RequestBuilder;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLContexts;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.message.BasicHeader;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.LogUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;













import weixin.alipay.config.AlipayConfig;
import weixin.alipay.util.AlipayCore;
import weixin.alipay.util.AlipayNotify;
import weixin.alipay.vo.PayParamsVo;
import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.gzuserinfo.entity.GzUserInfoYw;
import weixin.guanjia.pay.entity.PayConfigEntity;
import weixin.shop.base.entity.WeixinShopAddressEntity;
import weixin.shop.base.entity.WeixinShopCartEntity;
import weixin.shop.base.entity.WeixinShopDealEntity;
import weixin.shop.base.entity.WeixinShopGoodsEntity;
import weixin.shop.base.entity.WeixinShopOrderDetailEntity;
import weixin.shop.base.service.WeixinShopAddressServiceI;
import weixin.shop.base.service.WeixinShopCategoryServiceI;
import weixin.shop.base.service.WeixinShopDealServiceI;
import weixin.shop.base.service.WeixinShopGoodsServiceI;
import weixin.shop.util.Md5Encrypt;

@Scope("prototype")
@Controller
@RequestMapping({ "/weixinShopDealController" })
public class WeixinShopDealController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(WeixinShopDealController.class);

	@Autowired
	private WeixinShopDealServiceI weixinShopDealService;

	@Autowired
	private SystemService systemService;

	@Autowired
	private WeixinShopAddressServiceI weixinShopAddressService;

	@Autowired
	private WeixinShopCategoryServiceI weixinShopCategoryService;

	@Autowired
	private WeixinShopGoodsServiceI weixinShopGoodsService;
	private String message;
	protected static Header xmlHeader = new BasicHeader(HttpHeaders.CONTENT_TYPE, ContentType.APPLICATION_XML.toString());

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "goAddressPage" })
	public ModelAndView goAddressPage(HttpServletRequest request,
			HttpServletResponse response) {
		List addresslist = this.weixinShopAddressService.findByProperty(
				WeixinShopAddressEntity.class, "userid", ResourceUtil
						.getSessionUserName().getId());
		request.setAttribute("addresslist", addresslist);

		String goodsparams = request.getParameter("goodsparams");
		request.setAttribute("goodsparams", request.getParameter("goodsparams"));
		return new ModelAndView("weixin/shop/myorder/address");
	}

	@RequestMapping(params = { "goPayPage" })
	public ModelAndView goPayPage(HttpServletRequest request,
			HttpServletResponse response, WeixinShopDealEntity weixinShopOrder) {
		String id = request.getParameter("id");

		if (StringUtil.isEmpty(id)) {
			String leaveword = request.getParameter("leaveword");

			String payType = request.getParameter("paytype");

			String addressId = request.getParameter("addressid");

			String totalNum = request.getParameter("totalNum");
			if (StringUtil.isEmpty(totalNum)) {
				totalNum = "0";
			}

			String totalGoodsMoney = request.getParameter("totalGoodsMoney");
			if (StringUtil.isEmpty(totalGoodsMoney)) {
				totalGoodsMoney = "0";
			}

			String totalExpressPrice = request
					.getParameter("totalExpressPrice");
			if (StringUtil.isEmpty(totalExpressPrice)) {
				totalExpressPrice = "0";
			}

			String totalMoney = request.getParameter("totalMoney");
			if (StringUtil.isEmpty(totalMoney)) {
				totalMoney = "0";
			}

			String reducePrice = request.getParameter("reducePrice");
			if (StringUtil.isEmpty(reducePrice)) {
				reducePrice = "0";
			}
			System.out.println("...totalNum...." + totalNum
					+ "...totalGoodsMoney..." + totalGoodsMoney
					+ "...totalExpressPrice..." + totalExpressPrice
					+ "...totalMoney..." + totalMoney + "...reducePrice..."
					+ reducePrice);

			String accountId = ResourceUtil.getShangJiaAccountId();

			WeixinShopAddressEntity weixinShopAddressEntity = (WeixinShopAddressEntity) this.systemService
					.getEntity(WeixinShopAddressEntity.class, addressId);

			GzUserInfoYw user = ResourceUtil.getGzWeixinSessionUserName();
			weixinShopOrder.setBuyerId(user.getId());
			weixinShopOrder.setSellerId(accountId);
			weixinShopOrder.setBuyerLeaveWords(leaveword);
			weixinShopOrder.setCreateDate(new Date());
			weixinShopOrder.setCreateName(user.getBzName());
			weixinShopOrder.setDealNumber(new Date().getTime() + "");
			weixinShopOrder.setDealStatement("未支付");

			weixinShopOrder.setBuycount(Integer.valueOf(Integer
					.parseInt(totalNum)));
			weixinShopOrder.setExpresstotal(Double
					.parseDouble(totalExpressPrice));

			if ("1".equals(payType)) {
				
				//weixinShopOrder.setPaytype("银联支付");
				
			}

			double yfje = Double.parseDouble(totalMoney);
			weixinShopOrder.setYfmny(Double.valueOf(yfje));

			double yh = Double.parseDouble(reducePrice);
			weixinShopOrder.setReducePrice(Double.valueOf(yh));

			double sjje = yfje - yh;
			weixinShopOrder.setSfmny(Double.valueOf(sjje));

			if (weixinShopAddressEntity != null) {
				weixinShopOrder.setAddressDetail(weixinShopAddressEntity
						.getAlladdress());
				weixinShopOrder.setReceivename(weixinShopAddressEntity
						.getRealname());
				weixinShopOrder.setReceiveaddress(weixinShopAddressEntity
						.getAddress());
				weixinShopOrder.setReceivemobile(weixinShopAddressEntity
						.getTel());
				weixinShopOrder.setReceivepostno(weixinShopAddressEntity
						.getPostno());
			}

			this.systemService.save(weixinShopOrder);

			String accountid = ResourceUtil.getQianTaiAccountId();
			WeixinAccountEntity weixinAccount = ResourceUtil
					.getShangJiaAccount();
			if (weixinAccount != null) {
				String buyerId = ResourceUtil.getGzWeixinSessionUserName().getId();
				TSUser seller = (TSUser) this.systemService
						.findUniqueByProperty(TSUser.class, "userName",
								weixinAccount.getUserName());
				String sellerId = seller.getId();
				String hql = "from WeixinShopCartEntity where buyer.id='"
						+ buyerId + "' and seller.id='" + sellerId + "'";
				System.out.println("...the hql of cart is....." + hql);
				List<WeixinShopCartEntity> ShopCarList = this.systemService.findByQueryString(hql);
				System.out.println("...the size of cart is....."
						+ ShopCarList.size());
				for (WeixinShopCartEntity weixinShopCart : ShopCarList) {
					WeixinShopOrderDetailEntity orderDetail = new WeixinShopOrderDetailEntity();
					orderDetail.setAccountid(accountid);
					orderDetail.setBuyerId(buyerId);
					WeixinShopGoodsEntity shopGoods = weixinShopCart
							.getShopGoodsEntity();
					orderDetail.setBuyPrice(shopGoods.getRealPrice());
					orderDetail.setCount(weixinShopCart.getCount());
					orderDetail.setWeixinShopGoods(shopGoods);
					orderDetail.setGoodsProperty("");
					orderDetail.setReducePrice("0");
					orderDetail.setSellerId(sellerId);
					double total = shopGoods.getRealPrice().doubleValue()
							* weixinShopCart.getCount().intValue()
							- Double.parseDouble(orderDetail.getReducePrice());
					orderDetail.setTotal(Double.valueOf(total));
					orderDetail.setWeixnShopOrder(weixinShopOrder);
					this.systemService.save(orderDetail);
				}

				this.systemService.deleteAllEntitie(ShopCarList);
			}
		} else {
			weixinShopOrder = (WeixinShopDealEntity) this.weixinShopDealService
					.getEntity(WeixinShopDealEntity.class, id);
		}

		if ("1".equals(weixinShopOrder.getPaytype())) {
			WeixinAccountEntity weixinAccountEntity = ResourceUtil
					.getShangJiaAccount();
			if (weixinAccountEntity != null)
				;
			String subject = "购买商品";
			String price = weixinShopOrder.getYfmny() + "";
			String logistics_fee = weixinShopOrder.getExpresstotal() + "";
			String logistics_type = "EXPRESS";
			String logistics_payment = "SELLER_PAY";
			String body = "购买商品";
			String show_url = "";
			String receive_name = weixinShopOrder.getReceivename();
			String receive_address = weixinShopOrder.getAddressDetail();
			String receive_zip = weixinShopOrder.getReceivepostno();
			String receive_phone = weixinShopOrder.getReceivephone();
			String receive_mobile = weixinShopOrder.getTel();
			List payconfig = this.systemService
					.findByQueryString("from PayConfigEntity pay where pay.accountid='"
							+ weixinAccountEntity.getId() + "'");
			PayConfigEntity pay = new PayConfigEntity();
			if ((payconfig != null) && (payconfig.size() > 0)) {
				pay = (PayConfigEntity) payconfig.get(0);
			}
			PayParamsVo params = new PayParamsVo(pay.getSellerEmail(), UUID
					.randomUUID().toString(), subject, price, logistics_fee,
					logistics_type, logistics_payment, body, show_url,
					receive_name, receive_address, receive_zip, receive_phone,
					receive_mobile, 1);
			alipaydirectRequest(request, response, weixinShopOrder, params, pay);
		} 
		//微信支付
		else if("2".equals(weixinShopOrder.getPaytype())){
			
			UnifiedorderXML unifiedorder = new UnifiedorderXML();
			String ip = request.getLocalAddr();
			unifiedorder.setAttach("订单：" + weixinShopOrder.getDealNumber());
			unifiedorder.setBody("商品购买---"+weixinShopOrder.getDealNumber());
	     	unifiedorder.setOpenid(ResourceUtil.getUserOpenId());
			unifiedorder.setOut_trade_no(weixinShopOrder.getDealNumber());
			unifiedorder.setSpbill_create_ip(ip);
			unifiedorder.setTotal_fee(weixinShopOrder.getSfmny() * 100 + "");
			System.out.println(weixinShopOrder.getDealNumber());
			String prepay_id = GetPrepay(unifiedorder);
			System.out.println("prepay_id======"+prepay_id);
			unifiedorder.setPrepay_id(prepay_id);
			request.setAttribute("unifiedorder", unifiedorder);
			weixinShopOrder.setBuyerId(prepay_id);
			request.setAttribute("weixinShopOrder", weixinShopOrder);
			 return new ModelAndView("weixin/shop/myorder/weixneworderconfirm");
			
		}
		
		else {
			String responseText = "<a href=\"weixinShopDealController.do?gomyorder&shopSymbol=shop\">恭喜您，已经下单成功！点击这里查看订单！</a>";
			request.setAttribute("responseText", responseText);
		}

		return new ModelAndView("weixin/shop/pay/pay");
	}
	public static void main(String[] args) {
		System.err.println(11);
	  
	}
	
	public static String GetPrepay(UnifiedorderXML unifiedorder) {
		String xml = unifiedorder.getXml();
		System.out.println("xml--------"+xml);
		String prepay_id = null;

		HttpUriRequest httpUriRequest = RequestBuilder.post().setHeader(xmlHeader).setUri("https://api.mch.weixin.qq.com/pay/unifiedorder")
				.setEntity(new StringEntity(xml, Charset.forName("utf-8"))).build();
		HttpClient httpClient = createHttpClient(100, 10);
		try {
			HttpResponse r = httpClient.execute(httpUriRequest);
			String xmlrResult = EntityUtils.toString(r.getEntity(), "UTF-8");
			System.out.println("xmlrResult=="+xmlrResult);
		 
			unifiedorder.setXmlResult(xmlrResult);
			String[] xmlrResults = xmlrResult.split("<prepay_id>");
			if (xmlrResults.length > 1) {
				xmlrResult = xmlrResults[1];
				xmlrResults = xmlrResult.split("</prepay_id>");
				if (xmlrResults.length > 1) {
					xmlrResult = xmlrResults[0];
					prepay_id = xmlrResult.replace("<![CDATA[", "").replaceAll("]]>", "");
				}
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return prepay_id;
	}
	public static HttpClient createHttpClient(int maxTotal, int maxPerRoute) {
		try {
			SSLContext sslContext = SSLContexts.custom().useSSL().build();
			SSLConnectionSocketFactory sf = new SSLConnectionSocketFactory(sslContext, SSLConnectionSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
			PoolingHttpClientConnectionManager poolingHttpClientConnectionManager = new PoolingHttpClientConnectionManager();
			poolingHttpClientConnectionManager.setMaxTotal(maxTotal);
			poolingHttpClientConnectionManager.setDefaultMaxPerRoute(maxPerRoute);
			return HttpClientBuilder.create().setConnectionManager(poolingHttpClientConnectionManager).setSSLSocketFactory(sf).build();
		} catch (KeyManagementException e) {
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}
	@RequestMapping(params = { "goList" })
	public ModelAndView goList(HttpServletRequest request) {
		return new ModelAndView("weixin/shop/myorder/dealsList");
	}

	@RequestMapping(params = { "goConformOrder" })
	public ModelAndView goConformOrder(HttpServletRequest request) {
		WeixinAccountEntity weixinAccount = ResourceUtil.getShangJiaAccount();
		if (weixinAccount != null) {
			TSUser seller = (TSUser) this.systemService.findUniqueByProperty(
					TSUser.class, "userName", weixinAccount.getUserName());
			String sellerId = seller.getId();
			String hql = "from WeixinShopCartEntity where buyer.id='"
					+ ResourceUtil.getGzWeixinSessionUserName().getId()
					+ "' and seller.id='" + sellerId + "'";
			System.out.println("...the hql of cart is....." + hql);
			List<WeixinShopCartEntity> ShopCarList = this.systemService.findByQueryString(hql);
			System.out.println("...the size of cart is....."
					+ ShopCarList.size());
			double totalGoodsMoney = 0.0D;
			double totalExpressPrice = 0.0D;
			int totalNum = 0;
			for (WeixinShopCartEntity weixinShopCartEntity : ShopCarList) {
				totalNum += weixinShopCartEntity.getCount().intValue();
				totalGoodsMoney += weixinShopCartEntity.getTotal()
						.doubleValue();
				totalExpressPrice += weixinShopCartEntity.getCount().intValue()
						* weixinShopCartEntity.getShopGoodsEntity()
								.getExpressPrice().doubleValue();
			}
			double totalMoney = totalGoodsMoney + totalExpressPrice;
			request.setAttribute("ShopCarList", ShopCarList);
			request.setAttribute("totalNum", Integer.valueOf(totalNum));
			request.setAttribute("totalGoodsMoney",
					Double.valueOf(totalGoodsMoney));
			request.setAttribute("totalExpressPrice",
					Double.valueOf(totalExpressPrice));
			request.setAttribute("totalMoney", Double.valueOf(totalMoney));
			request.setAttribute("accountId", weixinAccount.getId());
			request.setAttribute("selectaddrid",
					request.getParameter("selectaddrid"));

			List addresslist = this.weixinShopAddressService.findByProperty(
					WeixinShopAddressEntity.class, "openid", ResourceUtil
							.getGzWeixinSessionUserName().getOpenid());
			request.setAttribute("addresslist", addresslist);

			hql = "from WeixinShopCategoryEntity where accountid='"
					+ weixinAccount.getId() + "'";
			List categoryList = this.systemService.findByQueryString(hql);
			request.setAttribute("categoryList", categoryList);
		}

		return new ModelAndView("weixin/shop/myorder/neworderconfirm");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinShopDealEntity weixinShopDeal,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinShopDealEntity.class,
				dataGrid);

		String weixinAccountId = ResourceUtil.getShangJiaAccountId();
		if (StringUtil.isNotEmpty(weixinAccountId)) {
			cq.eq("sellerId", weixinAccountId);
		}

		HqlGenerateUtil.installHql(cq, weixinShopDeal,
				request.getParameterMap());

		cq.add();
		this.weixinShopDealService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WeixinShopDealEntity weixinShopDeal,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinShopDeal = (WeixinShopDealEntity) this.systemService.getEntity(
				WeixinShopDealEntity.class, weixinShopDeal.getId());
		this.message = "微商城订单删除成功";
		try {
			this.weixinShopDealService.delete(weixinShopDeal);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微商城订单删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WeixinShopDealEntity weixinShopDeal,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微商城订单添加成功";
		try {
			this.weixinShopDealService.save(weixinShopDeal);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微商城订单添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WeixinShopDealEntity weixinShopDeal,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微商城订单更新成功";
		WeixinShopDealEntity t = (WeixinShopDealEntity) this.weixinShopDealService
				.get(WeixinShopDealEntity.class, weixinShopDeal.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinShopDeal, t);
			this.weixinShopDealService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微商城订单更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WeixinShopDealEntity weixinShopDeal,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinShopDeal.getId())) {
			weixinShopDeal = (WeixinShopDealEntity) this.weixinShopDealService
					.getEntity(WeixinShopDealEntity.class,
							weixinShopDeal.getId());
			req.setAttribute("weixinShopDealPage", weixinShopDeal);
		}
		return new ModelAndView("weixin/shop/myorder/weixinShopDeal-update");
	}

	@RequestMapping(params = { "upload" })
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("com/buss/shop/weixinShopDealUpload");
	}

	@RequestMapping(params = { "gomyorder" })
	public ModelAndView goMyOrder(HttpServletRequest request) {
		GzUserInfoYw tsUser = ResourceUtil.getGzWeixinSessionUserName();
		String hql = "from WeixinShopDealEntity where buyerId='"
				+ tsUser.getId() + "'";
		List orderList = this.weixinShopDealService.findByQueryString(hql);

		Map categoryParams = new HashMap();

		Map params = paramsToMap(request);
		if (params.containsKey("accountid")) {
			categoryParams.put("accountid", params.get("accountid"));
		}
		List weixinShopCategoryList = this.weixinShopCategoryService
				.list(categoryParams);

		request.setAttribute("orderList", orderList);
		System.out.println("....the size of orderList....." + orderList.size());
		request.setAttribute("categoryList", weixinShopCategoryList);
		return new ModelAndView("weixin/shop/myorder/myOrderList");
	}

	private Map<String, String> paramsToMap(HttpServletRequest request) {
		Map params = new HashMap();

		Enumeration em = request.getParameterNames();
		while (em.hasMoreElements()) {
			String paramName = (String) em.nextElement();
			String paramValue = request.getParameter(paramName);

			params.put(paramName, paramValue);
		}
		return params;
	}
	@RequestMapping(params = {"paystatus"})
	public void paystatus(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, String> params = new HashMap<String, String>();
//		HttpServletRequest request = ServletActionContext.getRequest();
		Map requestParams = request.getParameterMap();
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
			}
			// valueStr = new String(valueStr.getBytes("ISO-8859-1"), "gbk");
			params.put(name, valueStr);
		}
		System.out.println("---------------------------------------------------------------------------");
		System.out.println("Out_trade_no-----"+StringUtils.isNotBlank(params.get("Out_trade_no")));
		System.out.println("Trade_no-----"+StringUtils.isNotBlank(params.get("Trade_no")));
		System.out.println("Trade_status-----"+params.get("Trade_status"));
		System.out.println("params-----------" + AlipayNotify.verify(params));
		System.out.println("---------------------------------------------------------------------------");
		if (StringUtils.isNotBlank(params.get("Out_trade_no")) && StringUtils.isNotBlank(params.get("Trade_no")) && StringUtils.isNotBlank(params.get("Trade_status"))) {
			if (AlipayNotify.verify(params)) {
				if (params.get("Trade_status").equals("TRADE_FINISHED")) {
					
					WeixinShopDealEntity weixinShopDealEntity = weixinShopDealService.findUniqueByProperty(WeixinShopDealEntity.class, "dealNumber", params.get("Out_trade_no"));
					weixinShopDealEntity.setDealStatement("已支付");
				    weixinShopDealService.updateEntitie(weixinShopDealEntity);
				} else if (params.get("Trade_status").equals("TRADE_SUCCESS")) {
					WeixinShopDealEntity weixinShopDealEntity = weixinShopDealService.findUniqueByProperty(WeixinShopDealEntity.class, "dealNumber", params.get("Out_trade_no"));
					weixinShopDealEntity.setDealStatement("已支付");
				weixinShopDealService.updateEntitie(weixinShopDealEntity);
				}
			}
		}
		//return new ModelAndView("weixin/shop/myorder/success");
	}
	
	@RequestMapping(params ={"weixinsuccess"})
	public ModelAndView weixinsuccess(HttpServletRequest request,
			HttpServletResponse response) {
		String id = request.getParameter("id");
		
		
		if(StringUtils.isNotEmpty(id)){
		String type=request.getParameter("type");
			if (type.equals("s")) {
				WeixinShopDealEntity weixinShopDealEntity = weixinShopDealService.get(WeixinShopDealEntity.class, id);
				weixinShopDealEntity.setDealStatement("支付成功");
				weixinShopDealService.updateEntitie(weixinShopDealEntity);
				return new ModelAndView("weixin/shop/myorder/success");
			}else{
				return new ModelAndView("weixin/shop/myorder/flase");	
			}
		}
		return new ModelAndView("weixin/shop/myorder/success");
	}
	
	
	
	
	

	public void alipaydirectRequest(HttpServletRequest request,
			HttpServletResponse response, WeixinShopDealEntity order,
			PayParamsVo payDo, PayConfigEntity pay) {
		this.systemService
				.addLog("*********************支付宝即时到账交易请求 begin***********************",
						Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);

		if ((order == null) || (payDo == null)) {
			this.systemService
					.addLog("*** error: Class PayExtAction; Method alipaydirectRequest(); order or payDo is null ***",
							Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}

		String key = pay.getPaykey();
		if ((key == null) || (key.equals(""))) {
			this.systemService
					.addLog("*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***",
							Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}

		String partner = pay.getPartner();
		if ((partner == null) || (partner.equals(""))) {
			this.systemService
					.addLog("*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***",
							Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}

		String seller_id = partner;

		String input_charset = AlipayConfig.input_charset;

		String sign_type = AlipayConfig.sign_type;

		String show_url = "";

		String notify_url = "http://localhost/"+request.getContextPath()+"/weixinShopDealController/paystatus";

		String return_url ="http://localhost/"+request.getContextPath()+"/weixinShopDealController/success";

		String out_trade_no = order.getDealNumber();

		String subject = payDo.subject;

		String total_fee = payDo.price;

		String body = "";

		Map sPara = new HashMap();
		sPara.put("service", "create_direct_pay_by_user");
		sPara.put("payment_type", "1");
		sPara.put("partner", partner);
		sPara.put("return_url", return_url);
		sPara.put("notify_url", notify_url);
		sPara.put("_input_charset", input_charset);
		sPara.put("show_url", show_url);
		sPara.put("out_trade_no", out_trade_no);
		sPara.put("subject", subject);
		sPara.put("body", body);
		sPara.put("total_fee", total_fee);

		sPara.put("seller_id", seller_id);
		sPara.put("agentid", "isv^sh35");

		String defaultbank = "";

		LogUtil.info("【service--接口名称】:create_direct_pay_by_user");
		LogUtil.info("【payment_type--支付类型】:1");
		LogUtil.info("【partner--合作身份者ID】:" + partner);
		LogUtil.info("【return_url--页面跳转同步通知页面路径】:" + return_url);
		LogUtil.info("【notify_url--服务器异步通知页面路径】:" + notify_url);
		LogUtil.info("【_input_charset--字符编码格式】:" + input_charset);
		LogUtil.info("【show_url--商品展示URL】:" + show_url);
		LogUtil.info("【out_trade_no--订单编号】:" + out_trade_no);
		LogUtil.info("【subject--商品名称】:" + subject);
		LogUtil.info("【body--商品描述】:" + body);
		LogUtil.info("【total_fee--交易金额】:" + total_fee);
		LogUtil.info("【seller_id--卖家支付宝账号】:" + seller_id);

		Map sParaNew = ParaFilter(sPara);
		String mysign = BuildMysign(sParaNew, key);

		StringBuffer sbHtml = new StringBuffer();
		List keys = new ArrayList(sParaNew.keySet());
		String gateway = "https://mapi.alipay.com/gateway.do?";

		sbHtml.append("<form id=\"alipaysubmit\" name=\"alipaysubmit\" action=\""
				+ gateway
				+ "_input_charset="
				+ input_charset
				+ "\" method=\"post\">");

		for (int i = 0; i < keys.size(); i++) {
			String name = (String) keys.get(i);
			String value = (String) sParaNew.get(name);

			sbHtml.append("<input type=\"hidden\" name=\"" + name
					+ "\" value=\"" + value + "\"/>");
		}

		sbHtml.append("<input type=\"hidden\" name=\"sign\" value=\"" + mysign
				+ "\"/>");

		sbHtml.append("<input type=\"hidden\" name=\"sign_type\" value=\""
				+ sign_type + "\"/>");

		sbHtml.append("</form>");

		sbHtml.append("<script>document.forms['alipaysubmit'].submit();</script>");

		LogUtil.info("*********************支付宝即时到账交易请求 end***********************");
		request.setAttribute("responseText", sbHtml.toString());
	}

	public static Map ParaFilter(Map sArray) {
		List keys = new ArrayList(sArray.keySet());
		Map sArrayNew = new HashMap();

		for (int i = 0; i < keys.size(); i++) {
			String key = (String) keys.get(i);
			String value = (String) sArray.get(key);

			if ((value != null)&& (!value.equals("")) 
					&& (!key.equalsIgnoreCase("sign"))
					&& (!key.equalsIgnoreCase("sign_type"))
					&& (!key.equalsIgnoreCase("method"))) {
				sArrayNew.put(key, value);
			}
		}
		return sArrayNew;
	}

	public static String BuildMysign(Map sArray, String key) {
		String prestr = CreateLinkString(sArray);
		prestr = prestr + key;
		String mysign = Md5Encrypt.md5(prestr);
		return mysign;
	}

	public static String CreateLinkString(Map params) {
		List keys = new ArrayList(params.keySet());
		Collections.sort(keys);

		String prestr = "";

		for (int i = 0; i < keys.size(); i++) {
			String key = (String) keys.get(i);
			String value = (String) params.get(key);

			if (i == keys.size() - 1)
				prestr = prestr + key + "=" + value;
			else {
				prestr = prestr + key + "=" + value + "&";
			}
		}

		return prestr;
	}
}