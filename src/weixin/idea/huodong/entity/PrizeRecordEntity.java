package weixin.idea.huodong.entity;

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
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="weixin_prizerecord", schema="")
public class PrizeRecordEntity
  implements Serializable
{
  private String id;
  private String hdid;
  private String username;
  private String address;
  private String mobile;
  private AwardsLevelEntity prize;
  private Date addtime;
  private String openId;
  private String accountid;
  private String identityId;
  private String awardsCode;
  private String systemType;

  public String getAccountid()
  {
    return this.accountid;
  }

  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }

  @Id
  @GeneratedValue(generator="paymentableGenerator")
  @GenericGenerator(name="paymentableGenerator", strategy="uuid")
  @Column(name="ID", nullable=false, length=100)
  public String getId()
  {
    return this.id;
  }

  public void setId(String id)
  {
    this.id = id;
  }

  @Column(name="HDID", nullable=true, length=100)
  public String getHdid()
  {
    return this.hdid;
  }

  public void setHdid(String hdid)
  {
    this.hdid = hdid;
  }

  @Column(name="MOBILE", nullable=true, length=100)
  public String getMobile()
  {
    return this.mobile;
  }

  public void setMobile(String mobile)
  {
    this.mobile = mobile;
  }

  @ManyToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="PRIZE")
  public AwardsLevelEntity getPrize()
  {
    return this.prize;
  }

  public void setPrize(AwardsLevelEntity prize) {
    this.prize = prize;
  }

  @Column(name="ADDTIME", nullable=true)
  public Date getAddtime()
  {
    return this.addtime;
  }

  public void setAddtime(Date addtime)
  {
    this.addtime = addtime;
  }
  @Column(name="openid", nullable=true)
  public String getOpenId() {
    return this.openId;
  }

  public void setOpenId(String openId) {
    this.openId = openId;
  }

  @Column(name="username", nullable=true)
  public String getUsername() {
    return this.username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  @Column(name="address", nullable=true)
  public String getAddress() {
    return this.address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  @Column(name="identity_id", nullable=true)
  public String getIdentityId() {
    return this.identityId;
  }

  public void setIdentityId(String identityId) {
    this.identityId = identityId;
  }

  @Column(name="awards_code", nullable=true)
  public String getAwardsCode() {
    return this.awardsCode;
  }

  public void setAwardsCode(String awardsCode) {
    this.awardsCode = awardsCode;
  }

  @Column(name="system_type", nullable=true)
  public String getSystemType() {
    return this.systemType;
  }

  public void setSystemType(String systemType) {
    this.systemType = systemType;
  }
}