package weixin.idea.survey.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="weixin_survey_main", schema="")
public class WeixinSurveyMainEntity
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
  private String accountid;
  private String statement;
  private Date beginDate;
  private Date validDate;

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

  @Column(name="VALID_DATE", nullable=true, length=20)
  public Date getValidDate() {
    return this.validDate;
  }

  public void setValidDate(Date validDate) {
    this.validDate = validDate;
  }

  @Column(name="BEGIN_DATE", nullable=true, length=20)
  public Date getBeginDate() {
    return this.beginDate;
  }
  public void setBeginDate(Date beginDate) {
    this.beginDate = beginDate;
  }
}