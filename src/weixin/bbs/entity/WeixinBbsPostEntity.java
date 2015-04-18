package weixin.bbs.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.OrderBy;

@Entity
@Table(name="weixin_bbs_post", schema="")
@DynamicUpdate(true)
@DynamicInsert(true)
public class WeixinBbsPostEntity
  implements Serializable
{
  private String id;
  private String title;
  private String content;
  private String postPerson;
  private String status;
  private String createBy;
  private Date createDate;
  private String updateBy;
  private Date updateDate;
  private String topStatus;
  private Integer commentCount;
  private Integer praiseCount;
  private String bbsId;
  private List<WeixinBbsPostImgEntity> postImg;
  private WeixinBbsEntity bbs;
  private List<WeixinBbsPostCommentEntity> postComment;

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

  @Column(name="TITLE", nullable=false, length=100)
  public String getTitle()
  {
    return this.title;
  }

  public void setTitle(String title)
  {
    this.title = title;
  }

  @Column(name="CONTENT", nullable=true, length=20000)
  public String getContent()
  {
    return this.content;
  }

  public void setContent(String content)
  {
    this.content = content;
  }

  @Column(name="POST_PERSON", nullable=true, length=32)
  public String getPostPerson()
  {
    return this.postPerson;
  }

  public void setPostPerson(String postPerson)
  {
    this.postPerson = postPerson;
  }

  @Column(name="STATUS", nullable=true, length=32)
  public String getStatus()
  {
    return this.status;
  }

  public void setStatus(String status)
  {
    this.status = status;
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

  @Column(name="CREATE_DATE", nullable=true)
  public Date getCreateDate()
  {
    return this.createDate;
  }

  public void setCreateDate(Date createDate)
  {
    this.createDate = createDate;
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

  @Column(name="UPDATE_DATE", nullable=true)
  public Date getUpdateDate()
  {
    return this.updateDate;
  }

  public void setUpdateDate(Date updateDate)
  {
    this.updateDate = updateDate;
  }

  @Column(name="TOP_STATUS", nullable=true, length=32)
  public String getTopStatus()
  {
    return this.topStatus;
  }

  public void setTopStatus(String topStatus)
  {
    this.topStatus = topStatus;
  }

  @Column(name="COMMENT_COUNT", nullable=true, precision=10, scale=0)
  public Integer getCommentCount()
  {
    return this.commentCount;
  }

  public void setCommentCount(Integer commentCount)
  {
    this.commentCount = commentCount;
  }

  @Column(name="PRAISE_COUNT", nullable=true, precision=10, scale=0)
  public Integer getPraiseCount()
  {
    return this.praiseCount;
  }

  public void setPraiseCount(Integer praiseCount)
  {
    this.praiseCount = praiseCount;
  }

  @Column(name="BBS_ID", nullable=true, length=32)
  public String getBbsId()
  {
    return this.bbsId;
  }

  public void setBbsId(String bbsId)
  {
    this.bbsId = bbsId;
  }
  @OneToMany(fetch=FetchType.LAZY, cascade={javax.persistence.CascadeType.REMOVE}, mappedBy="post")
  public List<WeixinBbsPostImgEntity> getPostImg() {
    return this.postImg;
  }

  public void setPostImg(List<WeixinBbsPostImgEntity> postImg) {
    this.postImg = postImg;
  }
  @OneToMany(fetch=FetchType.LAZY, cascade={javax.persistence.CascadeType.REMOVE}, mappedBy="post")
  @OrderBy(clause="createDate desc")
  public List<WeixinBbsPostCommentEntity> getPostComment() { return this.postComment; }

  public void setPostComment(List<WeixinBbsPostCommentEntity> postComment)
  {
    this.postComment = postComment;
  }
  @ManyToOne(cascade={javax.persistence.CascadeType.PERSIST, javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.REFRESH}, fetch=FetchType.LAZY)
  @JoinColumn(name="bbs_id")
  public WeixinBbsEntity getBbs() {
    return this.bbs;
  }

  public void setBbs(WeixinBbsEntity bbs) {
    this.bbs = bbs;
  }
}