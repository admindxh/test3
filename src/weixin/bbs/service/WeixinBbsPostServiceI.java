package weixin.bbs.service;

import org.jeecgframework.core.common.service.CommonService;
import weixin.bbs.entity.WeixinBbsPostCommentEntity;
import weixin.bbs.entity.WeixinBbsPostEntity;

public abstract interface WeixinBbsPostServiceI extends CommonService
{
  public abstract void postTop(WeixinBbsPostEntity paramWeixinBbsPostEntity);

  public abstract void postComment(WeixinBbsPostCommentEntity paramWeixinBbsPostCommentEntity, String paramString);

  public abstract String savePost(WeixinBbsPostEntity paramWeixinBbsPostEntity, String paramString);
}