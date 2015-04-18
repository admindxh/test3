package weixin.promotion.service.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.promotion.entity.MemberCouponEntity;
import weixin.promotion.entity.PromotionCouponEntity;
import weixin.promotion.service.PromotionCouponServiceI;
import weixin.vip.entity.WeixinVipInfoEntity;
import weixin.vip.entity.WeixinVipMemberEntity;
import weixin.vip.service.WeixinVipInfoServiceI;
import weixin.vip.service.WeixinVipMemberServiceI;

@Service("promotionCouponService")
@Transactional
public class PromotionCouponServiceImpl extends CommonServiceImpl
  implements PromotionCouponServiceI
{

  @Autowired
  private WeixinVipMemberServiceI weixinVipMemberService;

  @Autowired
  private WeixinVipInfoServiceI weixinVipInfoService;

  public List<MemberCouponEntity> findCouponByMember(String accountid, String userid, String[] goodids, Double price)
  {
    if ((userid == null) || (accountid == null) || (goodids == null) || (goodids.length == 0) || (price == null)) {
      return null;
    }
    List list = this.weixinVipInfoService.findByQueryString("from WeixinVipInfoEntity vipinfo where vipinfo.accountid='" + accountid + "'  order by vipinfo.levelId asc");

    if ((list == null) || (list.size() == 0)) {
      return null;
    }
    String str = "";
    for (int i = 0; i < list.size(); i++) {
      str = str + "'" + ((WeixinVipInfoEntity)list.get(i)).getId() + "',";
    }
    str = str.substring(0, str.length() - 1);
    List memberlist = this.weixinVipMemberService.findByQueryString("from WeixinVipMemberEntity m where m.vipInfo in (" + str + ") and m.tsuer = '" + userid + "'");

    if ((memberlist == null) || (memberlist.size() == 0)) {
      return null;
    }
    WeixinVipMemberEntity m = (WeixinVipMemberEntity)memberlist.get(0);
    List<MemberCouponEntity> clist = findByProperty(MemberCouponEntity.class, "memberVip.id", m.getId());
    List membercouponlist = new ArrayList();
    for (MemberCouponEntity c : clist)
    {
      if (c.getCoupon().getRestrictPrice().compareTo(new BigDecimal(price.doubleValue())) <= 1)
      {
        if (c.getCoupon().getRestrictType().equals("1")) {
          String goods = c.getCoupon().getRestrictGoods();
          if ((goods != null) && (!"".equals(goods)))
          {
            Boolean flag = couponGoodsvoGoods(goodids, goods.split(","));
            if (flag.booleanValue()) {
              membercouponlist.add(c);
            }
          }
        }
      }
    }
    return membercouponlist;
  }

  private Boolean couponGoodsvoGoods(String[] goods, String[] coupongoods) {
    Boolean flag = Boolean.valueOf(false);
    for (String g : goods) {
      for (String c : coupongoods) {
        if (c.equals(g)) {
          flag = Boolean.valueOf(true);
          break;
        }
      }
    }
    return flag;
  }

  public List<MemberCouponEntity> findCouponByMember(String memberid)
  {
    List clist = findByProperty(MemberCouponEntity.class, "memberVip.id", memberid);
    return clist;
  }
}