package weixin.shop.shopdata.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.springframework.context.ApplicationContext;
import weixin.shop.base.service.WeixinShopCategoryServiceI;
import weixin.shop.common.ShopDataContent;
import weixin.shop.shopdata.ShopDataCollectI;

public class ShopIndexCollect
  implements ShopDataCollectI
{
  public void collect(Map<String, String> params)
  {
    WeixinShopCategoryServiceI weixinShopCategoryService = (WeixinShopCategoryServiceI)ApplicationContextUtil.getContext().getBean("weixinShopCategoryService");

    Map categoryParams = new HashMap();

    if (params.containsKey("accountid")) {
      categoryParams.put("accountid", params.get("accountid"));
    }
    List weixinShopCategoryList = weixinShopCategoryService.list(categoryParams);
    ShopDataContent.put("accountid", params.get("accountid"));
    ShopDataContent.put("categoryList", weixinShopCategoryList);
  }
}