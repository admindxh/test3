package weixin.cms.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.OrderBy;

@Entity
@Table(name="weixin_cms_menu", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class CmsMenuEntity
  implements Serializable
{
  private String id;
  private String name;
  private String type;
  private String imageName;
  private String imageHref;
  private String accountid;
  private String createName;
  private String createBy;
  private Date createDate;
  private Integer orders;
  private String showFlag;

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

  @Column(name="NAME", nullable=true, length=20)
  public String getName()
  {
    return this.name;
  }

  public void setName(String name)
  {
    this.name = name;
  }

  @Column(name="IMAGE_NAME", nullable=true, length=255)
  public String getImageName()
  {
    return this.imageName;
  }

  public void setImageName(String imageName)
  {
    this.imageName = imageName;
  }

  @Column(name="IMAGE_HREF", nullable=true, length=255)
  public String getImageHref()
  {
    return this.imageHref;
  }

  public void setImageHref(String imageHref)
  {
    this.imageHref = imageHref;
  }

  @Column(name="ACCOUNTID", nullable=true, length=100)
  public String getAccountid()
  {
    return this.accountid;
  }

  public void setAccountid(String accountid)
  {
    this.accountid = accountid;
  }

  @Column(name="CREATE_NAME", nullable=true, length=255)
  public String getCreateName()
  {
    return this.createName;
  }

  public void setCreateName(String createName)
  {
    this.createName = createName;
  }

  @Column(name="CREATE_BY", nullable=true, length=255)
  public String getCreateBy()
  {
    return this.createBy;
  }

  public void setCreateBy(String createBy)
  {
    this.createBy = createBy;
  }

  @Column(name="CREATE_DATE", nullable=true)
  public Date getCreateDate()
  {
    return this.createDate;
  }

  public void setCreateDate(Date createDate)
  {
    this.createDate = createDate;
  }

  public String getType() {
    return this.type;
  }

  public void setType(String type) {
    this.type = type;
  }
  @Column(name="ORDERS", nullable=true)
  @OrderBy(clause="ORDERS ASC")
  public Integer getOrders() { return this.orders; }

  public void setOrders(Integer orders)
  {
    this.orders = orders;
  }

  @Column(name="SHOW_FLAG", length=1)
  public String getShowFlag() {
    return this.showFlag;
  }

  public void setShowFlag(String showFlag) {
    this.showFlag = showFlag;
  }
}