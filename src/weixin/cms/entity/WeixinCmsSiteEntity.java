package weixin.cms.entity;

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
@Table(name="weixin_cms_site", schema="")
public class WeixinCmsSiteEntity
  implements Serializable
{
  private String id;
  private String createName;
  private Date createDate;
  private String updateName;
  private Date updateDate;

  @Excel(exportName="站点名称")
  private String siteName;

  @Excel(exportName="公司电话")
  private String companyTel;

  @Excel(exportName="站点logo")
  private String siteLogo;
  private String siteTemplateStyle;
  private String accountid;

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

  @Column(name="SITE_NAME", nullable=true, length=100)
  public String getSiteName()
  {
    return this.siteName;
  }

  public void setSiteName(String siteName)
  {
    this.siteName = siteName;
  }

  @Column(name="COMPANY_TEL", nullable=true, length=50)
  public String getCompanyTel()
  {
    return this.companyTel;
  }

  public void setCompanyTel(String companyTel)
  {
    this.companyTel = companyTel;
  }

  @Column(name="SITE_LOGO", nullable=true, length=200)
  public String getSiteLogo()
  {
    return this.siteLogo;
  }

  public void setSiteLogo(String siteLogo)
  {
    this.siteLogo = siteLogo;
  }

  @Column(name="SITE_TEMPLATE_STYLE", nullable=true, length=50)
  public String getSiteTemplateStyle()
  {
    return this.siteTemplateStyle;
  }

  public void setSiteTemplateStyle(String siteTemplateStyle)
  {
    this.siteTemplateStyle = siteTemplateStyle;
  }

  @Column(name="ACCOUNTID", nullable=true, length=32)
  public String getAccountid()
  {
    return this.accountid;
  }

  public void setAccountid(String accountid)
  {
    this.accountid = accountid;
  }
}