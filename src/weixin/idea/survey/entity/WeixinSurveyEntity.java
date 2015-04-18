package weixin.idea.survey.entity;

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

@Entity
@Table(name="weixin_survey", schema="")
public class WeixinSurveyEntity
  implements Serializable
{
  private String id;
  private String createName;
  private Date createDate;
  private String updateName;
  private Date updateDate;
  private String surveyTitle;
  private Integer surveyCount;
  private String surveyDescription;
  private Integer integral;
  private String surveyType;
  private String accountid;
  private String statement;
  private String mainId;
  private Integer seq;
  private List<WeixinSurveyOptionEntity> weixinSurveyOptions;

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

  @OneToMany(fetch=FetchType.LAZY, mappedBy="weixinSurvey")
  public List<WeixinSurveyOptionEntity> getWeixinSurveyOptions() {
    return this.weixinSurveyOptions;
  }

  public void setWeixinSurveyOptions(List<WeixinSurveyOptionEntity> weixinSurveyOptions)
  {
    this.weixinSurveyOptions = weixinSurveyOptions;
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

  @Column(name="SURVEY_TITLE", nullable=true, length=200)
  public String getSurveyTitle()
  {
    return this.surveyTitle;
  }

  public void setSurveyTitle(String surveyTitle)
  {
    this.surveyTitle = surveyTitle;
  }

  @Column(name="SURVEY_COUNT", nullable=true, length=11)
  public Integer getSurveyCount()
  {
    return this.surveyCount;
  }

  public void setSurveyCount(Integer surveyCount)
  {
    this.surveyCount = surveyCount;
  }

  @Column(name="SURVEY_DESCRIPTION", nullable=true, length=200)
  public String getSurveyDescription()
  {
    return this.surveyDescription;
  }

  public void setSurveyDescription(String surveyDescription)
  {
    this.surveyDescription = surveyDescription;
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
  @Column(name="SURVEY_TYPE", nullable=true, length=50)
  public String getSurveyType() {
    return this.surveyType;
  }
  public void setSurveyType(String surveyType) {
    this.surveyType = surveyType;
  }
  @Column(name="MAIN_ID", nullable=true, length=50)
  public String getMainId() {
    return this.mainId;
  }

  public void setMainId(String mainId) {
    this.mainId = mainId;
  }
  @Column(name="SEQ", nullable=true, length=10)
  public Integer getSeq() {
    return this.seq;
  }

  public void setSeq(Integer seq) {
    this.seq = seq;
  }
}