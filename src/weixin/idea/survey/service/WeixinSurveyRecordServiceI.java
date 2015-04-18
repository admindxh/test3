package weixin.idea.survey.service;

import org.jeecgframework.core.common.service.CommonService;

public abstract interface WeixinSurveyRecordServiceI extends CommonService
{
  public abstract boolean checkSurvey(String paramString1, String paramString2);
}