package weixin.guanjia.message.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.jeecgframework.core.common.entity.IdEntity;

@Entity
@Table(name = "weixin_receiveevent")
public class ReceiveEvent extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 5296211973331005931L;
	private String toUserName;
	private String FromUserName;
	private String CreateTime;
	private String MsgType;
	
	private String Event;
	private String EventKey;
	private String Ticket;
	private String Latitude;
	
	private String Longitude;
	private String Precision;
	private String accountId;
	/**
	 * 扫描到信息
	 */
	private String ScanCodeInfo;
	/**
	 * 扫描类型，一般是qrcode
	 */
	private String ScanType;
	/**
	 * 扫描结果，即二维码对应的字符串信息
	 */
	private String ScanResult;
	/**
	 * 发送图片信息
	 */
	private String SendPicsInfo;
	/**
	 * 发送图片数量
	 */
	private String Count;
	/**
	 * 发送图片MD5列表，用英文,隔开
	 */
	private String PicList;
	/**
	 * 发送的位置信息
	 */
	private String SendLocationInfo;
	
	private String Location_X;
	
	private String Location_Y;
	
	private String Scale;
	
	private String Label;
	
	private String Poiname;
	/**
	 * 接收到事件的事件
	 */
	private Date receiveTime;

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


	@Column(name = "createtime")
	public String getCreateTime() {
		return this.CreateTime;
	}

	public void setCreateTime(String CreateTime) {
		this.CreateTime = CreateTime;
	}


	/**
	 * @return the event
	 */
	@Column(name = "events")
	public String getEvent() {
		return Event;
	}

	/**
	 * @param event the event to set
	 */
	public void setEvent(String event) {
		Event = event;
	}

	/**
	 * @return the eventKey
	 */
	@Column(name = "eventkey")
	public String getEventKey() {
		return EventKey;
	}

	/**
	 * @param eventKey the eventKey to set
	 */
	public void setEventKey(String eventKey) {
		EventKey = eventKey;
	}

	/**
	 * @return the ticket
	 */
	@Column(name = "ticket")
	public String getTicket() {
		return Ticket;
	}

	/**
	 * @param ticket the ticket to set
	 */
	public void setTicket(String ticket) {
		Ticket = ticket;
	}

	/**
	 * @return the latitude
	 */
	@Column(name = "latitude")
	public String getLatitude() {
		return Latitude;
	}

	/**
	 * @param latitude the latitude to set
	 */
	public void setLatitude(String latitude) {
		Latitude = latitude;
	}

	/**
	 * @return the longitude
	 */
	@Column(name = "longitude")
	public String getLongitude() {
		return Longitude;
	}

	/**
	 * @param longitude the longitude to set
	 */
	public void setLongitude(String longitude) {
		Longitude = longitude;
	}

	/**
	 * @return the precision
	 */
	@Column(name = "precisions")
	public String getPrecision() {
		return Precision;
	}

	/**
	 * @param precision the precision to set
	 */
	public void setPrecision(String precision) {
		Precision = precision;
	}

	/**
	 * @return the receiveTime
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "receivetime")
	public Date getReceiveTime() {
		return receiveTime;
	}

	/**
	 * @param receiveTime the receiveTime to set
	 */
	public void setReceiveTime(Date receiveTime) {
		this.receiveTime = receiveTime;
	}

	@Column(name = "accountid")
	public String getAccountId() {
		return this.accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}
}