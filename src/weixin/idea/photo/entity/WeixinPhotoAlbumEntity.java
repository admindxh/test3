package weixin.idea.photo.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="weixin_photo_album", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class WeixinPhotoAlbumEntity
  implements Serializable
{
  private String id;
  private String name;
  private String content;
  private String accountid;
  private Date createDate;
  private String createBy;
  private Date updateDate;
  private String updateBy;
  private List<WeixinPhotoEntity> photos;
  private WeixinPhotoEntity photo;

  @Id
  @GeneratedValue(generator="paymentableGenerator")
  @GenericGenerator(name="paymentableGenerator", strategy="uuid")
  @Column(name="ID", nullable=false, length=32)
  public String getId()
  {
    return this.id;
  }

  public void setId(String id)
  {
    this.id = id;
  }

  @Column(name="NAME", nullable=true, length=100)
  public String getName()
  {
    return this.name;
  }

  public void setName(String name)
  {
    this.name = name;
  }

  @Column(name="CONTENT", nullable=true, length=255)
  public String getContent()
  {
    return this.content;
  }

  public void setContent(String content)
  {
    this.content = content;
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

  @Column(name="CREATE_DATE", nullable=true)
  public Date getCreateDate()
  {
    return this.createDate;
  }

  public void setCreateDate(Date createDate)
  {
    this.createDate = createDate;
  }

  @Column(name="CREATE_BY", nullable=true, length=32)
  public String getCreateBy()
  {
    return this.createBy;
  }

  public void setCreateBy(String createBy)
  {
    this.createBy = createBy;
  }

  @Column(name="UPDATE_DATE", nullable=true)
  public Date getUpdateDate()
  {
    return this.updateDate;
  }

  public void setUpdateDate(Date updateDate)
  {
    this.updateDate = updateDate;
  }

  @Column(name="UPDATE_BY", nullable=true, length=32)
  public String getUpdateBy()
  {
    return this.updateBy;
  }

  public void setUpdateBy(String updateBy)
  {
    this.updateBy = updateBy;
  }

  @OneToMany(fetch=FetchType.LAZY, mappedBy="album")
  public List<WeixinPhotoEntity> getPhotos()
  {
    return this.photos;
  }

  public void setPhotos(List<WeixinPhotoEntity> photos) {
    this.photos = photos;
  }
  @OneToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="PHOTO_ID")
  public WeixinPhotoEntity getPhoto() { return this.photo; }

  public void setPhoto(WeixinPhotoEntity photo)
  {
    this.photo = photo;
  }
}