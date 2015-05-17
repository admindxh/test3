package weixin.guanjia.account.service.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import net.sf.json.JSONObject;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.LogUtil;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.util.WeixinUtil;

@Service("weixinAccountService")
@Transactional
public class WeixinAccountServiceImpl extends CommonServiceImpl implements
		WeixinAccountServiceI {
	public <T> void delete(T entity) {
		super.delete(entity);

		doDelSql((WeixinAccountEntity) entity);
	}

	public <T> Serializable save(T entity) {
		Serializable t = super.save(entity);

		doAddSql((WeixinAccountEntity) entity);
		return t;
	}

	public <T> void saveOrUpdate(T entity) {
		super.saveOrUpdate(entity);

		doUpdateSql((WeixinAccountEntity) entity);
	}

	public boolean doAddSql(WeixinAccountEntity t) {
		return true;
	}

	public boolean doUpdateSql(WeixinAccountEntity t) {
		return true;
	}

	public boolean doDelSql(WeixinAccountEntity t) {
		return true;
	}

	public String getAccessToken() {
		String token = "";

		WeixinAccountEntity account = (WeixinAccountEntity) get(
				WeixinAccountEntity.class, ResourceUtil.getShangJiaAccountId());
		token = account.getAccountaccesstoken();
		LogUtil.info("---------------------------------获取-------token-----------：{"
				+ token);
		String wrongMessage = null;
		if ((token != null) && (!"".equals(token))) {
			LogUtil.info("-----------------------------超过2小时重新获取------token-----");
			Date end = new Date();
			Date start = new Date(account.getAddtoekntime().getTime());
			if ((end.getTime() - start.getTime()) / 1000L / 3600L >= 1.9D) {
				String requestUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET"
						.replace("APPID", account.getAccountappid()).replace(
								"APPSECRET", account.getAccountappsecret());

				JSONObject jsonObject = WeixinUtil.httpRequest(requestUrl,
						"GET", null);

				if (null != jsonObject) {
					try {
						token = jsonObject.getString("access_token");
						LogUtil.info("-----------------------------超过2小时重新获取------token-----：{"
								+ token);

						account.setAccountaccesstoken(token);

						account.setAddtoekntime(new Date());
						saveOrUpdate(account);
					} catch (Exception e) {
						token = null;

						wrongMessage = "获取token失败 errcode:{} errmsg:{}"
								+ jsonObject.getInt("errcode")
								+ jsonObject.getString("errmsg");
						LogUtil.error(wrongMessage, e);
					}
				}
			} else {
				return account.getAccountaccesstoken();
			}
		} else {
			String requestUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET"
					.replace("APPID", account.getAccountappid()).replace(
							"APPSECRET", account.getAccountappsecret());

			LogUtil.info("---------------------------为空的情况重新获取------requestUrl-----{"
					+ requestUrl);
			JSONObject jsonObject = WeixinUtil.httpRequest(requestUrl, "GET",
					null);

			if (null != jsonObject) {
				try {
					token = jsonObject.getString("access_token");
					LogUtil.info("---------------------------为空的情况重新获取------token-----{"
							+ token);

					account.setAccountaccesstoken(token);

					account.setAddtoekntime(new Date());
					saveOrUpdate(account);
				} catch (Exception e) {
					token = null;

					wrongMessage = "获取token失败 errcode:{} errmsg:{}"
							+ jsonObject.getInt("errcode")
							+ jsonObject.getString("errmsg");
					LogUtil.error(wrongMessage, e);
				}
			}

		}

		return token;
	}

	public String getNewAccessToken(String accountid) {
		String token = "";
		WeixinAccountEntity weixinAccountEntity = (WeixinAccountEntity) findUniqueByProperty(
				WeixinAccountEntity.class, "id", accountid);

		String requestUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET"
				.replace("APPID", weixinAccountEntity.getAccountappid())
				.replace("APPSECRET", weixinAccountEntity.getAccountappsecret());

		JSONObject jsonObject = WeixinUtil.httpRequest(requestUrl, "GET", null);
		String wrongMessage;
		if (null != jsonObject) {
			try {
				token = jsonObject.getString("access_token");

				weixinAccountEntity.setAccountaccesstoken(token);

				weixinAccountEntity.setAddtoekntime(new Date());
				saveOrUpdate(weixinAccountEntity);
			} catch (Exception e) {
				token = null;

				wrongMessage = "获取token失败 errcode:{} errmsg:{}"
						+ jsonObject.getInt("errcode")
						+ jsonObject.getString("errmsg");
				LogUtil.error(wrongMessage, e);
			}

		}

		return token;
	}

	public String getAccessToken(String accountId) {
		WeixinAccountEntity weixinAccountEntity = (WeixinAccountEntity) findUniqueByProperty(
				WeixinAccountEntity.class, "id", accountId);
		String token = weixinAccountEntity.getAccountaccesstoken();
		String wrongMessage;
		if ((token != null) && (!"".equals(token))) {
			Date end = new Date();
			Date start = new Date(weixinAccountEntity.getAddtoekntime()
					.getTime());
			if ((end.getTime() - start.getTime()) / 1000L / 3600L >= 2L) {
				String requestUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET"
						.replace("APPID", weixinAccountEntity.getAccountappid())
						.replace("APPSECRET",
								weixinAccountEntity.getAccountappsecret());

				JSONObject jsonObject = WeixinUtil.httpRequest(requestUrl,
						"GET", null);

				if (null != jsonObject) {
					try {
						token = jsonObject.getString("access_token");

						weixinAccountEntity.setAccountaccesstoken(token);

						weixinAccountEntity.setAddtoekntime(new Date());
						saveOrUpdate(weixinAccountEntity);
					} catch (Exception e) {
						token = null;

						wrongMessage = "获取token失败 errcode:{} errmsg:{}"
								+ jsonObject.getInt("errcode")
								+ jsonObject.getString("errmsg");
						LogUtil.error(wrongMessage, e);
					}
				}
			} else {
				return weixinAccountEntity.getAccountaccesstoken();
			}
		} else {
			String requestUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET"
					.replace("APPID", weixinAccountEntity.getAccountappid())
					.replace("APPSECRET",
							weixinAccountEntity.getAccountappsecret());

			JSONObject jsonObject = WeixinUtil.httpRequest(requestUrl, "GET",
					null);

			if (null != jsonObject) {
				try {
					token = jsonObject.getString("access_token");

					weixinAccountEntity.setAccountaccesstoken(token);

					weixinAccountEntity.setAddtoekntime(new Date());
					saveOrUpdate(weixinAccountEntity);
				} catch (Exception e) {
					token = null;

					wrongMessage = "获取token失败 errcode:{} errmsg:{}"
							+ jsonObject.getInt("errcode")
							+ jsonObject.getString("errmsg");
					LogUtil.error(wrongMessage, e);
				}
			}

		}

		return token;
	}

	public WeixinAccountEntity findLoginWeixinAccount() {
		TSUser user = ResourceUtil.getSessionUserName();
		List<WeixinAccountEntity> acclst = findByProperty(
				WeixinAccountEntity.class, "userName", user.getUserName());

		WeixinAccountEntity weixinAccountEntity = acclst.size() != 0 ? (WeixinAccountEntity) acclst
				.get(0) : null;

		if (weixinAccountEntity != null) {
			return weixinAccountEntity;
		}
		weixinAccountEntity = new WeixinAccountEntity();

		weixinAccountEntity.setWeixinaccountid("-1");
		weixinAccountEntity.setId("-1");
		return weixinAccountEntity;
	}

	public List<WeixinAccountEntity> findByUsername(String username) {
		List<WeixinAccountEntity> acclst = findByProperty(
				WeixinAccountEntity.class, "userName", username);

		return acclst;
	}

	public WeixinAccountEntity findByToUsername(String toUserName) {
		return (WeixinAccountEntity) findUniqueByProperty(
				WeixinAccountEntity.class, "weixinaccountid", toUserName);
	}

	public String replaceVal(String sql, WeixinAccountEntity t) {
		sql = sql.replace("#{id}", String.valueOf(t.getId()));
		sql = sql.replace("#{accountname}", String.valueOf(t.getAccountname()));
		sql = sql.replace("#{accounttoken}",
				String.valueOf(t.getAccounttoken()));

		sql = sql.replace("#{accountnumber}",
				String.valueOf(t.getAccountnumber()));

		sql = sql.replace("#{accounttype}", String.valueOf(t.getAccounttype()));
		sql = sql.replace("#{accountemail}",
				String.valueOf(t.getAccountemail()));

		sql = sql.replace("#{accountdesc}", String.valueOf(t.getAccountdesc()));
		sql = sql.replace("#{accountappid}",
				String.valueOf(t.getAccountappid()));

		sql = sql.replace("#{accountappsecret}",
				String.valueOf(t.getAccountappsecret()));

		sql = sql.replace("#{accountaccesstoken}",
				String.valueOf(t.getAccountaccesstoken()));

		sql = sql.replace("#{addtoekntime}",
				String.valueOf(t.getAddtoekntime()));

		sql = sql.replace("#{UUID}", UUID.randomUUID().toString());
		return sql;
	}
}