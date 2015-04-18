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

@Entity
@Table(name="weixin_cms_article", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class CmsArticleEntity
  implements Serializable
{
  private String id;
  private String title;
  private String imageName;
  private String imageHref;
  private String summary;
  private String content;
  private String columnId;
  private String accountid;
  private String createName;
  private String createBy;
  private Date createDate;
  private Integer viewCount;

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

  @Column(name="TITLE", nullable=true, length=50)
  public String getTitle()
  {
    return this.title;
  }

  public void setTitle(String title)
  {
    this.title = title;
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

  @Column(name="SUMMARY", nullable=true, length=255)
  public String getSummary() {
    return this.summary;
  }

  public void setSummary(String summary) {
    this.summary = summary;
  }

  @Column(name="CONTENT", nullable=true, length=20000)
  public String getContent()
  {
    return this.content;
  }

  public void setContent(String content)
  {
    this.content = content;
  }

  @Column(name="COLUMN_ID", nullable=true, length=36)
  public String getColumnId() {
    return this.columnId;
  }

  public void setColumnId(String columnId) {
    this.columnId = columnId;
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

  @Column(name="VIEW_COUNT", nullable=true, precision=10, scale=0)
  public Integer getViewCount()
  {
    return this.viewCount;
  }

  public void setViewCount(Integer viewCount)
  {
    this.viewCount = viewCount;
  }
}