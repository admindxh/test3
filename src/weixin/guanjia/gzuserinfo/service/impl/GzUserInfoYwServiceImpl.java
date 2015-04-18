package weixin.guanjia.gzuserinfo.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.gzuserinfo.service.GzUserInfoYwServiceI;

@Service("gzUserInfoYwService")
@Transactional
public class GzUserInfoYwServiceImpl extends CommonServiceImpl
  implements GzUserInfoYwServiceI
{
}