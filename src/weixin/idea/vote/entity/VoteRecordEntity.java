package weixin.idea.vote.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="weixin_vote_record")
public class VoteRecordEntity
{
  private String id;
  private String accountid;
  private String openid;
  private String optionid;
  private String voteid;
  private String userid;

  @Id
  @GeneratedValue(generator="paymentableGenerator")
  @GenericGenerator(name="paymentableGenerator", strategy="uuid")
  public String getId()
  {
    return this.id;
  }
  public void setId(String id) {
    this.id = id;
  }
  @Column(name="accountid", nullable=true, length=50)
  public String getAccountid() {
    return this.accountid;
  }
  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }
  @Column(name="openid", nullable=true, length=50)
  public String getOpenid() {
    return this.openid;
  }
  public void setOpenid(String openid) {
    this.openid = openid;
  }
  @Column(name="optionid", nullable=true, length=50)
  public String getOptionid() {
    return this.optionid;
  }
  public void setOptionid(String optionid) {
    this.optionid = optionid;
  }
  @Column(name="voteid", nullable=true, length=50)
  public String getVoteid() {
    return this.voteid;
  }
  public void setVoteid(String voteid) {
    this.voteid = voteid;
  }
  @Column(name="userid", nullable=true, length=50)
  public String getUserid() {
    return this.userid;
  }
  public void setUserid(String userid) {
    this.userid = userid;
  }
}