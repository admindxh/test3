package weixin.idea.survey.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

@Entity
@Table(name="weixin_survey_record")
public class WeixinSurveyRecordEntity
{
  private String id;
  private String accountid;
  private String openid;

  @Excel(exportName="调研问卷")
  private String mainid;

  @Excel(exportName="回复")
  private String answer;
  private String surveyid;
  private String userid;
  private String createName;
  private Date createDate;

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
  @Column(name="answer", nullable=true, length=200)
  public String getAnswer() {
    return this.answer;
  }
  public void setAnswer(String answer) {
    this.answer = answer;
  }
  @Column(name="surveyid", nullable=true, length=50)
  public String getSurveyid() {
    return this.surveyid;
  }
  public void setSurveyid(String surveyid) {
    this.surveyid = surveyid;
  }
  @Column(name="userid", nullable=true, length=50)
  public String getUserid() {
    return this.userid;
  }
  public void setUserid(String userid) {
    this.userid = userid;
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

  @Column(name="MAINID", nullable=true, length=50)
  public String getMainid() {
    return this.mainid;
  }
  public void setMainid(String mainid) {
    this.mainid = mainid;
  }
}