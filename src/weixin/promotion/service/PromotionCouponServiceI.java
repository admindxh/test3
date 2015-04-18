package weixin.promotion.service;

import java.util.List;
import org.jeecgframework.core.common.service.CommonService;
import weixin.promotion.entity.MemberCouponEntity;

public abstract interface PromotionCouponServiceI extends CommonService
{
  public abstract List<MemberCouponEntity> findCouponByMember(String paramString1, String paramString2, String[] paramArrayOfString, Double paramDouble);

  public abstract List<MemberCouponEntity> findCouponByMember(String paramString);
}