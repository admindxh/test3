package weixin.idea.survey.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import weixin.idea.survey.service.WeixinSurveyRecordServiceI;

@Service("weixinSurveyRecordService")
public class WeixinSurveyRecordServiceImpl extends CommonServiceImpl
  implements WeixinSurveyRecordServiceI
{
  public boolean checkSurvey(String userid, String voteid)
  {
    return false;
  }
}