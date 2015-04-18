package weixin.idea.survey.entity;

import java.util.List;

public class WeixinSurveyView
{
  private String surveyid;
  private String surveyTitle;
  private String surveyType;
  private String surveyDescription;
  private List<WeixinSurveyOptionEntity> optionlist;

  public String getSurveyid()
  {
    return this.surveyid;
  }
  public void setSurveyid(String surveyid) {
    this.surveyid = surveyid;
  }
  public String getSurveyTitle() {
    return this.surveyTitle;
  }
  public void setSurveyTitle(String surveyTitle) {
    this.surveyTitle = surveyTitle;
  }
  public String getSurveyType() {
    return this.surveyType;
  }
  public void setSurveyType(String surveyType) {
    this.surveyType = surveyType;
  }
  public String getSurveyDescription() {
    return this.surveyDescription;
  }
  public void setSurveyDescription(String surveyDescription) {
    this.surveyDescription = surveyDescription;
  }
  public List<WeixinSurveyOptionEntity> getOptionlist() {
    return this.optionlist;
  }
  public void setOptionlist(List<WeixinSurveyOptionEntity> optionlist) {
    this.optionlist = optionlist;
  }
}