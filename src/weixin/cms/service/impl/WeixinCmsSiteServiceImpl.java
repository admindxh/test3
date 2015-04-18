package weixin.cms.service.impl;

import java.io.Serializable;
import java.util.UUID;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.cms.entity.WeixinCmsSiteEntity;
import weixin.cms.service.WeixinCmsSiteServiceI;

@Service("weixinCmsSiteService")
@Transactional
public class WeixinCmsSiteServiceImpl extends CommonServiceImpl
  implements WeixinCmsSiteServiceI
{
  public <T> void delete(T entity)
  {
    super.delete(entity);

    doDelSql((WeixinCmsSiteEntity)entity);
  }

  public <T> Serializable save(T entity) {
    Serializable t = super.save(entity);

    doAddSql((WeixinCmsSiteEntity)entity);
    return t;
  }

  public <T> void saveOrUpdate(T entity) {
    super.saveOrUpdate(entity);

    doUpdateSql((WeixinCmsSiteEntity)entity);
  }

  public boolean doAddSql(WeixinCmsSiteEntity t)
  {
    return true;
  }

  public boolean doUpdateSql(WeixinCmsSiteEntity t)
  {
    return true;
  }

  public boolean doDelSql(WeixinCmsSiteEntity t)
  {
    return true;
  }

  public String replaceVal(String sql, WeixinCmsSiteEntity t)
  {
    sql = sql.replace("#{id}", String.valueOf(t.getId()));
    sql = sql.replace("#{create_name}", String.valueOf(t.getCreateName()));
    sql = sql.replace("#{create_date}", String.valueOf(t.getCreateDate()));
    sql = sql.replace("#{update_name}", String.valueOf(t.getUpdateName()));
    sql = sql.replace("#{update_date}", String.valueOf(t.getUpdateDate()));
    sql = sql.replace("#{site_name}", String.valueOf(t.getSiteName()));
    sql = sql.replace("#{company_tel}", String.valueOf(t.getCompanyTel()));
    sql = sql.replace("#{site_logo}", String.valueOf(t.getSiteLogo()));
    sql = sql.replace("#{site_template_style}", String.valueOf(t.getSiteTemplateStyle()));
    sql = sql.replace("#{accountid}", String.valueOf(t.getAccountid()));
    sql = sql.replace("#{UUID}", UUID.randomUUID().toString());
    return sql;
  }
}