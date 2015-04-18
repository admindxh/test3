package weixin.guanjia.location.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.location.service.LocationServiceI;

@Service("locationEntityService")
@Transactional
public class LocationEntityServiceImpl extends CommonServiceImpl implements LocationServiceI {
}