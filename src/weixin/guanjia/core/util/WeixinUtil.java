package weixin.guanjia.core.util;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

import net.sf.json.JSONObject;

import org.jeecgframework.core.util.LogUtil;
import org.jeecgframework.web.system.service.SystemService;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;
import weixin.guanjia.core.entity.common.AccessToken;
import weixin.guanjia.core.entity.model.AccessTokenYw;

public class WeixinUtil {
	public static final String access_token_url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";
	public static final String menu_create_url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN";

	public static final String send_message_url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=ACCESS_TOKEN";

	public static final String qrcode_ticket_url = "https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token=ACCESS_TOKEN";

	public static final String get_qrcode_url = "https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=TICKET";

	public static final String web_oauth_url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=APPID&redirect_uri=REDIRECT_URI&response_type=code&scope=SCOPE&state=STATE#wechat_redirect";

	public static final String web_oauth_accesstoken_url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code";

	public static JSONObject httpRequest(String requestUrl, String requestMethod, String outputStr) {
		JSONObject jsonObject = null;
		StringBuffer buffer = new StringBuffer();
		try {
			TrustManager[] tm = { new MyX509TrustManager() };
			SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
			sslContext.init(null, tm, new SecureRandom());

			SSLSocketFactory ssf = sslContext.getSocketFactory();

			URL url = new URL(requestUrl);
			HttpsURLConnection httpUrlConn = (HttpsURLConnection) url.openConnection();
			httpUrlConn.setSSLSocketFactory(ssf);

			httpUrlConn.setDoOutput(true);
			httpUrlConn.setDoInput(true);
			httpUrlConn.setUseCaches(false);

			httpUrlConn.setRequestMethod(requestMethod);

			if ("GET".equalsIgnoreCase(requestMethod)) {
				httpUrlConn.connect();
			}

			if (null != outputStr) {
				OutputStream outputStream = httpUrlConn.getOutputStream();

				outputStream.write(outputStr.getBytes("UTF-8"));
				outputStream.close();
			}

			InputStream inputStream = httpUrlConn.getInputStream();
			InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");
			BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

			String str = null;
			while ((str = bufferedReader.readLine()) != null) {
				buffer.append(str);
			}
			bufferedReader.close();
			inputStreamReader.close();

			inputStream.close();
			inputStream = null;
			httpUrlConn.disconnect();
			jsonObject = JSONObject.fromObject(buffer.toString());
		} catch (ConnectException ce) {
			LogUtil.info("Weixin server connection timed out.");
		} catch (Exception e) {
			LogUtil.info("https request error:{}" + e.getMessage());
		}
		return jsonObject;
	}

	public static void saveHttpImage(String requestUrl, String requestMethod, String outputStr, File target) {
		try {
			URL url = new URL(requestUrl);

			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			conn.setRequestMethod(requestMethod);

			conn.setConnectTimeout(5000);

			InputStream inStream = conn.getInputStream();

			byte[] data = readInputStream(inStream);

			FileOutputStream outStream = new FileOutputStream(target);

			outStream.write(data);

			outStream.close();
		} catch (Exception e) {
		}
	}

	public static AccessToken getAccessToken(SystemService systemService, String appid, String appsecret) {
		AccessTokenYw accessTocken = getRealAccessToken(systemService);

		if (accessTocken != null) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date end = new Date();
			Date start = new Date(accessTocken.getAddTime().getTime());
			if (end.getTime() - accessTocken.getAddTime().getTime() > accessTocken.getExpires_in() * 1000) {
				AccessToken accessToken = null;
				String requestUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET"
						.replace("APPID", appid).replace("APPSECRET", appsecret);
				JSONObject jsonObject = httpRequest(requestUrl, "GET", null);

				if (null != jsonObject) {
					try {
						accessToken = new AccessToken();
						accessToken.setToken(jsonObject.getString("access_token"));
						accessToken.setExpiresIn(jsonObject.getInt("expires_in"));

						AccessTokenYw atyw = new AccessTokenYw();
						atyw.setId(accessTocken.getId());
						atyw.setExpires_in(jsonObject.getInt("expires_in"));
						atyw.setAccess_token(jsonObject.getString("access_token"));
						updateAccessToken(atyw, systemService);
					} catch (Exception e) {
						accessToken = null;

						String wrongMessage = "获取token失败 errcode:{} errmsg:{}" + jsonObject.getInt("errcode")
								+ jsonObject.getString("errmsg");
						LogUtil.info(wrongMessage);
					}
				}
				return accessToken;
			}

			AccessToken accessToken = new AccessToken();
			accessToken.setToken(accessTocken.getAccess_token());
			accessToken.setExpiresIn(accessTocken.getExpires_in());
			return accessToken;
		}

		AccessToken accessToken = null;
		String requestUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET"
				.replace("APPID", appid).replace("APPSECRET", appsecret);
		JSONObject jsonObject = httpRequest(requestUrl, "GET", null);

		if (null != jsonObject) {
			try {
				accessToken = new AccessToken();
				accessToken.setToken(jsonObject.getString("access_token"));
				accessToken.setExpiresIn(jsonObject.getInt("expires_in"));

				AccessTokenYw atyw = new AccessTokenYw();
				atyw.setExpires_in(jsonObject.getInt("expires_in"));
				atyw.setAccess_token(jsonObject.getString("access_token"));
				saveAccessToken(atyw, systemService);
			} catch (Exception e) {
				accessToken = null;

				String wrongMessage = "获取token失败 errcode:{} errmsg:{}" + jsonObject.getInt("errcode")
						+ jsonObject.getString("errmsg");
				LogUtil.info(wrongMessage);
			}
		}
		return accessToken;
	}

	public static AccessTokenYw getRealAccessToken(SystemService systemService) {
		List accessTockenList = systemService.findByQueryString("from AccessTokenYw");
		return (AccessTokenYw) accessTockenList.get(0);
	}

	public static void saveAccessToken(AccessTokenYw accessTocken, SystemService systemService) {
		systemService.save(accessTocken);
	}

	public static void updateAccessToken(AccessTokenYw accessTocken, SystemService systemService) {
		String sql = "update accesstoken set access_token='" + accessTocken.getAccess_token() + "',expires_ib="
				+ accessTocken.getExpires_in() + ",addtime=now() where id='" + accessTocken.getId() + "'";
		systemService.updateBySqlString(sql);
	}

	public static String encode(byte[] bstr) {
		return new BASE64Encoder().encode(bstr);
	}

	public static byte[] decode(String str) {
		byte[] bt = null;
		try {
			BASE64Decoder decoder = new BASE64Decoder();
			bt = decoder.decodeBuffer(str);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return bt;
	}

	public static byte[] readInputStream(InputStream inStream) throws Exception {
		ByteArrayOutputStream outstream = new ByteArrayOutputStream();
		byte[] buffer = new byte[1024];
		int len = -1;
		while ((len = inStream.read(buffer)) != -1) {
			outstream.write(buffer, 0, len);
		}
		outstream.close();
		inStream.close();

		return outstream.toByteArray();
	}
}