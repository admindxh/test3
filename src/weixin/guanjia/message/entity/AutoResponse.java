package weixin.guanjia.message.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import org.jeecgframework.core.common.entity.IdEntity;

@Entity
@Table(name = "weixin_autoresponse")
public class AutoResponse extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 6751923835779127609L;
	private String keyWord;
	private String resContent;
	private String templateName;
	private String addTime;
	private String msgType;
	private String accountId;

	@Column(name = "accountid", length = 100)
	public String getAccountId() {
		return this.accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}

	@Column(name = "keyword")
	public String getKeyWord() {
		return this.keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	@Column(name = "rescontent")
	public String getResContent() {
		return this.resContent;
	}

	public void setResContent(String resContent) {
		this.resContent = resContent;
	}

	@Column(name = "addtime")
	public String getAddTime() {
		return this.addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

	@Column(name = "msgtype")
	public String getMsgType() {
		return this.msgType;
	}

	public void setMsgType(String msgType) {
		this.msgType = msgType;
	}

	@Column(name = "templatename")
	public String getTemplateName() {
		return this.templateName;
	}

	public void setTemplateName(String templateName) {
		this.templateName = templateName;
	}
}