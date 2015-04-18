package weixin.guanjia.message.service;

import net.sf.json.JSONObject;

import org.jeecgframework.core.util.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.util.WeixinUtil;

@Service("customerMessageService")
public class CustomerMessageService {
	public static final String send_message_url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=ACCESS_TOKEN";
	/**
	 * 日志
	 */
	private static final Logger LOG = LoggerFactory.getLogger(CustomerMessageService.class);
	
	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	public String sendMessage(String json) {
		String accessTocken = this.weixinAccountService.getAccessToken();
		if (StringUtil.isNotEmpty(accessTocken)) {
			if (LOG.isInfoEnabled()) LOG.info("....token...." + accessTocken);
			String url = send_message_url.replace("ACCESS_TOKEN", accessTocken);
			JSONObject jsonObject = WeixinUtil.httpRequest(url, "POST", json);
			if (LOG.isInfoEnabled()) LOG.info("...jsonObject..." + jsonObject.toString());
			return jsonObject.toString();
		}
		return null;
	}

	public String sendMessage(String json, String accountid) {
		String accessTocken = this.weixinAccountService.getAccessToken(accountid);
		if (StringUtil.isNotEmpty(accessTocken)) {
			if (LOG.isInfoEnabled()) LOG.info("....token...." + accessTocken);
			String url = send_message_url.replace("ACCESS_TOKEN", accessTocken);
			JSONObject jsonObject = WeixinUtil.httpRequest(url, "POST", json);
			if (LOG.isInfoEnabled()) LOG.info("...jsonObject..." + jsonObject.toString());
			return jsonObject.toString();
		}
		return null;
	}
}