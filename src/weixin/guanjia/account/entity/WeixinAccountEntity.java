package weixin.guanjia.account.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.jeecgframework.core.common.entity.IdEntity;
/**
 * 微信公众平台用户
 * <p>创建时间: 2014年10月8日 下午2:50:30</p>
 * @author <a href="mailto:hongdanping@163.com">hdp</a>
 * @version V1.0
 * @since V1.0
 */
@Entity
@Table(name = "weixin_account", schema = "")
public class WeixinAccountEntity extends IdEntity{
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -1074863488930077195L;
	/**
	 * 微信公众平台用户名称
	 */
	private String accountname;
	/**
	 * 验证token
	 */
	private String accounttoken;
	private String accountnumber;
	private String weixinaccountid;
	private String accounttype;
	private String accountemail;
	private String accountdesc;
	private String accountappid;
	private String accountappsecret;
	private String accountaccesstoken;
	private Date addtoekntime;
	private String userName;

	@Column(name = "ACCOUNTNAME", nullable = true, length = 200)
	public String getAccountname() {
		return this.accountname;
	}

	public void setAccountname(String accountname) {
		this.accountname = accountname;
	}

	@Column(name = "ACCOUNTTOKEN", nullable = true, length = 200)
	public String getAccounttoken() {
		return this.accounttoken;
	}

	public void setAccounttoken(String accounttoken) {
		this.accounttoken = accounttoken;
	}

	@Column(name = "ACCOUNTNUMBER", nullable = true, length = 200)
	public String getAccountnumber() {
		return this.accountnumber;
	}

	public void setAccountnumber(String accountnumber) {
		this.accountnumber = accountnumber;
	}
	@Column(name = "WEIXIN_ACCOUNTID", nullable = true, length = 50)
	public String getWeixinaccountid() {
		return this.weixinaccountid;
	}

	public void setWeixinaccountid(String weixinaccountid) {
		this.weixinaccountid = weixinaccountid;
	}

	@Column(name = "ACCOUNTTYPE", nullable = true, length = 50)
	public String getAccounttype() {
		return this.accounttype;
	}

	public void setAccounttype(String accounttype) {
		this.accounttype = accounttype;
	}

	@Column(name = "ACCOUNTEMAIL", nullable = true, length = 200)
	public String getAccountemail() {
		return this.accountemail;
	}

	public void setAccountemail(String accountemail) {
		this.accountemail = accountemail;
	}

	@Column(name = "ACCOUNTDESC", nullable = true, length = 500)
	public String getAccountdesc() {
		return this.accountdesc;
	}

	public void setAccountdesc(String accountdesc) {
		this.accountdesc = accountdesc;
	}

	@Column(name = "ACCOUNTAPPID", nullable = true, length = 200)
	public String getAccountappid() {
		return this.accountappid;
	}

	public void setAccountappid(String accountappid) {
		this.accountappid = accountappid;
	}

	@Column(name = "ACCOUNTAPPSECRET", nullable = true, length = 500)
	public String getAccountappsecret() {
		return this.accountappsecret;
	}

	public void setAccountappsecret(String accountappsecret) {
		this.accountappsecret = accountappsecret;
	}

	@Column(name = "ACCOUNTACCESSTOKEN", nullable = true, length = 1000)
	public String getAccountaccesstoken() {
		return this.accountaccesstoken;
	}

	public void setAccountaccesstoken(String accountaccesstoken) {
		this.accountaccesstoken = accountaccesstoken;
	}

	@Column(name = "ADDTOEKNTIME", nullable = true, length = 100)
	public Date getAddtoekntime() {
		return this.addtoekntime;
	}

	public void setAddtoekntime(Date addtoekntime) {
		this.addtoekntime = addtoekntime;
	}

	@Column(name = "USERNAME", nullable = true, length = 50)
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}