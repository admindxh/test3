package weixin.alipay.util;

import java.util.HashMap;
import java.util.Map;
import weixin.alipay.config.AlipayConfig;
import weixin.alipay.vo.PayParamsVo;

public class GoPay
{
  public static String goPay(PayParamsVo payParamsVo)
  {
    String payment_type = "1";

    String notify_url = "http://www.xxx.com/create_partner_trade_by_buyer-JAVA-UTF-8/notify_url.jsp";

    String return_url = "http://www.xxx.com/create_partner_trade_by_buyer-JAVA-UTF-8/return_url.jsp";

    String seller_email = payParamsVo.seller_email;

    String out_trade_no = payParamsVo.out_trade_no;

    String subject = payParamsVo.subject;

    String price = payParamsVo.price;

    String quantity = "1";

    String logistics_fee = payParamsVo.logistics_fee;

    String logistics_type = payParamsVo.logistics_type;

    String logistics_payment = payParamsVo.logistics_payment;

    String body = payParamsVo.body;

    String show_url = payParamsVo.show_url;

    String receive_name = payParamsVo.receive_name;

    String receive_address = payParamsVo.receive_address;

    String receive_zip = payParamsVo.receive_zip;

    String receive_phone = payParamsVo.receive_phone;

    String receive_mobile = payParamsVo.receive_mobile;

    Map sParaTemp = new HashMap();
    sParaTemp.put("service", "create_partner_trade_by_buyer");
    sParaTemp.put("partner", AlipayConfig.getPartner());
    sParaTemp.put("_input_charset", AlipayConfig.input_charset);
    sParaTemp.put("payment_type", payment_type);
    sParaTemp.put("notify_url", notify_url);
    sParaTemp.put("return_url", return_url);
    sParaTemp.put("seller_email", seller_email);
    sParaTemp.put("out_trade_no", out_trade_no);
    sParaTemp.put("subject", subject);
    sParaTemp.put("price", price);
    sParaTemp.put("quantity", quantity);
    sParaTemp.put("logistics_fee", logistics_fee);
    sParaTemp.put("logistics_type", logistics_type);
    sParaTemp.put("logistics_payment", logistics_payment);
    sParaTemp.put("body", body);
    sParaTemp.put("show_url", show_url);
    sParaTemp.put("receive_name", receive_name);
    sParaTemp.put("receive_address", receive_address);
    sParaTemp.put("receive_zip", receive_zip);
    sParaTemp.put("receive_phone", receive_phone);
    sParaTemp.put("receive_mobile", receive_mobile);

    String sHtmlText = AlipaySubmit.buildRequest(sParaTemp, "get", "确认");
    return sHtmlText;
  }
}