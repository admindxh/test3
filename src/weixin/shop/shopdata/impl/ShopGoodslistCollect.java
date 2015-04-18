package weixin.shop.shopdata.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.springframework.context.ApplicationContext;
import weixin.shop.base.entity.WeixinShopCategoryEntity;
import weixin.shop.base.service.WeixinShopCategoryServiceI;
import weixin.shop.base.service.WeixinShopGoodsServiceI;
import weixin.shop.common.ShopDataContent;
import weixin.shop.common.ShopPage;
import weixin.shop.shopdata.ShopDataCollectI;

public class ShopGoodslistCollect
  implements ShopDataCollectI
{
  public void collect(Map<String, String> params)
  {
    WeixinShopCategoryServiceI weixinShopCategoryService = (WeixinShopCategoryServiceI)ApplicationContextUtil.getContext().getBean("weixinShopCategoryService");
    WeixinShopGoodsServiceI weixinShopGoodsService = (WeixinShopGoodsServiceI)ApplicationContextUtil.getContext().getBean("weixinShopGoodsService");
    WeixinShopCategoryEntity category = new WeixinShopCategoryEntity();
    String categoryid = (String)params.get("categoryid");

    Map categoryParams = new HashMap();

    if (params.containsKey("accountid")) {
      categoryParams.put("accountid", params.get("accountid"));
    }
    List weixinShopCategoryList = weixinShopCategoryService.list(categoryParams);

    if (categoryid != null) {
      category = (WeixinShopCategoryEntity)weixinShopCategoryService.getEntity(WeixinShopCategoryEntity.class, categoryid);
    }

    List goodsList = weixinShopGoodsService.list(params, 1, 5);

    int total = weixinShopGoodsService.getCount(params).intValue();
    ShopDataContent.put("category", category);
    ShopDataContent.put("categoryList", weixinShopCategoryList);
    ShopDataContent.put("goodsList", goodsList);
    ShopDataContent.put("accountid", params.get("accountid"));
    ShopDataContent.put("keyword", params.containsKey("keyword") ? (String)params.get("keyword") : "");
    ShopPage page = new ShopPage();
    page.setPageNo(1);
    page.setPageSize(5);
    page.setTotal(total);
    ShopDataContent.put("page", page);
    ShopDataContent.put("params", params);
  }
}