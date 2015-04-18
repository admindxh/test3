package weixin.shop.base.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

@Entity
@Table(name="weixin_shop_category", schema="")
public class WeixinShopCategoryEntity
  implements Serializable
{
  private String id;
  private String createName;
  private Date createDate;
  private String updateName;
  private Date updateDate;

  @Excel(exportName="分类名称")
  private String name;

  @Excel(exportName="图片路径")
  private String imgurl;
  private WeixinShopCategoryEntity weixinShopCategoryEntity;
  private String sellerId;
  private String accountid;
  private List<WeixinShopCategoryEntity> categoryList = new ArrayList();

  public String getAccountid()
  {
    return this.accountid;
  }

  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }

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

  @Column(name="NAME", nullable=true, length=50)
  public String getName()
  {
    return this.name;
  }

  public void setName(String name)
  {
    this.name = name;
  }

  @Column(name="IMGURL", nullable=true, length=200)
  public String getImgurl()
  {
    return this.imgurl;
  }

  public void setImgurl(String imgurl)
  {
    this.imgurl = imgurl;
  }
  @ManyToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="PARENTID")
  public WeixinShopCategoryEntity getWeixinShopCategoryEntity() {
    return this.weixinShopCategoryEntity;
  }

  public void setWeixinShopCategoryEntity(WeixinShopCategoryEntity weixinShopCategoryEntity) {
    this.weixinShopCategoryEntity = weixinShopCategoryEntity;
  }

  @Column(name="SELLER_ID", nullable=true, length=36)
  public String getSellerId()
  {
    return this.sellerId;
  }

  public void setSellerId(String sellerId)
  {
    this.sellerId = sellerId;
  }
  @OneToMany(cascade={javax.persistence.CascadeType.ALL}, fetch=FetchType.LAZY, mappedBy="weixinShopCategoryEntity")
  public List<WeixinShopCategoryEntity> getCategoryList() {
    return this.categoryList;
  }
  public void setCategoryList(List<WeixinShopCategoryEntity> categoryList) {
    this.categoryList = categoryList;
  }
}