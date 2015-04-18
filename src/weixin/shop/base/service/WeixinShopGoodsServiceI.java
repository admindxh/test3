package weixin.shop.base.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.jeecgframework.core.common.service.CommonService;
import weixin.shop.base.entity.WeixinShopGoodsEntity;

public abstract interface WeixinShopGoodsServiceI extends CommonService
{
  public abstract <T> void delete(T paramT);

  public abstract <T> Serializable save(T paramT);

  public abstract <T> void saveOrUpdate(T paramT);

  public abstract boolean doAddSql(WeixinShopGoodsEntity paramWeixinShopGoodsEntity);

  public abstract boolean doUpdateSql(WeixinShopGoodsEntity paramWeixinShopGoodsEntity);

  public abstract boolean doDelSql(WeixinShopGoodsEntity paramWeixinShopGoodsEntity);

  public abstract List<WeixinShopGoodsEntity> list(WeixinShopGoodsEntity paramWeixinShopGoodsEntity);

  public abstract List<WeixinShopGoodsEntity> list(WeixinShopGoodsEntity paramWeixinShopGoodsEntity, int paramInt1, int paramInt2);

  public abstract List<WeixinShopGoodsEntity> list(Map paramMap, int paramInt1, int paramInt2);

  public abstract List<WeixinShopGoodsEntity> list(Map paramMap);

  public abstract Integer getCount(Map paramMap);
}