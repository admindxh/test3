package weixin.huodong.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.jeecgframework.core.common.entity.IdEntity;
import org.jeecgframework.poi.excel.annotation.Excel;

@Entity
@Table(name = "wx_huodong", schema = "")
public class WxHuodongEntity extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 5296740839100728882L;
	private String createName;
	private Date createDate;
	private String updateName;
	private Date updateDate;

	@Excel(exportName = "活动名称")
	private String hdName;

	@Excel(exportName = "活动说明")
	private String hdCaption;

	@Excel(exportName = "活动状态")
	private Integer hdStatus;


	@Column(name = "CREATE_NAME", nullable = true, length = 50)
	public String getCreateName() {
		return this.createName;
	}

	public void setCreateName(String createName) {
		this.createName = createName;
	}

	@Column(name = "CREATE_DATE", nullable = true, length = 20)
	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Column(name = "UPDATE_NAME", nullable = true, length = 50)
	public String getUpdateName() {
		return this.updateName;
	}

	public void setUpdateName(String updateName) {
		this.updateName = updateName;
	}

	@Column(name = "UPDATE_DATE", nullable = true, length = 20)
	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Column(name = "HD_NAME", nullable = true, length = 100)
	public String getHdName() {
		return this.hdName;
	}

	public void setHdName(String hdName) {
		this.hdName = hdName;
	}

	@Column(name = "HD_CAPTION", nullable = true, length = 1000)
	public String getHdCaption() {
		return this.hdCaption;
	}

	public void setHdCaption(String hdCaption) {
		this.hdCaption = hdCaption;
	}

	@Column(name = "HD_STATUS", nullable = true, length = 32)
	public Integer getHdStatus() {
		return this.hdStatus;
	}

	public void setHdStatus(Integer hdStatus) {
		this.hdStatus = hdStatus;
	}
}