package weixin.guanjia.pay.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.jeecgframework.core.common.entity.IdEntity;

@Entity
@Table(name = "weixin_pay_config", schema = "")
@DynamicUpdate(true)
@DynamicInsert(true)
public class PayConfigEntity extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -4407844515154356504L;
	private String payname;
	private String paytype;
	private String paykey;
	private String partner;
	private String sellerEmail;
	private String typename;
	private String accountid;


	@Column(name = "PAYNAME", nullable = true, length = 100)
	public String getPayname() {
		return this.payname;
	}

	public void setPayname(String payname) {
		this.payname = payname;
	}

	@Column(name = "PAYTYPE", nullable = true, length = 1)
	public String getPaytype() {
		return this.paytype;
	}

	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}

	@Column(name = "PARTNER", nullable = true, length = 16)
	public String getPartner() {
		return this.partner;
	}

	public void setPartner(String partner) {
		this.partner = partner;
	}

	@Column(name = "SELLER_EMAIL", nullable = true, length = 200)
	public String getSellerEmail() {
		return this.sellerEmail;
	}

	public void setSellerEmail(String sellerEmail) {
		this.sellerEmail = sellerEmail;
	}

	@Column(name = "TYPENAME", nullable = true, length = 200)
	public String getTypename() {
		return this.typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	@Column(name = "ACCOUNTID", nullable = true, length = 36)
	public String getAccountid() {
		return this.accountid;
	}

	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}

	@Column(name = "paykey", nullable = true, length = 32)
	public String getPaykey() {
		return this.paykey;
	}

	public void setPaykey(String paykey) {
		this.paykey = paykey;
	}
}