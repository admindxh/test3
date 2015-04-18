package weixin.bbs.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="weixin_bbs", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class WeixinBbsEntity
  implements Serializable
{
  private String id;
  private String name;
  private String nickName;
  private String accessAuth;
  private String postCheck;
  private String commentCheck;
  private Date createDate;
  private String createBy;
  private Date updateDate;
  private String updateBy;
  private String accountid;
  private String templateStyle;

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

  @Column(name="NAME", nullable=true, length=100)
  public String getName()
  {
    return this.name;
  }

  public void setName(String name)
  {
    this.name = name;
  }

  @Column(name="NICK_NAME", nullable=true, length=100)
  public String getNickName()
  {
    return this.nickName;
  }

  public void setNickName(String nickName)
  {
    this.nickName = nickName;
  }

  @Column(name="ACCESS_AUTH", nullable=true, length=32)
  public String getAccessAuth()
  {
    return this.accessAuth;
  }

  public void setAccessAuth(String accessAuth)
  {
    this.accessAuth = accessAuth;
  }

  @Column(name="POST_CHECK", nullable=true, length=32)
  public String getPostCheck()
  {
    return this.postCheck;
  }

  public void setPostCheck(String postCheck)
  {
    this.postCheck = postCheck;
  }

  @Column(name="COMMENT_CHECK", nullable=true, length=32)
  public String getCommentCheck()
  {
    return this.commentCheck;
  }

  public void setCommentCheck(String commentCheck)
  {
    this.commentCheck = commentCheck;
  }

  @Column(name="CREATE_DATE", nullable=true)
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

  @Column(name="UPDATE_DATE", nullable=true)
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

  @Column(name="ACCOUNTID", nullable=true, length=32)
  public String getAccountid()
  {
    return this.accountid;
  }

  public void setAccountid(String accountid)
  {
    this.accountid = accountid;
  }
  @Column(name="TEMPLATE_STYLE", nullable=true, length=50)
  public String getTemplateStyle() {
    return this.templateStyle;
  }

  public void setTemplateStyle(String templateStyle) {
    this.templateStyle = templateStyle;
  }
}