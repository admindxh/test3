package weixin.guanjia.location.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.jeecgframework.core.common.entity.IdEntity;

@Entity
@Table(name = "weixin_location", schema = "")
public class LocationEntity extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -8938617010236791150L;
	private String openid;
	private String accountid;
	private String latitude;
	private String longitude;
	private String precision;
	private String nickname;
	private Date addtime;


	@Column(name = "OPENID", nullable = false, length = 40)
	public String getOpenid() {
		return this.openid;
	}

	public void setOpenid(String openid) {
		this.openid = openid;
	}

	@Column(name = "ACCOUNTID", nullable = false, length = 40)
	public String getAccountid() {
		return this.accountid;
	}

	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}

	@Column(name = "LATITUDE", nullable = true, length = 10)
	public String getLatitude() {
		return this.latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	@Column(name = "LONGITUDE", nullable = true, length = 10)
	public String getLongitude() {
		return this.longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	@Column(name = "PRECISIONWEIXIN", nullable = true, length = 10)
	public String getPrecision() {
		return this.precision;
	}

	public void setPrecision(String precision) {
		this.precision = precision;
	}

	@Column(name = "NICKNAME", nullable = true, length = 50)
	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Column(name = "ADDTIME", nullable = true)
	public Date getAddtime() {
		return this.addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
}