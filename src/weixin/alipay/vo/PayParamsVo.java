package weixin.alipay.vo;

public class PayParamsVo {
	public String seller_email;
	public String out_trade_no;
	public String subject;
	public String price;
	public String logistics_fee;
	public String logistics_type;
	public String logistics_payment;
	public String body;
	public String show_url;
	public String receive_name;
	public String receive_address;
	public String receive_zip;
	public String receive_phone;
	public String receive_mobile;
	private int goodsCount;

	public PayParamsVo(String seller_email, String out_trade_no,
			String subject, String price, String logistics_fee,
			String logistics_type, String logistics_payment, String body,
			String show_url, String receive_name, String receive_address,
			String receive_zip, String receive_phone, String receive_mobile,
			int goodsCount) {
		this.seller_email = seller_email;
		this.out_trade_no = out_trade_no;
		this.subject = subject;
		this.price = price;
		this.logistics_fee = logistics_fee;
		this.logistics_type = logistics_type;
		this.logistics_payment = logistics_payment;
		this.body = body;
		this.show_url = show_url;
		this.receive_name = receive_name;
		this.receive_address = receive_address;
		this.receive_zip = receive_zip;
		this.receive_phone = receive_phone;
		this.receive_mobile = receive_mobile;
		this.goodsCount = goodsCount;
	}
}