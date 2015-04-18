package weixin.idea.votepk.service.impl;

import java.util.List;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.ResourceUtil;
import org.springframework.stereotype.Service;
import weixin.idea.votepk.entity.WeixinVotePKConfig;
import weixin.idea.votepk.service.WeixinVotePKConfigService;

@Service("weixinVotePKConfigService")
public class WeixinVotePKConfigServiceImpl extends CommonServiceImpl
  implements WeixinVotePKConfigService
{
  public WeixinVotePKConfig getByName(String name, String accountid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinVotePKConfig.class);
    try
    {
      cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
      cq.eq("configName", name);
    }
    catch (Exception e) {
      throw new BusinessException(e.getMessage());
    }
    cq.add();
    List userlist = getListByCriteriaQuery(cq, Boolean.valueOf(false));
    if ((userlist != null) && (userlist.size() != 0)) {
      return (WeixinVotePKConfig)userlist.get(0);
    }
    return null;
  }
}