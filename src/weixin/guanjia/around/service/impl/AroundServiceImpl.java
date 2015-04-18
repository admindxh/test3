package weixin.guanjia.around.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.around.service.AroundServiceI;

@Service("aroundService")
@Transactional
public class AroundServiceImpl extends CommonServiceImpl implements AroundServiceI {
}