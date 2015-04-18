package weixin.idea.survey.entity;

import java.util.List;

public class WeixinSurveyResultView
{
  private WeixinSurveyEntity weixinSurvey;
  private List<WeixinSurveyRecordEntity> recordlist;

  public void setWeixinSurvey(WeixinSurveyEntity weixinSurvey)
  {
    this.weixinSurvey = weixinSurvey;
  }
  public WeixinSurveyEntity getWeixinSurvey() {
    return this.weixinSurvey;
  }
  public void setRecordlist(List<WeixinSurveyRecordEntity> recordlist) {
    this.recordlist = recordlist;
  }
  public List<WeixinSurveyRecordEntity> getRecordlist() {
    return this.recordlist;
  }
}