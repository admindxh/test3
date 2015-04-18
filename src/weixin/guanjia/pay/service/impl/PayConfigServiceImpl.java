package weixin.guanjia.pay.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.pay.service.PayConfigServiceI;

@Service("payConfigService")
@Transactional
public class PayConfigServiceImpl extends CommonServiceImpl implements PayConfigServiceI {
}