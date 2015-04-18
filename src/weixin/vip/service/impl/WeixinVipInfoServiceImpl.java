package weixin.vip.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.vip.service.WeixinVipInfoServiceI;

@Service("weixinVipInfoService")
@Transactional
public class WeixinVipInfoServiceImpl extends CommonServiceImpl
  implements WeixinVipInfoServiceI
{
}