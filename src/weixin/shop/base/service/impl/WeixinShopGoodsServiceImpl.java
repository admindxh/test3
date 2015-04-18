package weixin.shop.base.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.shop.base.dao.WeixinShopGoodsDao;
import weixin.shop.base.entity.WeixinShopGoodsEntity;
import weixin.shop.base.service.WeixinShopGoodsServiceI;

@Service("weixinShopGoodsService")
@Transactional
public class WeixinShopGoodsServiceImpl extends CommonServiceImpl
  implements WeixinShopGoodsServiceI
{

  @Autowired
  private WeixinShopGoodsDao weixinShopGoodsDao;

  public <T> void delete(T entity)
  {
    super.delete(entity);

    doDelSql((WeixinShopGoodsEntity)entity);
  }

  public <T> Serializable save(T entity) {
    Serializable t = super.save(entity);

    doAddSql((WeixinShopGoodsEntity)entity);
    return t;
  }

  public <T> void saveOrUpdate(T entity) {
    super.saveOrUpdate(entity);

    doUpdateSql((WeixinShopGoodsEntity)entity);
  }

  public boolean doAddSql(WeixinShopGoodsEntity t)
  {
    return true;
  }

  public boolean doUpdateSql(WeixinShopGoodsEntity t)
  {
    return true;
  }

  public boolean doDelSql(WeixinShopGoodsEntity t)
  {
    return true;
  }

  public String replaceVal(String sql, WeixinShopGoodsEntity t)
  {
    sql = sql.replace("#{id}", String.valueOf(t.getId()));
    sql = sql.replace("#{create_name}", String.valueOf(t.getCreateName()));
    sql = sql.replace("#{create_date}", String.valueOf(t.getCreateDate()));
    sql = sql.replace("#{update_name}", String.valueOf(t.getUpdateName()));
    sql = sql.replace("#{update_date}", String.valueOf(t.getUpdateDate()));
    sql = sql.replace("#{title}", String.valueOf(t.getTitle()));
    sql = sql.replace("#{title_img}", String.valueOf(t.getTitleImg()));
    sql = sql.replace("#{descriptions}", String.valueOf(t.getDescriptions()));
    sql = sql.replace("#{price}", String.valueOf(t.getPrice()));
    sql = sql.replace("#{real_price}", String.valueOf(t.getRealPrice()));
    sql = sql.replace("#{sale}", String.valueOf(t.getSale()));
    sql = sql.replace("#{sell_count}", String.valueOf(t.getSellCount()));
    sql = sql.replace("#{discuss_count}", String.valueOf(t.getDiscussCount()));
    sql = sql.replace("#{good_count}", String.valueOf(t.getGoodCount()));
    sql = sql.replace("#{bad_count}", String.valueOf(t.getBadCount()));
    sql = sql.replace("#{statement}", String.valueOf(t.getStatement()));
    sql = sql.replace("#{shelve_time}", String.valueOf(t.getShelveTime()));
    sql = sql.replace("#{remove_time}", String.valueOf(t.getRemoveTime()));
    sql = sql.replace("#{express_name}", String.valueOf(t.getExpressName()));
    sql = sql.replace("#{express_price}", String.valueOf(t.getExpressPrice()));
    sql = sql.replace("#{seller_id}", String.valueOf(t.getSellerId()));
    sql = sql.replace("#{UUID}", UUID.randomUUID().toString());
    return sql;
  }

  public List<WeixinShopGoodsEntity> list(WeixinShopGoodsEntity weixinShopGoods)
  {
    return this.weixinShopGoodsDao.list(weixinShopGoods);
  }

  public List<WeixinShopGoodsEntity> list(WeixinShopGoodsEntity weixinShopGoods, int page, int rows)
  {
    return this.weixinShopGoodsDao.list(weixinShopGoods, page, rows);
  }

  public List<WeixinShopGoodsEntity> list(Map params, int page, int rows)
  {
    return this.weixinShopGoodsDao.listByMap(params, page, rows);
  }

  public List<WeixinShopGoodsEntity> list(Map params)
  {
    return this.weixinShopGoodsDao.listByMap(params);
  }

  public Integer getCount(Map params)
  {
    return this.weixinShopGoodsDao.getCount(params);
  }
}