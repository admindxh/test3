package weixin.vip.entity;

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
@Table(name="weixin_vip_info", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class WeixinVipInfoEntity
  implements Serializable
{
  private String id;
  private String vipName;
  private String vipImg;
  private String vipDescribe;
  private String vipCofing;
  private Date startTime;
  private Date endTime;
  private String levelId;
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

  @Column(name="VIP_NAME", nullable=false, length=100)
  public String getVipName()
  {
    return this.vipName;
  }

  public void setVipName(String vipName)
  {
    this.vipName = vipName;
  }

  @Column(name="VIP_IMG", nullable=true, length=200)
  public String getVipImg()
  {
    return this.vipImg;
  }

  public void setVipImg(String vipImg)
  {
    this.vipImg = vipImg;
  }

  @Column(name="VIP_DESCRIBE", nullable=true, length=200)
  public String getVipDescribe()
  {
    return this.vipDescribe;
  }

  public void setVipDescribe(String vipDescribe)
  {
    this.vipDescribe = vipDescribe;
  }

  @Column(name="VIP_COFING", nullable=true, length=20)
  public String getVipCofing()
  {
    return this.vipCofing;
  }

  public void setVipCofing(String vipCofing)
  {
    this.vipCofing = vipCofing;
  }

  @Column(name="START_TIME", nullable=true)
  public Date getStartTime()
  {
    return this.startTime;
  }

  public void setStartTime(Date startTime)
  {
    this.startTime = startTime;
  }

  @Column(name="END_TIME", nullable=true)
  public Date getEndTime()
  {
    return this.endTime;
  }

  public void setEndTime(Date endTime)
  {
    this.endTime = endTime;
  }

  @Column(name="LEVEL_ID", nullable=false, length=36)
  public String getLevelId()
  {
    return this.levelId;
  }

  public void setLevelId(String levelId)
  {
    this.levelId = levelId;
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
}