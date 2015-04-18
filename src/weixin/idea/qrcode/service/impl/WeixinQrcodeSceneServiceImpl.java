package weixin.idea.qrcode.service.impl;

import java.io.Serializable;
import java.util.UUID;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.idea.qrcode.entity.WeixinQrcodeSceneEntity;
import weixin.idea.qrcode.service.WeixinQrcodeSceneServiceI;

@Service("weixinQrcodeSceneService")
@Transactional
public class WeixinQrcodeSceneServiceImpl extends CommonServiceImpl
  implements WeixinQrcodeSceneServiceI
{
  public <T> void delete(T entity)
  {
    super.delete(entity);

    doDelSql((WeixinQrcodeSceneEntity)entity);
  }

  public <T> Serializable save(T entity) {
    Serializable t = super.save(entity);

    doAddSql((WeixinQrcodeSceneEntity)entity);
    return t;
  }

  public <T> void saveOrUpdate(T entity) {
    super.saveOrUpdate(entity);

    doUpdateSql((WeixinQrcodeSceneEntity)entity);
  }

  public boolean doAddSql(WeixinQrcodeSceneEntity t)
  {
    return true;
  }

  public boolean doUpdateSql(WeixinQrcodeSceneEntity t)
  {
    return true;
  }

  public boolean doDelSql(WeixinQrcodeSceneEntity t)
  {
    return true;
  }

  public String replaceVal(String sql, WeixinQrcodeSceneEntity t)
  {
    sql = sql.replace("#{id}", String.valueOf(t.getId()));
    sql = sql.replace("#{create_name}", String.valueOf(t.getCreateName()));
    sql = sql.replace("#{create_date}", String.valueOf(t.getCreateDate()));
    sql = sql.replace("#{update_name}", String.valueOf(t.getUpdateName()));
    sql = sql.replace("#{update_date}", String.valueOf(t.getUpdateDate()));
    sql = sql.replace("#{accountid}", String.valueOf(t.getAccountid()));
    sql = sql.replace("#{scenekey}", String.valueOf(t.getScenekey()));
    sql = sql.replace("#{scenevalue}", String.valueOf(t.getScenevalue()));
    sql = sql.replace("#{UUID}", UUID.randomUUID().toString());
    return sql;
  }
}