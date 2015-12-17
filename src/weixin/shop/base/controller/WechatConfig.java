package weixin.shop.base.controller;

public class WechatConfig {

	private String appId;
	private String appSecret;
	private String encodingAESKey; // 加密串 43 位
	private String token; // 校验token
	private String base; // root URL
	private String serviceURL;

	private static WechatConfig config;

	public static WechatConfig getConfig() {
		return config;
	}

	public static void setConfig(WechatConfig config) {
		WechatConfig.config = WechatConfig.config == null ? config : WechatConfig.config;
	}

	public String getAppId() {
		return appId;
	}

	public void setAppId(String appId) {
		this.appId = appId;
	}

	public String getAppSecret() {
		return appSecret;
	}

	public void setAppSecret(String appSecret) {
		this.appSecret = appSecret;
	}

	public String getEncodingAESKey() {
		return encodingAESKey;
	}

	public void setEncodingAESKey(String encodingAESKey) {
		this.encodingAESKey = encodingAESKey;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getBase() {
		return base;
	}

	public void setBase(String base) {
		this.base = base;
	}

	public String getServiceURL() {
		return serviceURL;
	}

	public void setServiceURL(String serviceURL) {
		this.serviceURL = serviceURL;
	}

	public String appendURL(String url) {
		return String.format("%s%s", this.serviceURL, url);
	}

}
