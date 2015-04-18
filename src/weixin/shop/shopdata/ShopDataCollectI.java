package weixin.shop.shopdata;

import java.util.Map;

public abstract interface ShopDataCollectI
{
  public abstract void collect(Map<String, String> paramMap);
}