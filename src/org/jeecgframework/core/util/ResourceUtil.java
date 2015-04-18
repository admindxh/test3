package org.jeecgframework.core.util;

import java.net.URL;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.jeecgframework.web.system.manager.ClientManager;
import org.jeecgframework.web.system.pojo.base.Client;
import org.jeecgframework.web.system.pojo.base.TSRoleFunction;
import org.jeecgframework.web.system.pojo.base.TSUser;
import weixin.guanjia.account.entity.WeixinAccountEntity;

public class ResourceUtil {
	private static final ResourceBundle bundle = ResourceBundle
			.getBundle("sysConfig");

	public static final String getSessionattachmenttitle(String sessionName) {
		return bundle.getString(sessionName);
	}

	public static final TSUser getSessionUserName() {
		HttpSession session = ContextHolderUtils.getSession();
		if (ClientManager.getInstance().getClient(session.getId()) != null) {
			return ClientManager.getInstance().getClient(session.getId())
					.getUser();
		}
		return null;
	}

	public static final TSUser setSessionUserName(TSUser user) {
		HttpSession session = ContextHolderUtils.getSession();
		if (ClientManager.getInstance().getClient(session.getId()) != null) {
			ClientManager.getInstance().getClient(session.getId())
					.setUser(user);
			return ClientManager.getInstance().getClient(session.getId())
					.getUser();
		}
		return null;
	}

	public static final WeixinAccountEntity getShangJiaAccount() {
		HttpSession session = ContextHolderUtils.getSession();
		if (session.getAttribute("WEIXIN_ACCOUNT") != null) {
			WeixinAccountEntity WeixinAccountEntity = (WeixinAccountEntity) session
					.getAttribute("WEIXIN_ACCOUNT");
			return WeixinAccountEntity;
		}
		return null;
	}

	public static final String getShangJiaAccountId() {
		HttpSession session = ContextHolderUtils.getSession();
		if (session.getAttribute("WEIXIN_ACCOUNT") != null) {
			WeixinAccountEntity weixinAccountEntity = (WeixinAccountEntity) session
					.getAttribute("WEIXIN_ACCOUNT");
			return weixinAccountEntity.getId();
		}
		return null;
	}

	public static final String getUserOpenId() {
		HttpSession session = ContextHolderUtils.getSession();
		Object userOpenId = session.getAttribute("USER_OPENID");
		if (userOpenId != null) {
			return userOpenId.toString();
		}
		return null;
	}

	public static final String getQianTaiAccountId() {
		HttpSession session = ContextHolderUtils.getSession();
		Object accountid = session.getAttribute("WEIXIN_QIANTAI_ACCOUNTID");
		if (accountid != null) {
			return accountid.toString();
		}
		return null;
	}

	public static void initQianTaiRequestAccountId(HttpServletRequest request) {
		String accountid = request.getParameter("accountid");
		if (accountid != null) {
			HttpSession session = ContextHolderUtils.getSession();
			session.setAttribute("WEIXIN_QIANTAI_ACCOUNTID", accountid);
		}
	}

	@Deprecated
	public static final List<TSRoleFunction> getSessionTSRoleFunction(
			String roleId) {
		HttpSession session = ContextHolderUtils.getSession();
		if (session.getAttributeNames().hasMoreElements()) {
			List TSRoleFunctionList = (List) session.getAttribute(roleId);
			if (TSRoleFunctionList != null) {
				return TSRoleFunctionList;
			}
			return null;
		}

		return null;
	}

	public static String getRequestPath(HttpServletRequest request) {
		String requestPath = request.getRequestURI() + "?"
				+ request.getQueryString();
		if (requestPath.indexOf("&") > -1) {
			requestPath = requestPath.substring(0, requestPath.indexOf("&"));
		}
		requestPath = requestPath
				.substring(request.getContextPath().length() + 1);
		return requestPath;
	}

	public static String getRedirUrl(HttpServletRequest request) {
		String requestPath = request.getRequestURI() + "?"
				+ request.getQueryString();
		requestPath = requestPath
				.substring(request.getContextPath().length() + 1);
		return requestPath;
	}

	public static final String getConfigByName(String name) {
		return bundle.getString(name);
	}

	public static final Map<Object, Object> getConfigMap(String path) {
		ResourceBundle bundle = ResourceBundle.getBundle(path);
		Set set = bundle.keySet();
		return oConvertUtils.SetToMap(set);
	}

	public static String getSysPath() {
		String path = Thread.currentThread().getContextClassLoader()
				.getResource("").toString();
		String temp = path.replaceFirst("file:/", "").replaceFirst(
				"WEB-INF/classes/", "");
		String separator = System.getProperty("file.separator");
		String resultPath = temp.replaceAll("/", separator + separator)
				.replaceAll("%20", " ");
		return resultPath;
	}

	public static String getPorjectPath() {
		String nowpath = System.getProperty("user.dir");
		String tempdir = nowpath.replace("bin", "webapps");
		tempdir = tempdir + "\\";
		return tempdir;
	}

	public static String getClassPath() {
		String path = Thread.currentThread().getContextClassLoader()
				.getResource("").toString();
		String temp = path.replaceFirst("file:/", "");
		String separator = System.getProperty("file.separator");
		String resultPath = temp.replaceAll("/", separator + separator);
		return resultPath;
	}

	public static String getSystempPath() {
		return System.getProperty("java.io.tmpdir");
	}

	public static String getSeparator() {
		return System.getProperty("file.separator");
	}

	public static String getParameter(String field) {
		HttpServletRequest request = ContextHolderUtils.getRequest();
		return request.getParameter(field);
	}

	public static final String getJdbcUrl() {
		return DBTypeUtil.getDBType().toLowerCase();
	}

	public static String getRandCodeLength() {
		return bundle.getString("randCodeLength");
	}

	public static String getRandCodeType() {
		return bundle.getString("randCodeType");
	}

	public static void main(String[] args) {
		LogUtil.info(getPorjectPath());
		LogUtil.info(getSysPath());
	}
}