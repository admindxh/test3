package weixin.cms.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="weixin_leave_msg", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class WeixinLeaveMsgEntity
  implements Serializable
{
  private String id;
  private String nickName;
  private String content;
  private String accountid;
  private Date createDate;
  private String createBy;
  private Date updateDate;
  private String updateBy;
  private List<WeixinLeaveMsgReplyEntity> reply;

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

  @Column(name="NICK_NAME", nullable=true, length=32)
  public String getNickName()
  {
    return this.nickName;
  }

  public void setNickName(String nickName)
  {
    this.nickName = nickName;
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
  @Column(name="ACCOUNTID", nullable=true, length=100)
  public String getAccountid() {
    return this.accountid;
  }

  public void setAccountid(String accountid)
  {
    this.accountid = accountid;
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
  @OneToMany(fetch=FetchType.LAZY, mappedBy="leaveMsg", cascade={javax.persistence.CascadeType.REMOVE})
  public List<WeixinLeaveMsgReplyEntity> getReply() {
    return this.reply;
  }

  public void setReply(List<WeixinLeaveMsgReplyEntity> reply) {
    this.reply = reply;
  }
}