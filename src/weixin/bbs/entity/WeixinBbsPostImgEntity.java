package weixin.bbs.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.jeecgframework.web.system.pojo.base.TSAttachment;

@Entity
@Table(name="weixin_bbs_post_img", schema="")
@PrimaryKeyJoinColumn(name="id")
public class WeixinBbsPostImgEntity extends TSAttachment
  implements Serializable
{
  private WeixinBbsPostEntity post;

  @ManyToOne(cascade={javax.persistence.CascadeType.PERSIST, javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.REFRESH}, fetch=FetchType.LAZY)
  @JoinColumn(name="post_id")
  public WeixinBbsPostEntity getPost()
  {
    return this.post;
  }

  public void setPost(WeixinBbsPostEntity post) {
    this.post = post;
  }
}