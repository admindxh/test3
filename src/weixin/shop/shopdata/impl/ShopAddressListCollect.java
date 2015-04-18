package weixin.shop.shopdata.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import jodd.util.StringUtil;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.springframework.context.ApplicationContext;
import weixin.shop.base.service.WeixinShopAddressServiceI;
import weixin.shop.common.ShopDataContent;
import weixin.shop.shopdata.ShopDataCollectI;

public class ShopAddressListCollect
  implements ShopDataCollectI
{
  public void collect(Map<String, String> params)
  {
    WeixinShopAddressServiceI weixinShopAddressService = (WeixinShopAddressServiceI)ApplicationContextUtil.getContext().getBean("weixinShopAddressService");

    Map categoryParams = new HashMap();

    if (ResourceUtil.getQianTaiAccountId() != null) {
      categoryParams.put("accountid", ResourceUtil.getQianTaiAccountId());
    }
    if (ResourceUtil.getSessionUserName() != null) {
      params.put("userid", ResourceUtil.getSessionUserName().getId());
    }
    List addresslist = weixinShopAddressService.list(params);

    String goodsparams = params.containsKey("goodsparams") ? (String)params.get("goodsparams") : "";

    if (!StringUtil.isEmpty(goodsparams)) {
      ShopDataContent.put("goodsparams", goodsparams);
    }
    ShopDataContent.put("accountid", ResourceUtil.getQianTaiAccountId() != null ? ResourceUtil.getQianTaiAccountId() : "");
    ShopDataContent.put("addresslist", addresslist);
  }
}