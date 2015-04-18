package weixin.shop.base.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.shop.base.entity.WeixinShopDealEntity;

public abstract interface WeixinShopDealServiceI extends CommonService
{
  public abstract <T> void delete(T paramT);

  public abstract <T> Serializable save(T paramT);

  public abstract <T> void saveOrUpdate(T paramT);

  public abstract boolean doAddSql(WeixinShopDealEntity paramWeixinShopDealEntity);

  public abstract boolean doUpdateSql(WeixinShopDealEntity paramWeixinShopDealEntity);

  public abstract boolean doDelSql(WeixinShopDealEntity paramWeixinShopDealEntity);
}