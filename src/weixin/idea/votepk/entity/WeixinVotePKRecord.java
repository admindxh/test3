package weixin.idea.votepk.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="WEIXIN_VOTEPK_RECORD", schema="")
public class WeixinVotePKRecord
{
  private String id;
  private String openid;
  private String nickname;
  private String voteopenid;
  private String votenickname;
  private String accountid;
  private Date votedate;
  private String votetype;
  private String subscribe;
  private String headimgurl;

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
  @Column(name="OPENID", nullable=true, length=50)
  public String getOpenid() {
    return this.openid;
  }
  public void setOpenid(String openid) {
    this.openid = openid;
  }
  @Column(name="VOTEOPENID", nullable=true, length=50)
  public String getVoteopenid() {
    return this.voteopenid;
  }
  public void setVoteopenid(String voteopenid) {
    this.voteopenid = voteopenid;
  }
  @Column(name="ACCOUNTID", nullable=true, length=50)
  public String getAccountid() {
    return this.accountid;
  }
  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }
  @Column(name="VOTEDATE", nullable=true, length=50)
  public Date getVotedate() {
    return this.votedate;
  }
  public void setVotedate(Date votedate) {
    this.votedate = votedate;
  }
  @Column(name="VOTETYPE", nullable=true, length=50)
  public String getVotetype() {
    return this.votetype;
  }
  public void setVotetype(String votetype) {
    this.votetype = votetype;
  }
  @Column(name="SUBSCIBE", nullable=true, length=50)
  public String getSubscribe() {
    return this.subscribe;
  }

  public void setSubscribe(String subscribe) {
    this.subscribe = subscribe;
  }
  @Column(name="NICKNAME", nullable=true, length=50)
  public String getNickname() {
    return this.nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }
  @Column(name="VOTENICKNAME", nullable=true, length=50)
  public String getVotenickname() {
    return this.votenickname;
  }
  public void setVotenickname(String votenickname) {
    this.votenickname = votenickname;
  }

  @Column(name="HEADIMGURL", nullable=true, length=500)
  public String getHeadimgurl() {
    return this.headimgurl;
  }

  public void setHeadimgurl(String headimgurl) {
    this.headimgurl = headimgurl;
  }
}