package weixin.idea.votepk.service;

import org.jeecgframework.core.common.service.CommonService;

public abstract interface WeixinVotePKService extends CommonService
{
  public abstract void updateVoteCount(int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2);

  public abstract void toSuccessUnsubscribeVoteCount(String paramString1, String paramString2);
}