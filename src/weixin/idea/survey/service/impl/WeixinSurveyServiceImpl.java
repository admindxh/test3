package weixin.idea.survey.service.impl;

import java.io.Serializable;
import java.util.List;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.StringUtil;
import org.springframework.stereotype.Service;
import weixin.idea.survey.entity.WeixinSurveyEntity;
import weixin.idea.survey.entity.WeixinSurveyOptionEntity;
import weixin.idea.survey.service.WeixinSurveyServiceI;

@Service("weixinSurveyServiceImpl")
public class WeixinSurveyServiceImpl extends CommonServiceImpl
  implements WeixinSurveyServiceI
{
  public <T> void delete(T entity)
  {
    super.delete(entity);
  }

  public <T> Serializable save(T entity)
  {
    WeixinSurveyEntity weixinSurveyEntity = (WeixinSurveyEntity)entity;

    if (("1".equals(weixinSurveyEntity.getSurveyType())) || ("2".equals(weixinSurveyEntity.getSurveyType()))) {
      if (StringUtil.isEmpty(weixinSurveyEntity.getId())) {
        List<WeixinSurveyOptionEntity> optionlist = weixinSurveyEntity.getWeixinSurveyOptions();
        weixinSurveyEntity.setSurveyCount(Integer.valueOf(0));
        weixinSurveyEntity.setStatement("0");
        Serializable t = super.save(weixinSurveyEntity);
        for (WeixinSurveyOptionEntity option : optionlist) {
          option.setCount(Integer.valueOf(0));
          option.setScale(Double.valueOf(0.0D));
          option.setWeixinSurvey(weixinSurveyEntity);
          super.save(option);
        }
      } else {
        WeixinSurveyEntity updateEntity = (WeixinSurveyEntity)get(WeixinSurveyEntity.class, weixinSurveyEntity.getId());
        List<WeixinSurveyOptionEntity> optionlist = weixinSurveyEntity.getWeixinSurveyOptions();
        List<WeixinSurveyOptionEntity> oldoptionlist = super.findByProperty(WeixinSurveyOptionEntity.class, "weixinSurvey.id", weixinSurveyEntity.getId());
        try {
          MyBeanUtils.copyBeanNotNull2Bean(weixinSurveyEntity, updateEntity);
        }
        catch (Exception e) {
          e.printStackTrace();
        }
        super.updateEntitie(updateEntity);
        super.deleteAllEntitie(oldoptionlist);
        for (WeixinSurveyOptionEntity option : optionlist) {
          option.setWeixinSurvey(weixinSurveyEntity);
          option.setCount(Integer.valueOf(0));
          option.setScale(Double.valueOf(0.0D));
          super.save(option);
        }
      }
    } else if ("3".equals(weixinSurveyEntity.getSurveyType()))
    {
      if (StringUtil.isEmpty(weixinSurveyEntity.getId())) {
        weixinSurveyEntity.setSurveyCount(Integer.valueOf(0));
        weixinSurveyEntity.setStatement("0");
        super.save(weixinSurveyEntity);
      } else {
        WeixinSurveyEntity updateEntity = (WeixinSurveyEntity)get(WeixinSurveyEntity.class, weixinSurveyEntity.getId());
        try {
          MyBeanUtils.copyBeanNotNull2Bean(weixinSurveyEntity, updateEntity);
        }
        catch (Exception e) {
          e.printStackTrace();
        }
        super.updateEntitie(updateEntity);
      }
    }

    return weixinSurveyEntity;
  }

  public <T> void saveOrUpdate(T entity) {
    WeixinSurveyEntity weixinSurveyEntity = (WeixinSurveyEntity)entity;
    super.saveOrUpdate(weixinSurveyEntity);
  }

  public boolean doAddSql(WeixinSurveyEntity t)
  {
    return false;
  }

  public boolean doUpdateSql(WeixinSurveyEntity t)
  {
    return false;
  }

  public boolean doDelSql(WeixinSurveyEntity t)
  {
    return false;
  }
}