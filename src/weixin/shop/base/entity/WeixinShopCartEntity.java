package weixin.shop.base.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;
import org.jeecgframework.web.system.pojo.base.TSUser;

@Entity
@Table(name="weixin_shop_cart", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class WeixinShopCartEntity
  implements Serializable
{
  private String id;
  private WeixinShopGoodsEntity shopGoodsEntity;
  private String goodsProperty;
  private Double buyPrice;
  private Integer count;
  private Double total;
  private TSUser buyer;
  private TSUser seller;
  private String accountid;

  @Id
  @GeneratedValue(generator="paymentableGenerator")
  @GenericGenerator(name="paymentableGenerator", strategy="uuid")
  @Column(name="ID", nullable=false, length=40)
  public String getId()
  {
    return this.id;
  }

  public void setId(String id)
  {
    this.id = id;
  }

  @Column(name="GOODS_PROPERTY", nullable=true, length=200)
  public String getGoodsProperty()
  {
    return this.goodsProperty;
  }

  public void setGoodsProperty(String goodsProperty)
  {
    this.goodsProperty = goodsProperty;
  }

  @Column(name="BUY_PRICE", nullable=true, precision=10, scale=0)
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

  @Column(name="TOTAL", nullable=true, precision=10, scale=0)
  public Double getTotal()
  {
    return this.total;
  }

  public void setTotal(Double total)
  {
    this.total = total;
  }

  @OneToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="buyer_id")
  public TSUser getBuyer()
  {
    return this.buyer;
  }

  public void setBuyer(TSUser buyer) {
    this.buyer = buyer;
  }

  @OneToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="seller_id")
  public TSUser getSeller()
  {
    return this.seller;
  }

  public void setSeller(TSUser seller) {
    this.seller = seller;
  }
  @OneToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="goods_id")
  public WeixinShopGoodsEntity getShopGoodsEntity() {
    return this.shopGoodsEntity;
  }

  public void setShopGoodsEntity(WeixinShopGoodsEntity shopGoodsEntity) {
    this.shopGoodsEntity = shopGoodsEntity;
  }

  public String getAccountid() {
    return this.accountid;
  }

  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }
}