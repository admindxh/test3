package weixin.idea.votepk.service;

import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.service.CommonService;
import weixin.idea.votepk.entity.WeixinVotePKSignUserinfo;

public abstract interface WeixinVotePKSignUserinfoService extends CommonService
{
  public abstract WeixinVotePKSignUserinfo getSignUserinfo(String paramString1, String paramString2);

  public abstract int count(CriteriaQuery paramCriteriaQuery);
}