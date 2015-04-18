package weixin.wall.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.wall.service.WeixinWallServiceI;

@Service("weixinWallService")
@Transactional
public class WeixinWallServiceImpl extends CommonServiceImpl
  implements WeixinWallServiceI
{
}