package weixin.idea.votepk.service;

import org.jeecgframework.core.common.service.CommonService;
import weixin.idea.votepk.entity.WeixinVotePKConfig;

public abstract interface WeixinVotePKConfigService extends CommonService
{
  public abstract WeixinVotePKConfig getByName(String paramString1, String paramString2);
}