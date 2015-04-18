package weixin.shop.common;

import java.util.HashMap;
import java.util.Map;

public class ShopDataContent
{
  public static final String SHOP_CONTENT_KEY = "weixinShopContent";
  private static final Map<String, Object> shopContent = new HashMap();
  private static final Map<String, Object> shopData = new HashMap();

  public static void put(String key, Object object)
  {
    shopData.put(key, object);
  }

  public static Object get(String key)
  {
    return shopData.get(key);
  }

  public static Map<String, Object> loadContent()
  {
    shopContent.put("weixinShopContent", shopData);
    return shopContent;
  }
}