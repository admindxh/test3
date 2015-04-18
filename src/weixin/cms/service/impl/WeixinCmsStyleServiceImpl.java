package weixin.cms.service.impl;

import java.io.Serializable;
import java.util.UUID;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.ResourceUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.cms.entity.WeixinCmsSiteEntity;
import weixin.cms.entity.WeixinCmsStyleEntity;
import weixin.cms.service.WeixinCmsStyleServiceI;

@Service("weixinCmsStyleService")
@Transactional
public class WeixinCmsStyleServiceImpl extends CommonServiceImpl
  implements WeixinCmsStyleServiceI
{
  public <T> void delete(T entity)
  {
    super.delete(entity);

    doDelSql((WeixinCmsStyleEntity)entity);
  }

  public <T> Serializable save(T entity) {
    Serializable t = super.save(entity);

    doAddSql((WeixinCmsStyleEntity)entity);
    return t;
  }

  public <T> void saveOrUpdate(T entity) {
    super.saveOrUpdate(entity);

    doUpdateSql((WeixinCmsStyleEntity)entity);
  }

  public boolean doAddSql(WeixinCmsStyleEntity t)
  {
    return true;
  }

  public boolean doUpdateSql(WeixinCmsStyleEntity t)
  {
    return true;
  }

  public boolean doDelSql(WeixinCmsStyleEntity t)
  {
    return true;
  }

  public String replaceVal(String sql, WeixinCmsStyleEntity t)
  {
    sql = sql.replace("#{id}", String.valueOf(t.getId()));
    sql = sql.replace("#{create_name}", String.valueOf(t.getCreateName()));
    sql = sql.replace("#{create_date}", String.valueOf(t.getCreateDate()));
    sql = sql.replace("#{update_name}", String.valueOf(t.getUpdateName()));
    sql = sql.replace("#{update_date}", String.valueOf(t.getUpdateDate()));
    sql = sql.replace("#{template_name}", String.valueOf(t.getTemplateName()));
    sql = sql.replace("#{template_url}", String.valueOf(t.getTemplateUrl()));
    sql = sql.replace("#{review_img_url}", String.valueOf(t.getReviewImgUrl()));
    sql = sql.replace("#{accountid}", String.valueOf(t.getAccountid()));
    sql = sql.replace("#{UUID}", UUID.randomUUID().toString());
    return sql;
  }

  public String getStylePath()
  {
    WeixinCmsSiteEntity weixinCmsSiteEntity = (WeixinCmsSiteEntity)findUniqueByProperty(WeixinCmsSiteEntity.class, "accountid", ResourceUtil.getShangJiaAccountId());

    WeixinCmsStyleEntity weixinCmsStyleEntity = null;

    String stylePath = null;

    if (weixinCmsSiteEntity != null) {
      if (weixinCmsSiteEntity.getSiteTemplateStyle() != null) {
        weixinCmsStyleEntity = (WeixinCmsStyleEntity)get(WeixinCmsStyleEntity.class, weixinCmsSiteEntity.getSiteTemplateStyle());
      }
      if (weixinCmsStyleEntity != null)
        stylePath = ResourceUtil.getShangJiaAccountId() + "/" + weixinCmsStyleEntity.getTemplateUrl();
      else
        stylePath = "default";
    }
    else {
      stylePath = "default";
    }
    return stylePath;
  }
}