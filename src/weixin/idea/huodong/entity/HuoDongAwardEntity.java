package weixin.idea.huodong.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.jeecgframework.core.common.entity.IdEntity;

/**
 * 每个活动的奖项
 * <p>创建时间: Oct 13, 2014 11:32:53 AM</p>
 * @author <a href="mailto:hongdanping@163.com">hdp</a>
 * @version V1.0
 * @since V1.0
 */
@Entity
@Table(name = "weixin_huodong_awards", schema = "")
@DynamicUpdate(true)
@DynamicInsert(true)
public class HuoDongAwardEntity extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 2432261237012252982L;
	/**
	 * 奖项等级
	 */
	private AwardsLevelEntity awardslevle;
	/**
	 * 所属活动
	 */
	private HuodongEntity huodongmodel;
	/**
	 * 奖项对应的奖品列表
	 */
	private List<WeixinAwardsAwardEntity> awardlist = new ArrayList<WeixinAwardsAwardEntity>();
	/**
	 * 奖项名额
	 */
	private Integer amount;
	private String accountid;
//	private String[] awardstr;

	@Column(name = "amount", nullable = true, length = 10)
	public Integer getAmount() {
		return this.amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	@Column(name = "accountid", nullable = true, length = 36)
	public String getAccountid() {
		return this.accountid;
	}

	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "awards_level_id")
	public AwardsLevelEntity getAwardslevle() {
		return this.awardslevle;
	}

	public void setAwardslevle(AwardsLevelEntity awardslevle) {
		this.awardslevle = awardslevle;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "hd_id")
	public HuodongEntity getHuodongmodel() {
		return this.huodongmodel;
	}

	public void setHuodongmodel(HuodongEntity huodongmodel) {
		this.huodongmodel = huodongmodel;
	}

	@OneToMany(fetch = FetchType.LAZY,mappedBy="huoDongAwardEntity", cascade=CascadeType.REMOVE)
	public List<WeixinAwardsAwardEntity> getAwardlist() {
		return this.awardlist;
	}

	public void setAwardlist(List<WeixinAwardsAwardEntity> awardlist) {
		this.awardlist = awardlist;
	}
}