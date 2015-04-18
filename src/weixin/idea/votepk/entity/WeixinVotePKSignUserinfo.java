package weixin.idea.votepk.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="WEIXIN_VOTEPK_SIGNUSERINFO", schema="")
public class WeixinVotePKSignUserinfo
{
  private String id;
  private String openid;
  private String accountid;
  private String realname;
  private String tel;
  private String email;
  private Integer votecount;
  private Date signdate;
  private String qrcodeurl;
  private Integer sceneid;

  @Id
  @GeneratedValue(generator="paymentableGenerator")
  @GenericGenerator(name="paymentableGenerator", strategy="uuid")
  @Column(name="ID", nullable=false, length=36)
  public String getId()
  {
    return this.id;
  }
  public void setId(String id) {
    this.id = id;
  }
  @Column(name="OPENID", nullable=true, length=200)
  public String getOpenid() {
    return this.openid;
  }
  public void setOpenid(String openid) {
    this.openid = openid;
  }
  @Column(name="ACCOUNTID", nullable=true, length=50)
  public String getAccountid() {
    return this.accountid;
  }
  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }
  @Column(name="VOTECOUNT", nullable=true, length=10)
  public Integer getVotecount() {
    return this.votecount;
  }
  public void setVotecount(Integer votecount) {
    this.votecount = votecount;
  }
  @Column(name="SIGNDATE", nullable=true, length=50)
  public Date getSigndate() {
    return this.signdate;
  }
  public void setSigndate(Date signdate) {
    this.signdate = signdate;
  }
  @Column(name="QRCODEURL", nullable=true, length=500)
  public String getQrcodeurl() {
    return this.qrcodeurl;
  }
  public void setQrcodeurl(String qrcodeurl) {
    this.qrcodeurl = qrcodeurl;
  }
  @Column(name="REALNAME", nullable=true, length=50)
  public String getRealname() {
    return this.realname;
  }
  public void setRealname(String realname) {
    this.realname = realname;
  }
  @Column(name="TEL", nullable=true, length=50)
  public String getTel() {
    return this.tel;
  }
  public void setTel(String tel) {
    this.tel = tel;
  }
  @Column(name="EMAIL", nullable=true, length=50)
  public String getEmail() {
    return this.email;
  }

  public void setEmail(String email) {
    this.email = email;
  }
  @Column(name="SCENEID", nullable=true, length=10)
  public Integer getSceneid() {
    return this.sceneid;
  }

  public void setSceneid(Integer sceneid) {
    this.sceneid = sceneid;
  }
}