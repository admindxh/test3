package weixin.shop.base.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.shop.base.dao.WeixinShopAddressDao;
import weixin.shop.base.entity.WeixinShopAddressEntity;
import weixin.shop.base.service.WeixinShopAddressServiceI;

@Service("weixinShopAddressService")
@Transactional
public class WeixinShopAddressServiceImpl extends CommonServiceImpl
  implements WeixinShopAddressServiceI
{

  @Autowired
  private WeixinShopAddressDao weixinShopAddressDao;

  public <T> void delete(T entity)
  {
    super.delete(entity);

    doDelSql((WeixinShopAddressEntity)entity);
  }

  public <T> Serializable save(T entity) {
    Serializable t = super.save(entity);

    doAddSql((WeixinShopAddressEntity)entity);
    return t;
  }

  public <T> void saveOrUpdate(T entity) {
    super.saveOrUpdate(entity);

    doUpdateSql((WeixinShopAddressEntity)entity);
  }

  public boolean doAddSql(WeixinShopAddressEntity t)
  {
    return true;
  }

  public boolean doUpdateSql(WeixinShopAddressEntity t)
  {
    return true;
  }

  public boolean doDelSql(WeixinShopAddressEntity t)
  {
    return true;
  }

  public String replaceVal(String sql, WeixinShopAddressEntity t)
  {
    sql = sql.replace("#{id}", String.valueOf(t.getId()));
    sql = sql.replace("#{create_name}", String.valueOf(t.getCreateName()));
    sql = sql.replace("#{create_date}", String.valueOf(t.getCreateDate()));
    sql = sql.replace("#{update_name}", String.valueOf(t.getUpdateName()));
    sql = sql.replace("#{update_date}", String.valueOf(t.getUpdateDate()));
    sql = sql.replace("#{accountid}", String.valueOf(t.getAccountid()));
    sql = sql.replace("#{openid}", String.valueOf(t.getOpenid()));
    sql = sql.replace("#{userid}", String.valueOf(t.getUserid()));
    sql = sql.replace("#{province}", String.valueOf(t.getProvince()));
    sql = sql.replace("#{city}", String.valueOf(t.getCity()));
    sql = sql.replace("#{area}", String.valueOf(t.getArea()));
    sql = sql.replace("#{address}", String.valueOf(t.getAddress()));
    sql = sql.replace("#{realname}", String.valueOf(t.getRealname()));
    sql = sql.replace("#{tel}", String.valueOf(t.getTel()));
    sql = sql.replace("#{postno}", String.valueOf(t.getPostno()));
    sql = sql.replace("#{UUID}", UUID.randomUUID().toString());
    return sql;
  }

  public List<WeixinShopAddressEntity> list(Map params, int page, int rows)
  {
    return this.weixinShopAddressDao.listByMap(params, page, rows);
  }

  public List<WeixinShopAddressEntity> list(Map params)
  {
    return this.weixinShopAddressDao.listByMap(params);
  }
}