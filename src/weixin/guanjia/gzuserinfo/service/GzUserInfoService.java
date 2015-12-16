package weixin.guanjia.gzuserinfo.service;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.util.WeixinUtil;
import weixin.guanjia.gzuserinfo.entity.GzUserInfoYw;
import weixin.guanjia.gzuserinfo.model.GzUserInfo;

@Service("gzUserInfoService")
public class GzUserInfoService {
	public static final String user_info_url = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN";
	public static final String user_List_url = "https://api.weixin.qq.com/cgi-bin/user/get?access_token=ACCESS_TOKEN";

	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	@Autowired
	private GzUserInfoYwServiceI gzUserInfoYwService;
	
	private SystemService systemService;

	@Autowired
	public void setSystemService(SystemService systemService) {
		this.systemService = systemService;
	}

	public GzUserInfo getGzUserInfo(String openId) {
		String accessToken = this.weixinAccountService.getAccessToken();
		String requestUrl = user_info_url.replace("ACCESS_TOKEN", accessToken).replace("OPENID", openId);
//		System.out.println(requestUrl);
		JSONObject jsonObj = WeixinUtil.httpRequest(requestUrl, "GET", requestUrl);
//		System.out.println(jsonObj);
		if (jsonObj != null) {
			String subscribe = jsonObj.getString("subscribe");
			String openid = jsonObj.getString("openid");
			String nickname = jsonObj.getString("nickname") + "";
			String sex = jsonObj.getString("sex");
			String city = jsonObj.getString("city");
			String province = jsonObj.getString("province");
			String country = jsonObj.getString("country");
			String headimgurl = jsonObj.getString("headimgurl");
			String subscribe_time = jsonObj.getString("subscribe_time");
			GzUserInfo userInfo = new GzUserInfo(subscribe, openid, nickname, sex, city, province, country, headimgurl,
					subscribe_time);
			return userInfo;
		}
		return null;
	}

	public GzUserInfo getGzUserInfo(String openId, String accountId) {
		String accessToken = this.weixinAccountService.getAccessToken(accountId);
		String requestUrl = user_info_url.replace("ACCESS_TOKEN", accessToken).replace("OPENID", openId);
//		System.out.println(requestUrl);
		JSONObject jsonObj = WeixinUtil.httpRequest(requestUrl, "GET", requestUrl);
//		System.out.println(jsonObj);
		if (jsonObj != null) {
			System.out.println(jsonObj.toString()+"===============================================jsonobj");
			String subscribe = jsonObj.getString("subscribe");
			String openid = jsonObj.getString("openid");
			String nickname = jsonObj.getString("nickname") + "";
			String sex = jsonObj.getString("sex");
			String city = jsonObj.getString("city");
			String province = jsonObj.getString("province");
			String country = jsonObj.getString("country");
			String headimgurl = jsonObj.getString("headimgurl");
			String subscribe_time = jsonObj.getString("subscribe_time");
			GzUserInfo userInfo = new GzUserInfo(subscribe, openid, nickname, sex, city, province, country, headimgurl,
					subscribe_time);
			return userInfo;
		}
		return null;
	}
	

	public List<GzUserInfoYw> getGzUserList(String NEXT_OPENID, String accountId) {
//		System.out.println("....accountId...." + accountId);
		String accessToken = this.weixinAccountService.getAccessToken(accountId);
		List<GzUserInfoYw> tempList = new ArrayList<GzUserInfoYw>();
		if (StringUtil.isNotEmpty(accessToken)) {
			String requestUrl = "https://api.weixin.qq.com/cgi-bin/user/get?access_token=ACCESS_TOKEN".replace(
					"NEXT_OPENID", "").replace("ACCESS_TOKEN", accessToken);
			while ((NEXT_OPENID != null) && (!"".equals(NEXT_OPENID))) {
//				System.out.println(requestUrl);
				JSONObject jsonObj = WeixinUtil.httpRequest(requestUrl, "GET", "");
				if (jsonObj != null) {
//					System.out.println(jsonObj.toString());
					Boolean result = Boolean.valueOf(jsonObj.containsKey("errmsg"));
					if (result.booleanValue())
						break;
					NEXT_OPENID = jsonObj.getString("next_openid");
					int count = jsonObj.getInt("count");
					if (count != 0) {
						JSONArray openIdArr = jsonObj.getJSONObject("data").getJSONArray("openid");
						for (int i = 0; i < openIdArr.size(); i++) {
							String openId = openIdArr.get(i).toString();
							GzUserInfoYw gzUserInfoYw = (GzUserInfoYw) this.systemService.findUniqueByProperty(
									GzUserInfoYw.class, "openid", openId);
							if (gzUserInfoYw == null) {
								GzUserInfoYw gzUserInfo = new GzUserInfoYw();
								gzUserInfo.setOpenid(openId);
								gzUserInfo.setAccountId(accountId);
								tempList.add(gzUserInfo);
							}
						}
						accessToken = this.weixinAccountService.getAccessToken(accountId);
						requestUrl = "https://api.weixin.qq.com/cgi-bin/user/get?access_token=ACCESS_TOKEN".replace(
								"ACCESS_TOKEN", accessToken) + "&next_openid=" + NEXT_OPENID;
					}
				}

			}

		}

		return tempList;
	}

	public void deleteGzUserInfoByOpenId(String openId) {
		GzUserInfoYw gzUser = (GzUserInfoYw) this.systemService.findUniqueByProperty(GzUserInfoYw.class, "openid",
				openId);
		if (gzUser != null)
			this.systemService.delete(gzUser);
	}

	public void saveGzUserInfoByOpenId(String openid, String accountId) {
		WeixinAccountEntity accountInfo = this.weixinAccountService.get(WeixinAccountEntity.class,accountId);
		if ("1".equals(accountInfo.getAccounttype())) {
			GzUserInfo gzUserInfo = getGzUserInfo(openid, accountInfo.getId());
			if (gzUserInfo != null) {
				GzUserInfoYw temp = new GzUserInfoYw();
				temp.setCity(gzUserInfo.getCity());
				temp.setCountry(gzUserInfo.getCountry());
				temp.setHeadimgurl(gzUserInfo.getHeadimgurl());
				String nickName = WeixinUtil.encode(gzUserInfo.getNickname().getBytes());
				temp.setNickname(nickName);
				temp.setOpenid(gzUserInfo.getOpenid());
				temp.setProvince(gzUserInfo.getProvince());
				temp.setSex(gzUserInfo.getSex());
				temp.setSubscribe(gzUserInfo.getSubscribe());
				temp.setSubscribeTime(gzUserInfo.getSubscribe_time());
				temp.setAccountId(accountId);
				temp.setAddtime(new java.sql.Date(new java.util.Date().getTime()));
				temp.setAccountId(accountInfo.getId());
				this.systemService.save(temp);
			}
		}
	}

	public GzUserInfoYw getLocalUserinfo(String openid, String accountid) {
		CriteriaQuery cq = new CriteriaQuery(GzUserInfoYw.class);
		try {
			cq.eq("accountId", accountid);
			cq.eq("openid", openid);
			cq.eq("subscribe", "1");
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		List userlist = this.systemService.getListByCriteriaQuery(cq, Boolean.valueOf(false));
		if ((userlist != null) && (userlist.size() != 0)) {
			return (GzUserInfoYw) userlist.get(0);
		}
		return null;
	}
}