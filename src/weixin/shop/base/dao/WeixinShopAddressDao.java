package weixin.shop.base.dao;

import java.util.List;
import java.util.Map;
import org.jeecgframework.minidao.annotation.Arguments;
import org.jeecgframework.minidao.annotation.MiniDao;
import org.jeecgframework.minidao.annotation.ResultType;
import weixin.shop.base.entity.WeixinShopAddressEntity;

@MiniDao
public abstract interface WeixinShopAddressDao
{
  @Arguments({"weixinShopAddressEntity"})
  @ResultType({"weixin.shop.base.entity.WeixinShopAddressEntity"})
  public abstract List<WeixinShopAddressEntity> list(WeixinShopAddressEntity paramWeixinShopAddressEntity);

  @Arguments({"weixinShopAddressEntity", "page", "rows"})
  @ResultType({"weixin.shop.base.entity.WeixinShopAddressEntity"})
  public abstract List<WeixinShopAddressEntity> list(WeixinShopAddressEntity paramWeixinShopAddressEntity, int paramInt1, int paramInt2);

  @Arguments({"params"})
  @ResultType({"weixin.shop.base.entity.WeixinShopAddressEntity"})
  public abstract List<WeixinShopAddressEntity> listByMap(Map paramMap);

  @Arguments({"params", "page", "rows"})
  @ResultType({"weixin.shop.base.entity.WeixinShopAddressEntity"})
  public abstract List<WeixinShopAddressEntity> listByMap(Map paramMap, int paramInt1, int paramInt2);

  @Arguments({"params"})
  public abstract Integer getCount(Map paramMap);
}