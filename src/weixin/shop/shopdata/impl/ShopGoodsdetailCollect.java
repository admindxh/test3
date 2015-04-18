package weixin.shop.shopdata.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.springframework.context.ApplicationContext;
import weixin.shop.base.entity.WeixinShopGoodsEntity;
import weixin.shop.base.service.WeixinShopCategoryServiceI;
import weixin.shop.base.service.WeixinShopGoodsServiceI;
import weixin.shop.common.ShopDataContent;
import weixin.shop.shopdata.ShopDataCollectI;

public class ShopGoodsdetailCollect
  implements ShopDataCollectI
{
  public void collect(Map<String, String> params)
  {
    WeixinShopCategoryServiceI weixinShopCategoryService = (WeixinShopCategoryServiceI)ApplicationContextUtil.getContext().getBean("weixinShopCategoryService");
    WeixinShopGoodsServiceI weixinShopGoodsService = (WeixinShopGoodsServiceI)ApplicationContextUtil.getContext().getBean("weixinShopGoodsService");

    Map categoryParams = new HashMap();

    if (params.containsKey("accountid")) {
      categoryParams.put("accountid", params.get("accountid"));
    }
    List weixinShopCategoryList = weixinShopCategoryService.list(categoryParams);

    String goodsid = (String)params.get("goodsid");
    WeixinShopGoodsEntity goods = (WeixinShopGoodsEntity)weixinShopGoodsService.getEntity(WeixinShopGoodsEntity.class, goodsid);

    ShopDataContent.put("accountid", params.get("accountid"));
    ShopDataContent.put("goods", goods);
    ShopDataContent.put("categoryList", weixinShopCategoryList);
  }
}