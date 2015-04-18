package weixin.idea.huodong.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.idea.huodong.service.HuoDongAwardServiceI;

@Service("huoDongAwardService")
@Transactional
public class HuoDongAwardServiceImpl extends CommonServiceImpl
  implements HuoDongAwardServiceI
{
}