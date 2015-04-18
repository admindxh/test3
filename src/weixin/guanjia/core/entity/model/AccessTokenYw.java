package weixin.guanjia.core.entity.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.jeecgframework.core.common.entity.IdEntity;

@Entity
@Table(name = "weixin_accesstoken")
public class AccessTokenYw extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -366448287673000559L;
	private String access_token;
	private int expires_in;
	private Date addTime;

	@Column(name = "access_token")
	public String getAccess_token() {
		return this.access_token;
	}

	public void setAccess_token(String accessToken) {
		this.access_token = accessToken;
	}

	@Column(name = "expires_ib")
	public int getExpires_in() {
		return this.expires_in;
	}

	public void setExpires_in(int expiresIn) {
		this.expires_in = expiresIn;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "addtime")
	public Date getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}
}