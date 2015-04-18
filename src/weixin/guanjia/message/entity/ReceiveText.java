package weixin.guanjia.message.entity;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import org.jeecgframework.core.common.entity.IdEntity;

@Entity
@Table(name = "weixin_receivetext")
public class ReceiveText extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 5296211973331005931L;
	private String toUserName;
	private String FromUserName;
	private Timestamp createTime;
	private String MsgType;
	private String MsgId;
	private String Content;
	private String response;
	private String rescontent;
	private String nickName;
	private String accountId;

	@Column(name = "tousername")
	public String getToUserName() {
		return this.toUserName;
	}

	public void setToUserName(String toUserName) {
		this.toUserName = toUserName;
	}

	@Column(name = "fromusername")
	public String getFromUserName() {
		return this.FromUserName;
	}

	public void setFromUserName(String fromUserName) {
		this.FromUserName = fromUserName;
	}

	@Column(name = "msgtype")
	public String getMsgType() {
		return this.MsgType;
	}

	public void setMsgType(String msgType) {
		this.MsgType = msgType;
	}

	@Column(name = "msgid")
	public String getMsgId() {
		return this.MsgId;
	}

	public void setMsgId(String msgId) {
		this.MsgId = msgId;
	}

	@Column(name = "content")
	public String getContent() {
		return this.Content;
	}

	public void setContent(String content) {
		this.Content = content;
	}

	@Column(name = "response")
	public String getResponse() {
		return this.response;
	}

	public void setResponse(String response) {
		this.response = response;
	}

	@Column(name = "rescontent")
	public String getRescontent() {
		return this.rescontent;
	}

	public void setRescontent(String rescontent) {
		this.rescontent = rescontent;
	}

	@Column(name = "createtime")
	public Timestamp getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	@Column(name = "nickname")
	public String getNickName() {
		return this.nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	@Column(name = "accountid")
	public String getAccountId() {
		return this.accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}
}