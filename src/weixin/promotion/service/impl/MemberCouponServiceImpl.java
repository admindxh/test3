package weixin.promotion.service.impl;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.promotion.service.MemberCouponServiceI;

@Service("memberCouponService")
@Transactional
public class MemberCouponServiceImpl extends CommonServiceImpl
  implements MemberCouponServiceI
{
}