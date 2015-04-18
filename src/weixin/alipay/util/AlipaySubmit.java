package weixin.alipay.util;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.commons.httpclient.NameValuePair;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;
import weixin.alipay.config.AlipayConfig;
import weixin.alipay.httpClient.HttpProtocolHandler;
import weixin.alipay.httpClient.HttpRequest;
import weixin.alipay.httpClient.HttpResponse;
import weixin.alipay.httpClient.HttpResultType;
import weixin.alipay.sign.MD5;

public class AlipaySubmit {
	private static final String ALIPAY_GATEWAY_NEW = "https://mapi.alipay.com/gateway.do?";

	public static String buildRequestMysign(Map<String, String> sPara) {
		String prestr = AlipayCore.createLinkString(sPara);
		String mysign = "";
		if (AlipayConfig.sign_type.equals("MD5")) {
			mysign = MD5.sign(prestr, AlipayConfig.key,
					AlipayConfig.input_charset);
		}
		return mysign;
	}

	private static Map<String, String> buildRequestPara(
			Map<String, String> sParaTemp) {
		Map sPara = AlipayCore.paraFilter(sParaTemp);

		String mysign = buildRequestMysign(sPara);

		sPara.put("sign", mysign);
		sPara.put("sign_type", AlipayConfig.sign_type);

		return sPara;
	}

	public static String buildRequest(Map<String, String> sParaTemp,
			String strMethod, String strButtonName) {
		Map sPara = buildRequestPara(sParaTemp);
		List keys = new ArrayList(sPara.keySet());

		StringBuffer sbHtml = new StringBuffer();

		sbHtml.append("<form id=\"alipaysubmit\" name=\"alipaysubmit\" action=\"https://mapi.alipay.com/gateway.do?_input_charset="
				+ AlipayConfig.input_charset
				+ "\" method=\""
				+ strMethod
				+ "\">");

		for (int i = 0; i < keys.size(); i++) {
			String name = (String) keys.get(i);
			String value = (String) sPara.get(name);

			sbHtml.append("<input type=\"hidden\" name=\"" + name
					+ "\" value=\"" + value + "\"/>");
		}

		sbHtml.append("<input type=\"submit\" value=\"" + strButtonName
				+ "\" style=\"display:none;\"></form>");
		sbHtml.append("<script>document.forms['alipaysubmit'].submit();</script>");

		return sbHtml.toString();
	}

	public static String buildRequest(Map<String, String> sParaTemp,
			String strMethod, String strButtonName, String strParaFileName) {
		Map sPara = buildRequestPara(sParaTemp);
		List keys = new ArrayList(sPara.keySet());

		StringBuffer sbHtml = new StringBuffer();

		sbHtml.append("<form id=\"alipaysubmit\" name=\"alipaysubmit\"  enctype=\"multipart/form-data\" action=\"https://mapi.alipay.com/gateway.do?_input_charset="
				+ AlipayConfig.input_charset
				+ "\" method=\""
				+ strMethod
				+ "\">");

		for (int i = 0; i < keys.size(); i++) {
			String name = (String) keys.get(i);
			String value = (String) sPara.get(name);

			sbHtml.append("<input type=\"hidden\" name=\"" + name
					+ "\" value=\"" + value + "\"/>");
		}

		sbHtml.append("<input type=\"file\" name=\"" + strParaFileName
				+ "\" />");

		sbHtml.append("<input type=\"submit\" value=\"" + strButtonName
				+ "\" style=\"display:none;\"></form>");

		return sbHtml.toString();
	}

	public static String buildRequest(String strParaFileName,
			String strFilePath, Map<String, String> sParaTemp) throws Exception {
		Map sPara = buildRequestPara(sParaTemp);

		HttpProtocolHandler httpProtocolHandler = HttpProtocolHandler
				.getInstance();

		HttpRequest request = new HttpRequest(HttpResultType.BYTES);

		request.setCharset(AlipayConfig.input_charset);

		request.setParameters(generatNameValuePair(sPara));
		request.setUrl("https://mapi.alipay.com/gateway.do?_input_charset="
				+ AlipayConfig.input_charset);

		HttpResponse response = httpProtocolHandler.execute(request,
				strParaFileName, strFilePath);
		if (response == null) {
			return null;
		}

		String strResult = response.getStringResult();

		return strResult;
	}

	private static NameValuePair[] generatNameValuePair(
			Map<String, String> properties) {
		NameValuePair[] nameValuePair = new NameValuePair[properties.size()];
		int i = 0;
		for (Entry<String, String> entry : properties.entrySet()) {
			nameValuePair[(i++)] = new NameValuePair((String) entry.getKey(),
					(String) entry.getValue());
		}

		return nameValuePair;
	}

	public static String query_timestamp() throws MalformedURLException,
			DocumentException, IOException {
		String strUrl = "https://mapi.alipay.com/gateway.do?service=query_timestamp&partner="
				+ AlipayConfig.partner
				+ "&_input_charset"
				+ AlipayConfig.input_charset;
		StringBuffer result = new StringBuffer();

		SAXReader reader = new SAXReader();
		Document doc = reader.read(new URL(strUrl).openStream());

		List<Node> nodeList = doc.selectNodes("//alipay/*");

		for (Node node : nodeList) {
			if ((node.getName().equals("is_success"))
					&& (node.getText().equals("T"))) {
				List<Node> nodeList1 = doc.selectNodes("//response/timestamp/*");
				for (Node node1 : nodeList1) {
					result.append(node1.getText());
				}
			}
		}

		return result.toString();
	}
}