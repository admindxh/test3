package weixin.guanjia.gzgroup.service.impl;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.util.WeixinUtil;
import weixin.guanjia.gzgroup.model.ComplexGroup;

@Service("groupService")
public class GroupService {
	private static String create_group_url = "https://api.weixin.qq.com/cgi-bin/groups/create?access_token=ACCESS_TOKEN";

	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	
	private static final Logger LOG = LoggerFactory.getLogger(GroupService.class);

	public JSONObject createGroup(ComplexGroup complexGroup) {
		String accessToken = this.weixinAccountService.getAccessToken();
		if (null == accessToken) return null;
		String requestUrl = create_group_url.replace("ACCESS_TOKEN", accessToken);
		JSONObject obj = JSONObject.fromObject(complexGroup);
		if (LOG.isInfoEnabled()) LOG.info(obj.toString());
		JSONObject result = WeixinUtil.httpRequest(requestUrl, "POST", obj.toString());
		if (LOG.isInfoEnabled()) LOG.info(result.toString());
		return result;
	}
}