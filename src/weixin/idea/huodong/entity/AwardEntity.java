package weixin.idea.huodong.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.jeecgframework.core.common.entity.IdEntity;

/**
 * 奖品
 * <p>创建时间: Oct 13, 2014 11:31:57 AM</p>
 * @author <a href="mailto:hongdanping@163.com">hdp</a>
 * @version V1.0
 * @since V1.0
 */
@Entity
@Table(name = "weixin_award", schema = "")
@DynamicUpdate(true)
@DynamicInsert(true)
public class AwardEntity extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 5968572487841604436L;
	/**
	 * 奖品名称
	 */
	private String name;
	/**
	 * 所属用户
	 */
	private String accountId;

	@Column(name = "NAME", nullable = true, length = 200)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the accountId
	 */
	@Column(name="accountid")
	public String getAccountId() {
		return accountId;
	}

	/**
	 * @param accountId the accountId to set
	 */
	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}
	
}