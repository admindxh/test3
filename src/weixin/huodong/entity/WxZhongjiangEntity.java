package weixin.huodong.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.jeecgframework.core.common.entity.IdEntity;
import org.jeecgframework.poi.excel.annotation.Excel;

@Entity
@Table(name = "wx_zhongjiang", schema = "")
public class WxZhongjiangEntity extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -2242845881800463346L;
	private String createName;
	private Date createDate;
	private String updateName;
	private Date updateDate;

	@Excel(exportName = "社区平台")
	private Integer platformCode;

	@Excel(exportName = "平台账号")
	private String userAccount;

	@Excel(exportName = "活动ID")
	private String huoddongId;

	@Excel(exportName = "奖品名称")
	private String jpName;

	@Excel(exportName = "奖品代码")
	private String jpCode;

	@Excel(exportName = "奖品级别")
	private Integer jpLevel;

	@Excel(exportName = "兑奖状态")
	private Integer jpFlag;

	@Excel(exportName = "兑奖人姓名")
	private String userAnme;

	@Excel(exportName = "联系方式")
	private String userTelphone;

	@Excel(exportName = "收件地址")
	private String userAddress;

	@Excel(exportName = "备注")
	private String content;

	@Excel(exportName = "身份证正面")
	private String idcardAFile;

	@Excel(exportName = "身份证反面")
	private String idcardBFile;

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

	@Column(name = "PLATFORM_CODE", nullable = true, length = 11)
	public Integer getPlatformCode() {
		return this.platformCode;
	}

	public void setPlatformCode(Integer platformCode) {
		this.platformCode = platformCode;
	}

	@Column(name = "USER_ACCOUNT", nullable = true, length = 32)
	public String getUserAccount() {
		return this.userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	@Column(name = "HUODDONG_ID", nullable = true, length = 32)
	public String getHuoddongId() {
		return this.huoddongId;
	}

	public void setHuoddongId(String huoddongId) {
		this.huoddongId = huoddongId;
	}

	@Column(name = "JP_NAME", nullable = true, length = 100)
	public String getJpName() {
		return this.jpName;
	}

	public void setJpName(String jpName) {
		this.jpName = jpName;
	}

	@Column(name = "JP_CODE", nullable = true, length = 100)
	public String getJpCode() {
		return this.jpCode;
	}

	public void setJpCode(String jpCode) {
		this.jpCode = jpCode;
	}

	@Column(name = "JP_LEVEL", nullable = true, length = 2)
	public Integer getJpLevel() {
		return this.jpLevel;
	}

	public void setJpLevel(Integer jpLevel) {
		this.jpLevel = jpLevel;
	}

	@Column(name = "JP_FLAG", nullable = true, length = 2)
	public Integer getJpFlag() {
		return this.jpFlag;
	}

	public void setJpFlag(Integer jpFlag) {
		this.jpFlag = jpFlag;
	}

	@Column(name = "USER_ANME", nullable = true, length = 50)
	public String getUserAnme() {
		return this.userAnme;
	}

	public void setUserAnme(String userAnme) {
		this.userAnme = userAnme;
	}

	@Column(name = "USER_TELPHONE", nullable = true, length = 100)
	public String getUserTelphone() {
		return this.userTelphone;
	}

	public void setUserTelphone(String userTelphone) {
		this.userTelphone = userTelphone;
	}

	@Column(name = "USER_ADDRESS", nullable = true, length = 500)
	public String getUserAddress() {
		return this.userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	@Column(name = "CONTENT", nullable = true, length = 500)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "IDCARD_A_FILE", nullable = true, length = 500)
	public String getIdcardAFile() {
		return this.idcardAFile;
	}

	public void setIdcardAFile(String idcardAFile) {
		this.idcardAFile = idcardAFile;
	}

	@Column(name = "IDCARD_B_FILE", nullable = true, length = 500)
	public String getIdcardBFile() {
		return this.idcardBFile;
	}

	public void setIdcardBFile(String idcardBFile) {
		this.idcardBFile = idcardBFile;
	}
}