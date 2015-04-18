package weixin.wall.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.wall.service.WeixinWallMessageServiceI;

@Service("weixinWallMessageService")
@Transactional
public class WeixinWallMessageServiceImpl extends CommonServiceImpl
  implements WeixinWallMessageServiceI
{
}