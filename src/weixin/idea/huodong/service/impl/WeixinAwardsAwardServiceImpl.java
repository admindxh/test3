package weixin.idea.huodong.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.idea.huodong.service.WeixinAwardsAwardServiceI;

@Service("weixinAwardsAwardService")
@Transactional
public class WeixinAwardsAwardServiceImpl extends CommonServiceImpl
  implements WeixinAwardsAwardServiceI
{
}