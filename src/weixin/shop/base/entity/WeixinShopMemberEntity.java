package weixin.shop.base.entity;

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
@Table(name="weixin_shop_member", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class WeixinShopMemberEntity
  implements Serializable
{
  private String id;
  private String username;
  private String password;
  private Date addtime;
  private String mobile;
  private String accountid;

  public String getAccountid()
  {
    return this.accountid;
  }

  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }

  @Id
  @GeneratedValue(generator="paymentableGenerator")
  @GenericGenerator(name="paymentableGenerator", strategy="uuid")
  @Column(name="ID", nullable=false, length=40)
  public String getId()
  {
    return this.id;
  }

  public void setId(String id)
  {
    this.id = id;
  }

  @Column(name="USERNAME", nullable=false, length=100)
  public String getUsername()
  {
    return this.username;
  }

  public void setUsername(String username)
  {
    this.username = username;
  }

  @Column(name="PASSWORD", nullable=false, length=100)
  public String getPassword()
  {
    return this.password;
  }

  public void setPassword(String password)
  {
    this.password = password;
  }

  @Column(name="ADDTIME", nullable=true)
  public Date getAddtime()
  {
    return this.addtime;
  }

  public void setAddtime(Date addtime)
  {
    this.addtime = addtime;
  }

  @Column(name="MOBILE", nullable=true, length=20)
  public String getMobile()
  {
    return this.mobile;
  }

  public void setMobile(String mobile)
  {
    this.mobile = mobile;
  }
}