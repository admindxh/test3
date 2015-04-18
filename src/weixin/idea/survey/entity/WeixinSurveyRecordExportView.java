package weixin.idea.survey.entity;

import java.util.Date;
import org.jeecgframework.poi.excel.annotation.Excel;

public class WeixinSurveyRecordExportView
{

  @Excel(exportName="调研问卷", exportFieldWidth=50)
  private String mainTitle;

  @Excel(exportName="调研题目", exportFieldWidth=30)
  private String surveyTitle;

  @Excel(exportName="回复内容", exportFieldWidth=30)
  private String answers;

  @Excel(exportName="调研人")
  private String username;

  @Excel(exportName="调研时间", exportFormat="yyyy-MM-dd HH:mm:ss", exportFieldWidth=30)
  private Date surveyDate;

  public String getMainTitle()
  {
    return this.mainTitle;
  }
  public void setMainTitle(String mainTitle) {
    this.mainTitle = mainTitle;
  }
  public String getSurveyTitle() {
    return this.surveyTitle;
  }
  public void setSurveyTitle(String surveyTitle) {
    this.surveyTitle = surveyTitle;
  }
  public String getAnswers() {
    return this.answers;
  }
  public void setAnswers(String answers) {
    this.answers = answers;
  }
  public String getUsername() {
    return this.username;
  }
  public void setUsername(String username) {
    this.username = username;
  }
  public Date getSurveyDate() {
    return this.surveyDate;
  }
  public void setSurveyDate(Date surveyDate) {
    this.surveyDate = surveyDate;
  }
}