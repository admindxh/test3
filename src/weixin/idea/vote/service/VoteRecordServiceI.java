package weixin.idea.vote.service;

import org.jeecgframework.core.common.service.CommonService;

public abstract interface VoteRecordServiceI extends CommonService
{
  public abstract boolean checkVote(String paramString1, String paramString2);
}