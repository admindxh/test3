package weixin.guanjia.gzgroup.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.gzgroup.service.GroupYwServiceI;

@Service("groupYwService")
@Transactional
public class GroupYwServiceImpl extends CommonServiceImpl
  implements GroupYwServiceI
{
}