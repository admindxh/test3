package weixin.idea.vote.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.idea.vote.entity.WeixinVoteEntity;

public abstract interface WeixinVoteServiceI extends CommonService
{
  public abstract <T> void delete(T paramT);

  public abstract <T> Serializable save(T paramT);

  public abstract <T> void saveOrUpdate(T paramT);

  public abstract boolean doAddSql(WeixinVoteEntity paramWeixinVoteEntity);

  public abstract boolean doUpdateSql(WeixinVoteEntity paramWeixinVoteEntity);

  public abstract boolean doDelSql(WeixinVoteEntity paramWeixinVoteEntity);
}