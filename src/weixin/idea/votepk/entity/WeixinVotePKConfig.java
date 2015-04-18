package weixin.idea.votepk.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="WEIXIN_VOTEPK_CONFIG", schema="")
public class WeixinVotePKConfig
{
  private String id;
  private String configName;
  private String configValue;
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
  @Column(name="CONFIG_NAME", nullable=true, length=50)
  public String getConfigName() {
    return this.configName;
  }
  public void setConfigName(String configName) {
    this.configName = configName;
  }
  @Column(name="CONFIG_VALUE", nullable=true, length=1000)
  public String getConfigValue() {
    return this.configValue;
  }

  public void setConfigValue(String configValue) {
    this.configValue = configValue;
  }
  @Column(name="ACCOUNTID", nullable=true, length=1000)
  public String getAccountid() {
    return this.accountid;
  }
  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }
}