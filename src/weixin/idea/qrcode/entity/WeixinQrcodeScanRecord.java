package weixin.idea.qrcode.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="weixin_qrcode_scan_record", schema="")
public class WeixinQrcodeScanRecord
{
  private String id;
  private String scenevalue;
  private String scenekey;
  private String imageurl;
  private String openid;
  private String nickname;
  private Date scantime;
  private String accountid;

  @Id
  @GeneratedValue(generator="paymentableGenerator")
  @GenericGenerator(name="paymentableGenerator", strategy="uuid")
  @Column(name="ID", nullable=false, length=36)
  public String getId()
  {
    return this.id;
  }

  public void setId(String id) {
    this.id = id;
  }

  @Column(name="SCENEVALUE", nullable=true, length=50)
  public String getScenevalue() {
    return this.scenevalue;
  }
  public void setScenevalue(String scenevalue) {
    this.scenevalue = scenevalue;
  }
  @Column(name="SCENEKEY", nullable=true, length=10)
  public String getScenekey() {
    return this.scenekey;
  }
  public void setScenekey(String scenekey) {
    this.scenekey = scenekey;
  }
  @Column(name="IMAGEURL", nullable=true, length=500)
  public String getImageurl() {
    return this.imageurl;
  }
  public void setImageurl(String imageurl) {
    this.imageurl = imageurl;
  }
  @Column(name="OPENID", nullable=true, length=100)
  public String getOpenid() {
    return this.openid;
  }
  public void setOpenid(String openid) {
    this.openid = openid;
  }
  @Column(name="NICKNAME", nullable=true, length=100)
  public String getNickname() {
    return this.nickname;
  }
  public void setNickname(String nickname) {
    this.nickname = nickname;
  }
  @Column(name="SCANTIME", nullable=true, length=20)
  public Date getScantime() {
    return this.scantime;
  }
  public void setScantime(Date scantime) {
    this.scantime = scantime;
  }
  @Column(name="ACCOUNTID", nullable=true, length=50)
  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }

  public String getAccountid() {
    return this.accountid;
  }
}