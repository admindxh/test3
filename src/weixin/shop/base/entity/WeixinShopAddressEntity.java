package weixin.shop.base.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

@Entity
@Table(name="weixin_shop_address", schema="")
public class WeixinShopAddressEntity
  implements Serializable
{
  private String id;
  private String createName;
  private Date createDate;
  private String updateName;
  private Date updateDate;

  @Excel(exportName="公众帐号ID")
  private String accountid;

  @Excel(exportName="用户ID")
  private String openid;

  @Excel(exportName="用户ID2")
  private String userid;

  @Excel(exportName="省份")
  private String province;

  @Excel(exportName="城市")
  private String city;

  @Excel(exportName="县区")
  private String area;

  @Excel(exportName="详细地址")
  private String address;

  @Excel(exportName="收件人姓名")
  private String realname;

  @Excel(exportName="收件人电话")
  private String tel;

  @Excel(exportName="邮编")
  private String postno;
  private int defaultflag;
  private String alladdress;

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

  @Column(name="ACCOUNTID", nullable=true, length=50)
  public String getAccountid()
  {
    return this.accountid;
  }

  public void setAccountid(String accountid)
  {
    this.accountid = accountid;
  }

  @Column(name="OPENID", nullable=true, length=50)
  public String getOpenid()
  {
    return this.openid;
  }

  public void setOpenid(String openid)
  {
    this.openid = openid;
  }

  @Column(name="USERID", nullable=true, length=50)
  public String getUserid()
  {
    return this.userid;
  }

  public void setUserid(String userid)
  {
    this.userid = userid;
  }

  @Column(name="PROVINCE", nullable=true, length=50)
  public String getProvince()
  {
    return this.province;
  }

  public void setProvince(String province)
  {
    this.province = province;
  }

  @Column(name="CITY", nullable=true, length=50)
  public String getCity()
  {
    return this.city;
  }

  public void setCity(String city)
  {
    this.city = city;
  }

  @Column(name="AREA", nullable=true, length=50)
  public String getArea()
  {
    return this.area;
  }

  public void setArea(String area)
  {
    this.area = area;
  }

  @Column(name="ADDRESS", nullable=true, length=200)
  public String getAddress()
  {
    return this.address;
  }

  public void setAddress(String address)
  {
    this.address = address;
  }

  @Column(name="REALNAME", nullable=true, length=50)
  public String getRealname()
  {
    return this.realname;
  }

  public void setRealname(String realname)
  {
    this.realname = realname;
  }

  @Column(name="TEL", nullable=true, length=50)
  public String getTel()
  {
    return this.tel;
  }

  public void setTel(String tel)
  {
    this.tel = tel;
  }

  @Column(name="POSTNO", nullable=true, length=10)
  public String getPostno()
  {
    return this.postno;
  }

  public void setPostno(String postno)
  {
    this.postno = postno;
  }
  @Column(name="defaultflag", nullable=true)
  public int getDefaultflag() {
    return this.defaultflag;
  }

  public void setDefaultflag(int defaultflag) {
    this.defaultflag = defaultflag;
  }

  @Column(name="alladdress")
  public String getAlladdress() {
    return this.alladdress;
  }

  public void setAlladdress(String alladdress) {
    this.alladdress = alladdress;
  }
}