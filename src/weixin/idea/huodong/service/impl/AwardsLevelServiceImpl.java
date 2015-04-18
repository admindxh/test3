package weixin.idea.huodong.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.idea.huodong.service.AwardsLevelServiceI;

@Service("awardsLevelService")
@Transactional
public class AwardsLevelServiceImpl extends CommonServiceImpl
  implements AwardsLevelServiceI
{
}