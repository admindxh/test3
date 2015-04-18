package weixin.bbs.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="weixin_bbs_post_comment", schema="")
@PrimaryKeyJoinColumn(name="id")
public class WeixinBbsPostCommentEntity
  implements Serializable
{
  private String id;
  private String commentPerson;
  private String comment;
  private Date createDate;
  private String createBy;
  private Date updateDate;
  private String updateBy;
  private WeixinBbsPostEntity post;

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

  @Column(name="COMMENT_PERSON", nullable=true, length=100)
  public String getCommentPerson()
  {
    return this.commentPerson;
  }

  public void setCommentPerson(String commentPerson)
  {
    this.commentPerson = commentPerson;
  }

  @Column(name="COMMENT", nullable=true, length=200)
  public String getComment()
  {
    return this.comment;
  }

  public void setComment(String comment)
  {
    this.comment = comment;
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

  @Column(name="CREATE_BY", nullable=true, length=32)
  public String getCreateBy()
  {
    return this.createBy;
  }

  public void setCreateBy(String createBy)
  {
    this.createBy = createBy;
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

  @Column(name="UPDATE_BY", nullable=true, length=32)
  public String getUpdateBy()
  {
    return this.updateBy;
  }

  public void setUpdateBy(String updateBy)
  {
    this.updateBy = updateBy;
  }
  @ManyToOne(cascade={javax.persistence.CascadeType.PERSIST, javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.REFRESH}, fetch=FetchType.LAZY)
  @JoinColumn(name="post_id")
  public WeixinBbsPostEntity getPost() { return this.post; }

  public void setPost(WeixinBbsPostEntity post)
  {
    this.post = post;
  }
}