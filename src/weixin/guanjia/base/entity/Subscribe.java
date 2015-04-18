package weixin.guanjia.base.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import org.jeecgframework.core.common.entity.IdEntity;

@Entity
@Table(name = "weixin_subscribe")
public class Subscribe extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1362682107490900332L;
	private String templateName;
	private String templateId;
	private String msgType;
	private String addTime;
	private String accountid;

	public String getAccountid() {
		return this.accountid;
	}

	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}

	public String getTemplateName() {
		return this.templateName;
	}

	public void setTemplateName(String templateName) {
		this.templateName = templateName;
	}

	public String getTemplateId() {
		return this.templateId;
	}

	public void setTemplateId(String templateId) {
		this.templateId = templateId;
	}

	public void setMsgType(String msgType) {
		this.msgType = msgType;
	}

	public String getMsgType() {
		return this.msgType;
	}

	public String getAddTime() {
		return this.addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}
}