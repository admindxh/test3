package weixin.bbs.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.bbs.service.WeixinBbsServiceI;

@Service("weixinBbsService")
@Transactional
public class WeixinBbsServiceImpl extends CommonServiceImpl
  implements WeixinBbsServiceI
{
}