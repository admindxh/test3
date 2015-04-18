package weixin.idea.qrcode.entity;

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
@Table(name="weixin_qrcode")
public class WeixinQrcodeEntity
  implements Serializable
{
  private String id;
  private String createName;
  private Date createDate;
  private String updateName;
  private Date updateDate;

  @Excel(exportName="有效时间")
  private Integer expireSeconds;

  @Excel(exportName="二维码类型")
  private String actionName;

  @Excel(exportName="二维码详细信息")
  private String actionInfo;

  @Excel(exportName="场景键")
  private Integer sceneId;
  private String accountid;
  private String imageurl;

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

  @Column(name="EXPIRE_SECONDS", nullable=true, length=11)
  public Integer getExpireSeconds()
  {
    return this.expireSeconds;
  }

  public void setExpireSeconds(Integer expireSeconds)
  {
    this.expireSeconds = expireSeconds;
  }

  @Column(name="ACTION_NAME", nullable=true, length=32)
  public String getActionName()
  {
    return this.actionName;
  }

  public void setActionName(String actionName)
  {
    this.actionName = actionName;
  }

  @Column(name="ACTION_INFO", nullable=true, length=32)
  public String getActionInfo()
  {
    return this.actionInfo;
  }

  public void setActionInfo(String actionInfo)
  {
    this.actionInfo = actionInfo;
  }

  @Column(name="SCENE_ID", nullable=true, length=11)
  public Integer getSceneId()
  {
    return this.sceneId;
  }

  public void setSceneId(Integer sceneId)
  {
    this.sceneId = sceneId;
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
  @Column(name="IMAGEURL", nullable=true, length=50)
  public String getImageurl() {
    return this.imageurl;
  }

  public void setImageurl(String imageurl) {
    this.imageurl = imageurl;
  }
}