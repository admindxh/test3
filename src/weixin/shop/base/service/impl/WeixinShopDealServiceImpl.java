package weixin.shop.base.service.impl;

import java.io.Serializable;
import java.util.UUID;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.shop.base.entity.WeixinShopDealEntity;
import weixin.shop.base.service.WeixinShopDealServiceI;

@Service("weixinShopDealService")
@Transactional
public class WeixinShopDealServiceImpl extends CommonServiceImpl
  implements WeixinShopDealServiceI
{
  public <T> void delete(T entity)
  {
    super.delete(entity);

    doDelSql((WeixinShopDealEntity)entity);
  }

  public <T> Serializable save(T entity) {
    Serializable t = super.save(entity);

    doAddSql((WeixinShopDealEntity)entity);
    return t;
  }

  public <T> void saveOrUpdate(T entity) {
    super.saveOrUpdate(entity);

    doUpdateSql((WeixinShopDealEntity)entity);
  }

  public boolean doAddSql(WeixinShopDealEntity t)
  {
    return true;
  }

  public boolean doUpdateSql(WeixinShopDealEntity t)
  {
    return true;
  }

  public boolean doDelSql(WeixinShopDealEntity t)
  {
    return true;
  }

  public String replaceVal(String sql, WeixinShopDealEntity t)
  {
    sql = sql.replace("#{id}", String.valueOf(t.getId()));
    sql = sql.replace("#{create_name}", String.valueOf(t.getCreateName()));
    sql = sql.replace("#{create_date}", String.valueOf(t.getCreateDate()));
    sql = sql.replace("#{update_name}", String.valueOf(t.getUpdateName()));
    sql = sql.replace("#{update_date}", String.valueOf(t.getUpdateDate()));
    sql = sql.replace("#{deal_number}", String.valueOf(t.getDealNumber()));
    sql = sql.replace("#{paytype}", String.valueOf(t.getPaytype()));
    sql = sql.replace("#{pay_number}", String.valueOf(t.getPayNumber()));
    sql = sql.replace("#{buyer_id}", String.valueOf(t.getBuyerId()));
    sql = sql.replace("#{seller_id}", String.valueOf(t.getSellerId()));
    sql = sql.replace("#{address_detail}", String.valueOf(t.getAddressDetail()));
    sql = sql.replace("#{deal_statement}", String.valueOf(t.getDealStatement()));
    sql = sql.replace("#{sendtype}", String.valueOf(t.getSendtype()));
    sql = sql.replace("#{express_name}", String.valueOf(t.getExpressName()));
    sql = sql.replace("#{express_number}", String.valueOf(t.getExpressNumber()));
    sql = sql.replace("#{tel}", String.valueOf(t.getTel()));
    sql = sql.replace("#{deal_time}", String.valueOf(t.getDealTime()));
    sql = sql.replace("#{pay_time}", String.valueOf(t.getPayTime()));
    sql = sql.replace("#{sendout_time}", String.valueOf(t.getSendoutTime()));
    sql = sql.replace("#{confirm_time}", String.valueOf(t.getConfirmTime()));
    sql = sql.replace("#{buyer_leave_words}", String.valueOf(t.getBuyerLeaveWords()));
    sql = sql.replace("#{seller_leave_words}", String.valueOf(t.getSellerLeaveWords()));
    sql = sql.replace("#{reduce_price}", String.valueOf(t.getReducePrice()));
    sql = sql.replace("#{yfmny}", String.valueOf(t.getYfmny()));
    sql = sql.replace("#{sfmny}", String.valueOf(t.getSfmny()));
    sql = sql.replace("#{jfmny}", String.valueOf(t.getJfmny()));
    sql = sql.replace("#{memo}", String.valueOf(t.getMemo()));
    sql = sql.replace("#{UUID}", UUID.randomUUID().toString());
    return sql;
  }
}