package weixin.shop.base.entity;

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

@Entity
@Table(name="weixin_shop_orderdetail", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class WeixinShopOrderDetailEntity
  implements Serializable
{
  private String id;
  private WeixinShopDealEntity weixnShopOrder;
  private WeixinShopGoodsEntity weixinShopGoods;
  private String goodsProperty;
  private Double buyPrice;
  private Integer count;
  private String reducePrice;
  private Double total;
  private String buyerId;
  private String sellerId;
  private String accountid;

  @Id
  @GeneratedValue(generator="paymentableGenerator")
  @GenericGenerator(name="paymentableGenerator", strategy="uuid")
  @Column(name="ID", nullable=false, length=50)
  public String getId()
  {
    return this.id;
  }

  public void setId(String id)
  {
    this.id = id;
  }

  @ManyToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="ORDER_ID", nullable=true)
  public WeixinShopDealEntity getWeixnShopOrder()
  {
    return this.weixnShopOrder;
  }

  public void setWeixnShopOrder(WeixinShopDealEntity weixnShopOrder) {
    this.weixnShopOrder = weixnShopOrder;
  }

  @ManyToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="GOODS_ID", nullable=true)
  public WeixinShopGoodsEntity getWeixinShopGoods()
  {
    return this.weixinShopGoods;
  }

  public void setWeixinShopGoods(WeixinShopGoodsEntity weixinShopGoods) {
    this.weixinShopGoods = weixinShopGoods;
  }

  @Column(name="GOODS_PROPERTY", nullable=true, length=100)
  public String getGoodsProperty()
  {
    return this.goodsProperty;
  }

  public void setGoodsProperty(String goodsProperty)
  {
    this.goodsProperty = goodsProperty;
  }

  @Column(name="BUY_PRICE", nullable=true, precision=11, scale=0)
  public Double getBuyPrice()
  {
    return this.buyPrice;
  }

  public void setBuyPrice(Double buyPrice)
  {
    this.buyPrice = buyPrice;
  }

  @Column(name="COUNT", nullable=true, precision=10, scale=0)
  public Integer getCount()
  {
    return this.count;
  }

  public void setCount(Integer count)
  {
    this.count = count;
  }

  @Column(name="REDUCE_PRICE", nullable=true, length=100)
  public String getReducePrice()
  {
    return this.reducePrice;
  }

  public void setReducePrice(String reducePrice)
  {
    this.reducePrice = reducePrice;
  }

  @Column(name="TOTAL", nullable=true, precision=10, scale=0)
  public Double getTotal()
  {
    return this.total;
  }

  public void setTotal(Double total)
  {
    this.total = total;
  }

  @Column(name="BUYER_ID", nullable=true, length=50)
  public String getBuyerId()
  {
    return this.buyerId;
  }

  public void setBuyerId(String buyerId)
  {
    this.buyerId = buyerId;
  }

  @Column(name="SELLER_ID", nullable=true, length=50)
  public String getSellerId()
  {
    return this.sellerId;
  }

  public void setSellerId(String sellerId)
  {
    this.sellerId = sellerId;
  }

  @Column(name="ACCOUNTID", nullable=true, length=50)
  public String getAccountid()
  {
    return this.accountid;
  }

  public void setAccountid(String accountid)
  {
    this.accountid = accountid;
  }
}