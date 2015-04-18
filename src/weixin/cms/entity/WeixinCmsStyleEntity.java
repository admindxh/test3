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
@Table(name="weixin_cms_style", schema="")
public class WeixinCmsStyleEntity
  implements Serializable
{
  private String id;
  private String createName;
  private Date createDate;
  private String updateName;
  private Date updateDate;

  @Excel(exportName="模板名称")
  private String templateName;

  @Excel(exportName="模板路径")
  private String templateUrl;

  @Excel(exportName="预览图")
  private String reviewImgUrl;
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

  @Column(name="TEMPLATE_NAME", nullable=true, length=100)
  public String getTemplateName()
  {
    return this.templateName;
  }

  public void setTemplateName(String templateName)
  {
    this.templateName = templateName;
  }

  @Column(name="TEMPLATE_URL", nullable=true, length=200)
  public String getTemplateUrl()
  {
    return this.templateUrl;
  }

  public void setTemplateUrl(String templateUrl)
  {
    this.templateUrl = templateUrl;
  }

  @Column(name="REVIEW_IMG_URL", nullable=true, length=100)
  public String getReviewImgUrl()
  {
    return this.reviewImgUrl;
  }

  public void setReviewImgUrl(String reviewImgUrl)
  {
    this.reviewImgUrl = reviewImgUrl;
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