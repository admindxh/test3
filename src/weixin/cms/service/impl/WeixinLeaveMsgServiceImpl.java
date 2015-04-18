package weixin.cms.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.cms.service.WeixinLeaveMsgServiceI;

@Service("weixinLeaveMsgService")
@Transactional
public class WeixinLeaveMsgServiceImpl extends CommonServiceImpl
  implements WeixinLeaveMsgServiceI
{
}