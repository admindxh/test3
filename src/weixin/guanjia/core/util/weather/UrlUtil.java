package weixin.guanjia.core.util.weather;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import org.jeecgframework.core.util.LogUtil;

public class UrlUtil {
	public static String getURLContent(String path) {
		StringBuilder sb = null;

		URL url = null;
		try {
			url = new URL(path);
			URLConnection connectionData = url.openConnection();
			connectionData.setConnectTimeout(1000);
			BufferedReader br = new BufferedReader(new InputStreamReader(connectionData.getInputStream(), "UTF-8"));

			sb = new StringBuilder();
			String line = null;
			while ((line = br.readLine()) != null)
				sb.append(line);
		} catch (SocketTimeoutException e) {
			LogUtil.info("连接超时");
		} catch (FileNotFoundException e) {
			LogUtil.info("加载文件出错");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return sb.toString();
	}
}