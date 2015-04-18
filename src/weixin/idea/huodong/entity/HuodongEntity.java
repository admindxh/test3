package weixin.idea.huodong.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.jeecgframework.core.common.entity.IdEntity;

/**
 * 抽奖活动
 * <p>创建时间: Oct 13, 2014 5:14:56 PM</p>
 * @author <a href="mailto:hongdanping@163.com">hdp</a>
 * @version V1.0
 * @since V1.0
 */
@Entity
@Table(name = "weixin_huodong", schema = "")
public class HuodongEntity extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 5172513578375815428L;
	/**
	 * 发布状态，0 未发布， 1 已发布 ，2 已经停用
	 */
	private String hdCode;
	/**
	 * 活动名称
	 */
	private String title;
	/**
	 * 活动描述
	 */
	private String description;
	/**
	 * 活动开始时间
	 */
	private Date starttime;
	/**
	 * 活动结束时间
	 */
	private Date endtime;
	/**
	 * 活动类型
	 */
	private String type;
	/**
	 * 概率
	 */
	private String gl;
	/**
	 * 抽奖次数
	 */
	private String count;
	/**
	 * 对应的微信用户
	 */
	private String accountid;
	/**
	 * 活动奖项列表
	 */
	private List<HuoDongAwardEntity> awardslist = new ArrayList<HuoDongAwardEntity>();
	
	private List<WeixinAwardsAwardEntity> awardlist = new ArrayList<WeixinAwardsAwardEntity>();

	public String getAccountid() {
		return this.accountid;
	}

	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}



	@Column(name = "TITLE", nullable = true, length = 400)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "DESCRIPTION", nullable = true, length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "STARTTIME", nullable = true)
	public Date getStarttime() {
		return this.starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	@Column(name = "ENDTIME", nullable = true)
	public Date getEndtime() {
		return this.endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	@Column(name = "TYPE", nullable = true, length = 100)
	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "gl", nullable = true, length = 100)
	public String getGl() {
		return this.gl;
	}

	public void setGl(String gl) {
		this.gl = gl;
	}

	@Column(name = "count", nullable = true, length = 11)
	public String getCount() {
		return this.count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	@Column(name = "hd_code", nullable = true, length = 400)
	public String getHdCode() {
		return this.hdCode;
	}

	public void setHdCode(String hdCode) {
		this.hdCode = hdCode;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy="huodongmodel", cascade=CascadeType.REMOVE)
	public List<HuoDongAwardEntity> getAwardslist() {
		return this.awardslist;
	}

	public void setAwardslist(List<HuoDongAwardEntity> awardslist) {
		this.awardslist = awardslist;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy="huodongmodel", cascade=CascadeType.REMOVE)
	public List<WeixinAwardsAwardEntity> getAwardlist() {
		return this.awardlist;
	}

	public void setAwardlist(List<WeixinAwardsAwardEntity> awardlist) {
		this.awardlist = awardlist;
	}
}