package weixin.idea.qrcode.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="weixin_qrcode_sceneseq", schema="")
public class WeixinQrcodeSceneSeq
{
  private String id;
  private String accountid;
  private Integer count;

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

  @Column(name="ACCOUNTID", nullable=true, length=50)
  public String getAccountid() {
    return this.accountid;
  }
  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }
  @Column(name="REALNAME", nullable=true, length=10)
  public Integer getCount() {
    return this.count;
  }
  public void setCount(Integer count) {
    this.count = count;
  }
}