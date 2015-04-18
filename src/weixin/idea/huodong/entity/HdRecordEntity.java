package weixin.idea.huodong.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="weixin_hdrecord", schema="")
public class HdRecordEntity
  implements Serializable
{
  private String id;
  private String hdid;
  private String opendid;
  private Integer total;
  private Date addtime;
  private String nickname;
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
  @Column(name="ID", nullable=false, length=100)
  public String getId()
  {
    return this.id;
  }

  public void setId(String id)
  {
    this.id = id;
  }

  @Column(name="HDID", nullable=true, length=100)
  public String getHdid()
  {
    return this.hdid;
  }

  public void setHdid(String hdid)
  {
    this.hdid = hdid;
  }

  @Column(name="OPENDID", nullable=true, length=100)
  public String getOpendid()
  {
    return this.opendid;
  }

  public void setOpendid(String opendid)
  {
    this.opendid = opendid;
  }

  @Column(name="TOTAL", nullable=true, precision=10, scale=0)
  public Integer getTotal()
  {
    return this.total;
  }

  public void setTotal(Integer total)
  {
    this.total = total;
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

  @Column(name="NICKNAME", nullable=true, length=200)
  public String getNickname()
  {
    return this.nickname;
  }

  public void setNickname(String nickname)
  {
    this.nickname = nickname;
  }
}