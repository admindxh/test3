package weixin.shop.base.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.jeecgframework.core.common.service.CommonService;
import weixin.shop.base.entity.WeixinShopAddressEntity;

public abstract interface WeixinShopAddressServiceI extends CommonService
{
  public abstract <T> void delete(T paramT);

  public abstract <T> Serializable save(T paramT);

  public abstract <T> void saveOrUpdate(T paramT);

  public abstract boolean doAddSql(WeixinShopAddressEntity paramWeixinShopAddressEntity);

  public abstract boolean doUpdateSql(WeixinShopAddressEntity paramWeixinShopAddressEntity);

  public abstract boolean doDelSql(WeixinShopAddressEntity paramWeixinShopAddressEntity);

  public abstract List<WeixinShopAddressEntity> list(Map paramMap, int paramInt1, int paramInt2);

  public abstract List<WeixinShopAddressEntity> list(Map paramMap);
}