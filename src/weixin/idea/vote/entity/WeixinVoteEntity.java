package weixin.idea.vote.entity;

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
import org.hibernate.annotations.GenericGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

@Entity
@Table(name="weixin_vote", schema="")
public class WeixinVoteEntity
  implements Serializable
{
  private String id;
  private String createName;
  private Date createDate;
  private String updateName;
  private Date updateDate;

  @Excel(exportName="投票标题")
  private String voteTitle;

  @Excel(exportName="投票人数")
  private Integer voteCount;

  @Excel(exportName="投票描述")
  private String voteDescription;

  @Excel(exportName="积分")
  private Integer integral;
  private String accountid;
  private String statement;
  private List<WeixinVoteOptionEntity> weixinVoteOptions;

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
  @OneToMany(fetch=FetchType.LAZY, mappedBy="weixinVote")
  public List<WeixinVoteOptionEntity> getWeixinVoteOptions() {
    return this.weixinVoteOptions;
  }

  public void setWeixinVoteOptions(List<WeixinVoteOptionEntity> weixinVoteOptions)
  {
    this.weixinVoteOptions = weixinVoteOptions;
  }

  @Column(name="CREATE_NAME", nullable=true, length=50)
  public String getCreateName()
  {
    return this.createName;
  }

  public void setCreateName(String createName)
  {
    this.createName = createName;
  }

  @Column(name="CREATE_DATE", nullable=true, length=20)
  public Date getCreateDate()
  {
    return this.createDate;
  }

  public void setCreateDate(Date createDate)
  {
    this.createDate = createDate;
  }

  @Column(name="UPDATE_NAME", nullable=true, length=50)
  public String getUpdateName()
  {
    return this.updateName;
  }

  public void setUpdateName(String updateName)
  {
    this.updateName = updateName;
  }

  @Column(name="UPDATE_DATE", nullable=true, length=20)
  public Date getUpdateDate()
  {
    return this.updateDate;
  }

  public void setUpdateDate(Date updateDate)
  {
    this.updateDate = updateDate;
  }

  @Column(name="VOTE_TITLE", nullable=true, length=200)
  public String getVoteTitle()
  {
    return this.voteTitle;
  }

  public void setVoteTitle(String voteTitle)
  {
    this.voteTitle = voteTitle;
  }

  @Column(name="VOTE_COUNT", nullable=true, length=11)
  public Integer getVoteCount()
  {
    return this.voteCount;
  }

  public void setVoteCount(Integer voteCount)
  {
    this.voteCount = voteCount;
  }

  @Column(name="VOTE_DESCRIPTION", nullable=true, length=200)
  public String getVoteDescription()
  {
    return this.voteDescription;
  }

  public void setVoteDescription(String voteDescription)
  {
    this.voteDescription = voteDescription;
  }

  @Column(name="INTEGRAL", nullable=true, length=11)
  public Integer getIntegral()
  {
    return this.integral;
  }

  public void setIntegral(Integer integral)
  {
    this.integral = integral;
  }

  @Column(name="ACCOUNTID", nullable=true, length=50)
  public String getAccountid() {
    return this.accountid;
  }

  public void setAccountid(String accountid)
  {
    this.accountid = accountid;
  }
  @Column(name="STATEMENT", nullable=true, length=50)
  public void setStatement(String statement) {
    this.statement = statement;
  }
  public String getStatement() {
    return this.statement;
  }
}