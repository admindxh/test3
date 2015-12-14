package weixin.shop.base.controller;

import java.util.Date;
import java.util.UUID;

import org.apache.commons.codec.digest.DigestUtils;


public class UnifiedorderXML {

	private String appid = "wx7b5f2cb8155089c9"; // appid
	private String mch_id = "1265872901"; // 微信支付商户号
	private String key = "3e03db14c34f4b2f85920f2b46fed6e0"; // API密钥
	private String notify_url = "";
	private String nonce_str;
	private String prepay_id;
	private String sign;
	private String attach;
	private String body;
	private String spbill_create_ip;
	private String total_fee;
	private String trade_type = "JSAPI";
	private String openid;
	private String out_trade_no;
	private String xml;

	private String paySign;

	private Long timeStamp = new Date().getTime();

	public String getAppid() {
		return appid;
	}

	public void setAppid(String appid) {
		this.appid = appid;
	}

	public String getMch_id() {
		return mch_id;
	}

	public void setMch_id(String mch_id) {
		this.mch_id = mch_id;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getNotify_url() {
		return notify_url;
	}

	public void setNotify_url(String notify_url) {
		this.notify_url = notify_url;
	}

	public String getNonce_str() {
		if (this.nonce_str != null)
			return this.nonce_str;
		UUID uuid = UUID.randomUUID();
		this.nonce_str = uuid.toString().replaceAll("-", "");
		return this.nonce_str;
	}

	public void setNonce_str(String nonce_str) {
		this.nonce_str = nonce_str;
	}

	public String getSign() {

		if (this.sign != null)
			return this.sign;
		String parag = "appid=" + getAppid() + "&attach=" + getAttach() + "&body=" + getBody() + "&mch_id=" + getMch_id() + "&nonce_str="
				+ getNonce_str() + "&notify_url=" + getNotify_url() + "&openid=" + getOpenid() + "&out_trade_no=" + getOut_trade_no()
				+ "&spbill_create_ip=" + getSpbill_create_ip() + "&total_fee=" + getTotal_fee() + "&trade_type=" + getTrade_type() + "&key="
				+ getKey();

		return DigestUtils.md5Hex(parag).toUpperCase();
	}

	public void setSign(String sign) {

		this.sign = sign;

	}

	public String getAttach() {
		return attach;
	}

	public void setAttach(String attach) {
		this.attach = attach;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getSpbill_create_ip() {
		return spbill_create_ip;
	}

	public void setSpbill_create_ip(String spbill_create_ip) {
		this.spbill_create_ip = spbill_create_ip;
	}

	public String getTotal_fee() {
		return total_fee;
	}

	public void setTotal_fee(String total_fee) {
		this.total_fee = total_fee;
	}

	public String getTrade_type() {
		return trade_type;
	}

	public void setTrade_type(String trade_type) {
		this.trade_type = trade_type;
	}

	public String getOpenid() {
		return openid;
	}

	public void setOpenid(String openid) {
		this.openid = openid;
	}

	public String getOut_trade_no() {
		return out_trade_no;
	}

	public void setOut_trade_no(String out_trade_no) {
		this.out_trade_no = out_trade_no;
	}

	public String getXml() {
		return "<xml>" + "<appid>" + getAppid() + "</appid>" + "<attach>" + getAttach() + "</attach>" + "<body>" + getBody() + "</body>" + "<mch_id>"
				+ getMch_id() + "</mch_id>" + "<nonce_str>" + getNonce_str() + "</nonce_str>" + "<notify_url>" + getNotify_url() + "</notify_url>"
				+ "<openid>" + getOpenid() + "</openid>" + "<out_trade_no>" + getOut_trade_no() + "</out_trade_no>" + "<spbill_create_ip>"
				+ getSpbill_create_ip() + "</spbill_create_ip>" + "<total_fee>" + getTotal_fee() + "</total_fee>" + "<trade_type>" + getTrade_type()
				+ "</trade_type>" + "<sign>" + getSign() + "</sign>" + "</xml>";
	}

	public void setXml(String xml) {
		this.xml = xml;
	}

	public String getPrepay_id() {
		return prepay_id;
	}

	public void setPrepay_id(String prepay_id) {
		this.prepay_id = prepay_id;
	}

	public String getPaySign() {

		if (this.paySign != null)
			return this.paySign;
		String parag = "appId=" + getAppid() + "&nonceStr=" + getNonce_str() + "&package=prepay_id=" + getPrepay_id() + "&signType=MD5"
				+ "&timeStamp=" + getTimeStamp()

				+ "&key=" + getKey();
		System.err.println(parag);
		return DigestUtils.md5Hex(parag).toUpperCase();
	}

	public void setPaySign(String paySign) {
		this.paySign = paySign;
	}

	public Long getTimeStamp() {
		return timeStamp;
	}

	public void setTimeStamp(Long timeStamp) {
		this.timeStamp = timeStamp;
	}

}
