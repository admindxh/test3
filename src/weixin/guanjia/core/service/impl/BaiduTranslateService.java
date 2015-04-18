package weixin.guanjia.core.service.impl;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.jeecgframework.core.util.LogUtil;

import weixin.guanjia.core.entity.common.ResultPair;
import weixin.guanjia.core.entity.common.TranslateResult;

import com.google.gson.Gson;

public class BaiduTranslateService {
	public static String httpRequest(String requestUrl) {
		StringBuffer buffer = new StringBuffer();
		try {
			URL url = new URL(requestUrl);
			HttpURLConnection httpUrlConn = (HttpURLConnection) url.openConnection();

			httpUrlConn.setDoOutput(false);
			httpUrlConn.setDoInput(true);
			httpUrlConn.setUseCaches(false);

			httpUrlConn.setRequestMethod("GET");
			httpUrlConn.connect();

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
		} catch (Exception e) {
		}
		return buffer.toString();
	}

	public static String urlEncodeUTF8(String source) {
		String result = source;
		try {
			result = URLEncoder.encode(source, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return result;
	}

	public static String translate(String source) {
		String dst = null;

		String requestUrl = "http://openapi.baidu.com/public/2.0/bmt/translate?client_id=bm2FiTzH2WFHWlZdcLWHeO9R&q={keyWord}&from=auto&to=auto";

		requestUrl = requestUrl.replace("{keyWord}", urlEncodeUTF8(source));
		try {
			String json = httpRequest(requestUrl);

			TranslateResult translateResult = (TranslateResult) new Gson().fromJson(json, TranslateResult.class);

			dst = ((ResultPair) translateResult.getTrans_result().get(0)).getDst();
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (null == dst)
			dst = "翻译系统异常，请稍候尝试！";
		return dst;
	}

	public static void main(String[] args) {
		LogUtil.info(translate("网络真强大"));
	}
}