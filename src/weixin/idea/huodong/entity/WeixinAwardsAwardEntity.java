package weixin.idea.huodong.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.jeecgframework.core.common.entity.IdEntity;

@Entity
@Table(name = "weixin_awards_award", schema = "")
public class WeixinAwardsAwardEntity extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -8283336766300938206L;
	/**
	 * 所属用户
	 */
	private String accountid;
	/**
	 * 奖项
	 */
	private AwardsLevelEntity awardslevle;
	/**
	 * 所属活动
	 */
	private HuodongEntity huodongmodel;
	/**
	 * 奖品
	 */
	private AwardEntity awardmodel;
	/**
	 * 活动奖项
	 */
	private HuoDongAwardEntity huoDongAwardEntity; 

	@Column(name = "ACCOUNTID", nullable = true, length = 36)
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
	@JoinColumn(name = "huodong_id")
	public HuodongEntity getHuodongmodel() {
		return this.huodongmodel;
	}

	public void setHuodongmodel(HuodongEntity huodongmodel) {
		this.huodongmodel = huodongmodel;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "award_id")
	public AwardEntity getAwardmodel() {
		return this.awardmodel;
	}

	public void setAwardmodel(AwardEntity awardmodel) {
		this.awardmodel = awardmodel;
	}

	/**
	 * @return the huoDongAwardEntity
	 */
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "huoDongAwardEntity_id")
	public HuoDongAwardEntity getHuoDongAwardEntity() {
		return huoDongAwardEntity;
	}

	/**
	 * @param huoDongAwardEntity the huoDongAwardEntity to set
	 */
	public void setHuoDongAwardEntity(HuoDongAwardEntity huoDongAwardEntity) {
		this.huoDongAwardEntity = huoDongAwardEntity;
	}
	
}