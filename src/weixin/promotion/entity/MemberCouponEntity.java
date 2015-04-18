package weixin.promotion.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;
import weixin.vip.entity.WeixinVipMemberEntity;

@Entity
@Table(name="weixin_member_coupon", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class MemberCouponEntity
  implements Serializable
{
  private String id;
  private PromotionCouponEntity coupon;
  private WeixinVipMemberEntity memberVip;
  private Integer quantity;

  @Id
  @GeneratedValue(generator="paymentableGenerator")
  @GenericGenerator(name="paymentableGenerator", strategy="uuid")
  @Column(name="ID", nullable=false, length=36)
  public String getId()
  {
    return this.id;
  }

  public void setId(String id)
  {
    this.id = id;
  }

  @ManyToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="COUPONID")
  public PromotionCouponEntity getCoupon()
  {
    return this.coupon;
  }

  public void setCoupon(PromotionCouponEntity coupon)
  {
    this.coupon = coupon;
  }

  @ManyToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="MEMBER_VIP_ID")
  public WeixinVipMemberEntity getMemberVip()
  {
    return this.memberVip;
  }

  public void setMemberVip(WeixinVipMemberEntity memberVip)
  {
    this.memberVip = memberVip;
  }

  @Column(name="QUANTITY", nullable=true, precision=10, scale=0)
  public Integer getQuantity()
  {
    return this.quantity;
  }

  public void setQuantity(Integer quantity)
  {
    this.quantity = quantity;
  }
}