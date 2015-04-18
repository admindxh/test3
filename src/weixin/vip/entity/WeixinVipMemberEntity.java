package weixin.vip.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;
import org.jeecgframework.web.system.pojo.base.TSUser;

@Entity
@Table(name="weixin_vip_member", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class WeixinVipMemberEntity
  implements Serializable
{
  private String id;
  private String memberName;
  private BigDecimal memberBalance;
  private Integer memberIntegral;
  private Date createTime;
  private WeixinVipInfoEntity vipInfo;
  private TSUser tsuer;

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

  @Column(name="MEMBER_NAME", nullable=true, length=100)
  public String getMemberName()
  {
    return this.memberName;
  }

  public void setMemberName(String memberName)
  {
    this.memberName = memberName;
  }

  @Column(name="MEMBER_BALANCE", nullable=true, precision=9, scale=2)
  public BigDecimal getMemberBalance()
  {
    return this.memberBalance;
  }

  public void setMemberBalance(BigDecimal memberBalance)
  {
    this.memberBalance = memberBalance;
  }

  @Column(name="MEMBER_INTEGRAL", nullable=true, precision=10, scale=0)
  public Integer getMemberIntegral()
  {
    return this.memberIntegral;
  }

  public void setMemberIntegral(Integer memberIntegral)
  {
    this.memberIntegral = memberIntegral;
  }

  @Column(name="CREATE_TIME", nullable=false)
  public Date getCreateTime()
  {
    return this.createTime;
  }

  public void setCreateTime(Date createTime)
  {
    this.createTime = createTime;
  }

  @ManyToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="VIP_ID")
  public WeixinVipInfoEntity getVipInfo()
  {
    return this.vipInfo;
  }

  public void setVipInfo(WeixinVipInfoEntity vipInfo) {
    this.vipInfo = vipInfo;
  }
  @OneToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="MEMBER_ID")
  public TSUser getTsuer() {
    return this.tsuer;
  }

  public void setTsuer(TSUser tsuer) {
    this.tsuer = tsuer;
  }
}