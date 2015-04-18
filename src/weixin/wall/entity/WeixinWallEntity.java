package weixin.wall.entity;

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
@Table(name="weixin_wall", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class WeixinWallEntity
  implements Serializable
{
  private String id;
  private String name;
  private String keyword;
  private String logo;
  private String qrCode;
  private Date createtime;
  private Date starttime;
  private Date endtime;
  private String type;
  private Integer timer;
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

  @Column(name="NAME", nullable=true, length=200)
  public String getName()
  {
    return this.name;
  }

  public void setName(String name)
  {
    this.name = name;
  }

  @Column(name="KEYWORD", nullable=true, length=50)
  public String getKeyword()
  {
    return this.keyword;
  }

  public void setKeyword(String keyword)
  {
    this.keyword = keyword;
  }

  @Column(name="LOGO", nullable=true, length=500)
  public String getLogo()
  {
    return this.logo;
  }

  public void setLogo(String logo)
  {
    this.logo = logo;
  }

  @Column(name="QR_CODE", nullable=true, length=500)
  public String getQrCode()
  {
    return this.qrCode;
  }

  public void setQrCode(String qrCode)
  {
    this.qrCode = qrCode;
  }

  @Column(name="CREATETIME", nullable=true)
  public Date getCreatetime()
  {
    return this.createtime;
  }

  public void setCreatetime(Date createtime)
  {
    this.createtime = createtime;
  }

  @Column(name="STARTTIME", nullable=true)
  public Date getStarttime()
  {
    return this.starttime;
  }

  public void setStarttime(Date starttime)
  {
    this.starttime = starttime;
  }

  @Column(name="ENDTIME", nullable=true)
  public Date getEndtime()
  {
    return this.endtime;
  }

  public void setEndtime(Date endtime)
  {
    this.endtime = endtime;
  }

  @Column(name="TYPE", nullable=true, length=1)
  public String getType()
  {
    return this.type;
  }

  public void setType(String type)
  {
    this.type = type;
  }

  @Column(name="TIMER", nullable=true, precision=10, scale=0)
  public Integer getTimer()
  {
    return this.timer;
  }

  public void setTimer(Integer timer)
  {
    this.timer = timer;
  }

  @Column(name="accountid", length=36)
  public String getAccountid() {
    return this.accountid;
  }

  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }
}