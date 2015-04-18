package weixin.idea.survey.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.idea.survey.entity.WeixinSurveyEntity;

public abstract interface WeixinSurveyServiceI extends CommonService
{
  public abstract <T> void delete(T paramT);

  public abstract <T> Serializable save(T paramT);

  public abstract <T> void saveOrUpdate(T paramT);

  public abstract boolean doAddSql(WeixinSurveyEntity paramWeixinSurveyEntity);

  public abstract boolean doUpdateSql(WeixinSurveyEntity paramWeixinSurveyEntity);

  public abstract boolean doDelSql(WeixinSurveyEntity paramWeixinSurveyEntity);
}