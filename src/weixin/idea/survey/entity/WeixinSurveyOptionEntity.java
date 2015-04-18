package weixin.idea.survey.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="weixin_survey_option")
public class WeixinSurveyOptionEntity
  implements Serializable
{
  private String id;
  private String surveyOptionTitle;
  private Integer count;
  private Double scale;
  private WeixinSurveyEntity weixinSurvey;
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
    this.id = id; } 
  @ManyToOne(cascade={javax.persistence.CascadeType.PERSIST, javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.REFRESH}, fetch=FetchType.LAZY)
  @JoinColumn(name="SURVEY_ID")
  @JsonIgnore
  public WeixinSurveyEntity getWeixinSurvey() { return this.weixinSurvey; }

  @JsonIgnore
  public void setWeixinSurvey(WeixinSurveyEntity weixinSurvey) {
    this.weixinSurvey = weixinSurvey;
  }

  @Column(name="SURVEY_OPTION_TITLE", nullable=true, length=50)
  public String getSurveyOptionTitle()
  {
    return this.surveyOptionTitle;
  }
  public void setSurveyOptionTitle(String surveyOptionTitle) {
    this.surveyOptionTitle = surveyOptionTitle;
  }
  @Column(name="SURVEY_COUNT", nullable=true, length=11)
  public Integer getCount() {
    return this.count;
  }
  public void setCount(Integer count) {
    this.count = count;
  }
  @Column(name="SCALE", nullable=true, scale=2, length=18)
  public Double getScale() {
    return this.scale;
  }
  public void setScale(Double scale) {
    this.scale = scale;
  }
  @Column(name="ACCOUNTID", nullable=true, length=50)
  public String getAccountid() {
    return this.accountid;
  }

  public void setAccountid(String accountid)
  {
    this.accountid = accountid;
  }
}