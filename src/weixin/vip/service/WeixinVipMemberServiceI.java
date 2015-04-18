package weixin.vip.service;

import org.jeecgframework.core.common.service.CommonService;
import org.jeecgframework.web.system.pojo.base.TSUser;

public abstract interface WeixinVipMemberServiceI extends CommonService
{
  public abstract void saveMemberByVip(TSUser paramTSUser);

  public abstract Boolean updateMemberIntegral(String paramString1, String paramString2, Integer paramInteger);
}