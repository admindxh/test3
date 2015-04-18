package weixin.cms.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="WEIXIN_LEAVE_MSG_REPLY", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class WeixinLeaveMsgReplyEntity
  implements Serializable
{
  private String id;
  private String msgId;
  private String content;
  private Date createDate;
  private String createBy;
  private Date updateDate;
  private String updateBy;
  private WeixinLeaveMsgEntity leaveMsg;

  @Id
  @GeneratedValue(generator="paymentableGenerator")
  @GenericGenerator(name="paymentableGenerator", strategy="uuid")
  @Column(name="ID", nullable=false, length=32)
  public String getId()
  {
    return this.id;
  }

  public void setId(String id)
  {
    this.id = id;
  }

  @Column(name="MSG_ID", nullable=false, length=32)
  public String getMsgId()
  {
    return this.msgId;
  }

  public void setMsgId(String msgId)
  {
    this.msgId = msgId;
  }

  @Column(name="CONTENT", nullable=true, length=200)
  public String getContent()
  {
    return this.content;
  }

  public void setContent(String content)
  {
    this.content = content;
  }

  @Column(name="CREATE_DATE")
  public Date getCreateDate()
  {
    return this.createDate;
  }

  public void setCreateDate(Date createDate)
  {
    this.createDate = createDate;
  }

  @Column(name="CREATE_BY", nullable=true, length=32)
  public String getCreateBy()
  {
    return this.createBy;
  }

  public void setCreateBy(String createBy)
  {
    this.createBy = createBy;
  }

  @Column(name="UPDATE_DATE")
  public Date getUpdateDate()
  {
    return this.updateDate;
  }

  public void setUpdateDate(Date updateDate)
  {
    this.updateDate = updateDate;
  }

  @Column(name="UPDATE_BY", nullable=true, length=32)
  public String getUpdateBy()
  {
    return this.updateBy;
  }

  public void setUpdateBy(String updateBy)
  {
    this.updateBy = updateBy;
  }
  @ManyToOne(cascade={javax.persistence.CascadeType.PERSIST, javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.REFRESH}, fetch=FetchType.LAZY)
  @JoinColumn(name="msg_id")
  public WeixinLeaveMsgEntity getLeaveMsg() { return this.leaveMsg; }

  public void setLeaveMsg(WeixinLeaveMsgEntity leaveMsg)
  {
    this.leaveMsg = leaveMsg;
  }
}