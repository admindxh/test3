package weixin.wall.entity;

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
@Table(name="weixin_wall_message", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class WeixinWallMessageEntity
  implements Serializable
{
  private String id;
  private String openid;
  private String accountid;
  private String content;
  private String nickname;
  private String sex;
  private String headimgurl;
  private Date createtime;
  private String userid;
  private String status;
  private String wallid;

  @Id
  @GeneratedValue(generator="paymentableGenerator")
  @GenericGenerator(name="paymentableGenerator", strategy="uuid")
  @Column(name="ID", nullable=false, length=36)
  public String getId()
  {
    return this.id;
  }

  public void setId(String id)
  {
    this.id = id;
  }

  @Column(name="OPENID", nullable=true, length=200)
  public String getOpenid()
  {
    return this.openid;
  }

  public void setOpenid(String openid)
  {
    this.openid = openid;
  }

  @Column(name="ACCOUNTID", nullable=true, length=36)
  public String getAccountid()
  {
    return this.accountid;
  }

  public void setAccountid(String accountid)
  {
    this.accountid = accountid;
  }

  @Column(name="CONTENT", nullable=true, length=1000)
  public String getContent()
  {
    return this.content;
  }

  public void setContent(String content)
  {
    this.content = content;
  }

  @Column(name="NICKNAME", nullable=true, length=200)
  public String getNickname()
  {
    return this.nickname;
  }

  public void setNickname(String nickname)
  {
    this.nickname = nickname;
  }

  @Column(name="SEX", nullable=true, length=1)
  public String getSex()
  {
    return this.sex;
  }

  public void setSex(String sex)
  {
    this.sex = sex;
  }

  @Column(name="HEADIMGURL", nullable=true, length=1000)
  public String getHeadimgurl()
  {
    return this.headimgurl;
  }

  public void setHeadimgurl(String headimgurl)
  {
    this.headimgurl = headimgurl;
  }

  @Column(name="CREATETIME", nullable=true)
  public Date getCreatetime()
  {
    return this.createtime;
  }

  public void setCreatetime(Date createtime)
  {
    this.createtime = createtime;
  }

  @Column(name="USERID", nullable=true, length=36)
  public String getUserid()
  {
    return this.userid;
  }

  public void setUserid(String userid)
  {
    this.userid = userid;
  }

  @Column(name="status", length=1)
  public String getStatus() {
    return this.status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  @Column(name="wallid", length=36)
  public String getWallid() {
    return this.wallid;
  }

  public void setWallid(String wallid) {
    this.wallid = wallid;
  }
}