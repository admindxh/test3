package weixin.idea.huodong.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.jeecgframework.core.common.entity.IdEntity;

/**
 * 奖项,一等奖，二等奖之类的
 * <p>创建时间: Oct 13, 2014 11:28:32 AM</p>
 * @author <a href="mailto:hongdanping@163.com">hdp</a>
 * @version V1.0
 * @since V1.0
 */
@Entity
@Table(name = "weixin_awards_level", schema = "")
public class AwardsLevelEntity extends IdEntity{
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -4298874812835377223L;
	/**
	 * 奖项名称
	 */
	private String awardsName;
	/**
	 * 奖项对应的用户
	 */
	private String accountid;


	@Column(name = "AWARDS_NAME", nullable = true, length = 200)
	public String getAwardsName() {
		return this.awardsName;
	}

	public void setAwardsName(String awardsName) {
		this.awardsName = awardsName;
	}

	@Column(name = "ACCOUNTID", nullable = true, length = 36)
	public String getAccountid() {
		return this.accountid;
	}

	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}
}