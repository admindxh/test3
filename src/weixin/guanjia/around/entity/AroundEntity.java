package weixin.guanjia.around.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;
import org.jeecgframework.core.common.entity.IdEntity;

@Entity
@Table(name = "weixin_around", schema = "")
@DynamicUpdate(true)
@DynamicInsert(true)
public class AroundEntity extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 5825672650081776559L;
	private String id;
	private String keyword;
	private String area;
	private String radius;
	private Date addtime;
	private String accountid;
	private String iswork;

	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name = "ID", nullable = false, length = 40)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "KEYWORD", nullable = true, length = 100)
	public String getKeyword() {
		return this.keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Column(name = "AREA", nullable = true, length = 200)
	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	@Column(name = "RADIUS", nullable = true, length = 100)
	public String getRadius() {
		return this.radius;
	}

	public void setRadius(String radius) {
		this.radius = radius;
	}

	@Column(name = "ADDTIME", nullable = true)
	public Date getAddtime() {
		return this.addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	@Column(name = "accountid")
	public String getAccountid() {
		return this.accountid;
	}

	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}

	@Column(name = "iswork")
	public String getIswork() {
		return this.iswork;
	}

	public void setIswork(String iswork) {
		this.iswork = iswork;
	}
}