package weixin.shop.base.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

@Entity
@Table(name="weixin_shop_deal", schema="")
public class WeixinShopDealEntity
  implements Serializable
{
  private String id;
  private String createName;
  private Date createDate;
  private String updateName;
  private Date updateDate;

  @Excel(exportName="订单编号")
  private String dealNumber;

  @Excel(exportName="支付方式")
  private String paytype;

  @Excel(exportName="交易号")
  private String payNumber;

  @Excel(exportName="买家id")
  private String buyerId;

  @Excel(exportName="卖家id")
  private String sellerId;

  @Excel(exportName="配送信息")
  private String addressDetail;

  @Excel(exportName="订单状态")
  private String dealStatement;

  @Excel(exportName="配送方式")
  private String sendtype;

  @Excel(exportName="快递名称")
  private String expressName;

  @Excel(exportName="运单号")
  private String expressNumber;

  @Excel(exportName="联系电话")
  private String tel;

  @Excel(exportName="下单时间")
  private String dealTime;

  @Excel(exportName="支付时间")
  private String payTime;

  @Excel(exportName="发货时间")
  private String sendoutTime;

  @Excel(exportName="确认收获时间")
  private String confirmTime;

  @Excel(exportName="买家留言")
  private String buyerLeaveWords;

  @Excel(exportName="卖家留言")
  private String sellerLeaveWords;

  @Excel(exportName="优惠降价")
  private Double reducePrice;

  @Excel(exportName="应付金额")
  private Double yfmny;

  @Excel(exportName="实付金额")
  private Double sfmny;
  private Integer buycount;

  @Excel(exportName="积分抵用金额")
  private Double jfmny;

  @Excel(exportName="备注")
  private String memo;
  private String receivename;
  private String receiveaddress;
  private String receivepostno;
  private String receivephone;
  private String receivemobile;
  private double expresstotal;
  private List<WeixinShopOrderDetailEntity> orderDetailList;

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

  @Column(name="CREATE_NAME", nullable=true, length=50)
  public String getCreateName()
  {
    return this.createName;
  }

  public void setCreateName(String createName)
  {
    this.createName = createName;
  }

  @Column(name="CREATE_DATE", nullable=true, length=20)
  public Date getCreateDate()
  {
    return this.createDate;
  }

  public void setCreateDate(Date createDate)
  {
    this.createDate = createDate;
  }

  @Column(name="UPDATE_NAME", nullable=true, length=50)
  public String getUpdateName()
  {
    return this.updateName;
  }

  public void setUpdateName(String updateName)
  {
    this.updateName = updateName;
  }

  @Column(name="UPDATE_DATE", nullable=true, length=20)
  public Date getUpdateDate()
  {
    return this.updateDate;
  }

  public void setUpdateDate(Date updateDate)
  {
    this.updateDate = updateDate;
  }

  @Column(name="DEAL_NUMBER", nullable=true, length=32)
  public String getDealNumber()
  {
    return this.dealNumber;
  }

  public void setDealNumber(String dealNumber)
  {
    this.dealNumber = dealNumber;
  }

  @Column(name="PAYTYPE", nullable=true, length=32)
  public String getPaytype()
  {
    return this.paytype;
  }

  public void setPaytype(String paytype)
  {
    this.paytype = paytype;
  }

  @Column(name="PAY_NUMBER", nullable=true, length=32)
  public String getPayNumber()
  {
    return this.payNumber;
  }

  public void setPayNumber(String payNumber)
  {
    this.payNumber = payNumber;
  }

  @Column(name="BUYER_ID", nullable=true, length=32)
  public String getBuyerId()
  {
    return this.buyerId;
  }

  public void setBuyerId(String buyerId)
  {
    this.buyerId = buyerId;
  }

  @Column(name="SELLER_ID", nullable=true, length=32)
  public String getSellerId()
  {
    return this.sellerId;
  }

  public void setSellerId(String sellerId)
  {
    this.sellerId = sellerId;
  }

  @Column(name="ADDRESS_DETAIL", nullable=true, length=32)
  public String getAddressDetail()
  {
    return this.addressDetail;
  }

  public void setAddressDetail(String addressDetail)
  {
    this.addressDetail = addressDetail;
  }

  @Column(name="DEAL_STATEMENT", nullable=true, length=32)
  public String getDealStatement()
  {
    return this.dealStatement;
  }

  public void setDealStatement(String dealStatement)
  {
    this.dealStatement = dealStatement;
  }

  @Column(name="SENDTYPE", nullable=true, length=32)
  public String getSendtype()
  {
    return this.sendtype;
  }

  public void setSendtype(String sendtype)
  {
    this.sendtype = sendtype;
  }

  @Column(name="EXPRESS_NAME", nullable=true, length=32)
  public String getExpressName()
  {
    return this.expressName;
  }

  public void setExpressName(String expressName)
  {
    this.expressName = expressName;
  }

  @Column(name="EXPRESS_NUMBER", nullable=true, length=32)
  public String getExpressNumber()
  {
    return this.expressNumber;
  }

  public void setExpressNumber(String expressNumber)
  {
    this.expressNumber = expressNumber;
  }

  @Column(name="TEL", nullable=true, length=32)
  public String getTel()
  {
    return this.tel;
  }

  public void setTel(String tel)
  {
    this.tel = tel;
  }

  @Column(name="DEAL_TIME", nullable=true, length=32)
  public String getDealTime()
  {
    return this.dealTime;
  }

  public void setDealTime(String dealTime)
  {
    this.dealTime = dealTime;
  }

  @Column(name="PAY_TIME", nullable=true, length=32)
  public String getPayTime()
  {
    return this.payTime;
  }

  public void setPayTime(String payTime)
  {
    this.payTime = payTime;
  }

  @Column(name="SENDOUT_TIME", nullable=true, length=32)
  public String getSendoutTime()
  {
    return this.sendoutTime;
  }

  public void setSendoutTime(String sendoutTime)
  {
    this.sendoutTime = sendoutTime;
  }

  @Column(name="CONFIRM_TIME", nullable=true, length=32)
  public String getConfirmTime()
  {
    return this.confirmTime;
  }

  public void setConfirmTime(String confirmTime)
  {
    this.confirmTime = confirmTime;
  }

  @Column(name="BUYER_LEAVE_WORDS", nullable=true, length=32)
  public String getBuyerLeaveWords()
  {
    return this.buyerLeaveWords;
  }

  public void setBuyerLeaveWords(String buyerLeaveWords)
  {
    this.buyerLeaveWords = buyerLeaveWords;
  }

  @Column(name="SELLER_LEAVE_WORDS", nullable=true, length=32)
  public String getSellerLeaveWords()
  {
    return this.sellerLeaveWords;
  }

  public void setSellerLeaveWords(String sellerLeaveWords)
  {
    this.sellerLeaveWords = sellerLeaveWords;
  }

  @Column(name="REDUCE_PRICE", nullable=true, length=32)
  public Double getReducePrice()
  {
    return this.reducePrice;
  }

  public void setReducePrice(Double reducePrice)
  {
    this.reducePrice = reducePrice;
  }

  @Column(name="YFMNY", nullable=true, length=32)
  public Double getYfmny()
  {
    return this.yfmny;
  }

  public void setYfmny(Double yfmny)
  {
    this.yfmny = yfmny;
  }

  @Column(name="SFMNY", nullable=true, length=32)
  public Double getSfmny()
  {
    return this.sfmny;
  }

  public void setSfmny(Double sfmny)
  {
    this.sfmny = sfmny;
  }

  @Column(name="JFMNY", nullable=true, length=32)
  public Double getJfmny()
  {
    return this.jfmny;
  }

  public void setJfmny(Double jfmny)
  {
    this.jfmny = jfmny;
  }

  @Column(name="MEMO", nullable=true, length=32)
  public String getMemo()
  {
    return this.memo;
  }

  public void setMemo(String memo)
  {
    this.memo = memo;
  }

  @Column(name="buycount", nullable=false, length=32)
  public Integer getBuycount()
  {
    return this.buycount;
  }

  public void setBuycount(Integer buycount) {
    this.buycount = buycount;
  }

  @Column(name="receivename", nullable=true, length=50)
  public String getReceivename() {
    return this.receivename;
  }

  public void setReceivename(String receivename) {
    this.receivename = receivename;
  }
  @Column(name="receiveaddress", nullable=true, length=100)
  public String getReceiveaddress() {
    return this.receiveaddress;
  }

  public void setReceiveaddress(String receiveaddress) {
    this.receiveaddress = receiveaddress;
  }
  @Column(name="receivepostno", nullable=true, length=50)
  public String getReceivepostno() {
    return this.receivepostno;
  }

  public void setReceivepostno(String receivepostno) {
    this.receivepostno = receivepostno;
  }
  @Column(name="receivephone", nullable=true, length=50)
  public String getReceivephone() {
    return this.receivephone;
  }

  public void setReceivephone(String receivephone) {
    this.receivephone = receivephone;
  }
  @Column(name="receivemobile", nullable=true, length=50)
  public String getReceivemobile() {
    return this.receivemobile;
  }

  public void setReceivemobile(String receivemobile) {
    this.receivemobile = receivemobile;
  }
  @Column(name="expresstotal", nullable=false, length=50)
  public double getExpresstotal() {
    return this.expresstotal;
  }

  public void setExpresstotal(double expresstotal) {
    this.expresstotal = expresstotal;
  }

  @OneToMany(cascade={javax.persistence.CascadeType.ALL}, fetch=FetchType.LAZY, mappedBy="weixnShopOrder")
  public List<WeixinShopOrderDetailEntity> getOrderDetailList() {
    return this.orderDetailList;
  }

  public void setOrderDetailList(List<WeixinShopOrderDetailEntity> orderDetailList) {
    this.orderDetailList = orderDetailList;
  }
}