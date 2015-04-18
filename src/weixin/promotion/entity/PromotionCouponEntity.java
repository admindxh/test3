package weixin.promotion.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="weixin_promotion_coupon", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class PromotionCouponEntity
  implements Serializable
{
  private String id;
  private String name;
  private BigDecimal price;
  private String code;
  private String type;
  private Integer quantity;
  private Date startTime;
  private Date endTime;
  private Date createTime;
  private String accountid;
  private String restrictType;
  private BigDecimal restrictPrice;
  private String status;
  private String restrictGoods;

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

  @Column(name="NAME", nullable=true, length=200)
  public String getName()
  {
    return this.name;
  }

  public void setName(String name)
  {
    this.name = name;
  }

  @Column(name="PRICE", nullable=true, precision=10, scale=0)
  public BigDecimal getPrice()
  {
    return this.price;
  }

  public void setPrice(BigDecimal price)
  {
    this.price = price;
  }

  @Column(name="CODE", nullable=true, length=200)
  public String getCode()
  {
    return this.code;
  }

  public void setCode(String code)
  {
    this.code = code;
  }

  @Column(name="TYPE", nullable=true, length=2)
  public String getType()
  {
    return this.type;
  }

  public void setType(String type)
  {
    this.type = type;
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

  @Column(name="START_TIME", nullable=true)
  public Date getStartTime()
  {
    return this.startTime;
  }

  public void setStartTime(Date startTime)
  {
    this.startTime = startTime;
  }

  @Column(name="END_TIME", nullable=true)
  public Date getEndTime()
  {
    return this.endTime;
  }

  public void setEndTime(Date endTime)
  {
    this.endTime = endTime;
  }

  @Column(name="CREATE_TIME", nullable=true)
  public Date getCreateTime()
  {
    return this.createTime;
  }

  public void setCreateTime(Date createTime)
  {
    this.createTime = createTime;
  }

  @Column(name="ACCOUNTID", nullable=true, length=36)
  public String getAccountid()
  {
    return this.accountid;
  }

  public void setAccountid(String accountid)
  {
    this.accountid = accountid;
  }

  @Column(name="RESTRICT_TYPE", nullable=true, length=2)
  public String getRestrictType()
  {
    return this.restrictType;
  }

  public void setRestrictType(String restrictType)
  {
    this.restrictType = restrictType;
  }

  @Column(name="RESTRICT_PRICE", nullable=true, precision=10, scale=0)
  public BigDecimal getRestrictPrice()
  {
    return this.restrictPrice;
  }

  public void setRestrictPrice(BigDecimal restrictPrice)
  {
    this.restrictPrice = restrictPrice;
  }

  @Column(name="STATUS", nullable=true, length=2)
  public String getStatus() {
    return this.status;
  }

  public void setStatus(String status)
  {
    this.status = status;
  }
  @Column(name="RESTRICTGOODS", nullable=true, length=5000)
  public String getRestrictGoods() {
    return this.restrictGoods;
  }

  public void setRestrictGoods(String restrictGoods)
  {
    this.restrictGoods = restrictGoods;
  }
}