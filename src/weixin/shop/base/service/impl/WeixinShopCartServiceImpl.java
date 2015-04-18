package weixin.shop.base.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.shop.base.service.WeixinShopCartServiceI;

@Service("weixinMallCartService")
@Transactional
public class WeixinShopCartServiceImpl extends CommonServiceImpl
  implements WeixinShopCartServiceI
{
}