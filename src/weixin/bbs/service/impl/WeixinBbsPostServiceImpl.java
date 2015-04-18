package weixin.bbs.service.impl;

import java.util.List;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.bbs.entity.WeixinBbsEntity;
import weixin.bbs.entity.WeixinBbsPostCommentEntity;
import weixin.bbs.entity.WeixinBbsPostEntity;
import weixin.bbs.entity.WeixinBbsPostImgEntity;
import weixin.bbs.service.WeixinBbsPostServiceI;

@Service("weixinBbsPostService")
@Transactional
public class WeixinBbsPostServiceImpl extends CommonServiceImpl
  implements WeixinBbsPostServiceI
{
  public void postTop(WeixinBbsPostEntity post)
  {
    List<WeixinBbsPostEntity> topPosts = findByProperty(WeixinBbsPostEntity.class, "topStatus", "Y");

    for (WeixinBbsPostEntity topPost : topPosts) {
      topPost.setTopStatus("N");
      updateEntitie(topPost);
    }

    post.setTopStatus("Y");

    updateEntitie(post);
  }

  public void postComment(WeixinBbsPostCommentEntity postComment, String postId)
  {
    WeixinBbsPostEntity bbsPost = (WeixinBbsPostEntity)getEntity(WeixinBbsPostEntity.class, postId);
    postComment.setPost(bbsPost);
    List<WeixinBbsEntity> bbs = findByProperty(WeixinBbsEntity.class, "accountid", ResourceUtil.getShangJiaAccountId());
    postComment.setCommentPerson(((WeixinBbsEntity)bbs.get(0)).getNickName());
    save(postComment);
    bbsPost.setCommentCount(Integer.valueOf(bbsPost.getCommentCount().intValue() + 1));
    updateEntitie(bbsPost);
  }

  public String savePost(WeixinBbsPostEntity weixinBbsPost, String fileId)
  {
    String postId = (String)save(weixinBbsPost);
    weixinBbsPost = (WeixinBbsPostEntity)getEntity(WeixinBbsPostEntity.class, postId);

    if (StringUtil.isNotEmpty(fileId)) {
      String[] fileIds = fileId.split(",");
      for (int i = 0; i < fileIds.length; i++) {
        WeixinBbsPostImgEntity postImg = (WeixinBbsPostImgEntity)getEntity(WeixinBbsPostImgEntity.class, fileIds[i]);
        postImg.setPost(weixinBbsPost);
        updateEntitie(postImg);
      }
    }

    return postId;
  }
}