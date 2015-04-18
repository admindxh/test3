package weixin.idea.votepk.service.impl;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.ResourceUtil;
import org.springframework.stereotype.Service;
import weixin.idea.votepk.entity.WeixinVotePKSignUserinfo;
import weixin.idea.votepk.service.WeixinVotePKSignUserinfoService;

@Service("weixinVotePKSignUserinfoService")
public class WeixinVotePKSignUserinfoServiceImpl extends CommonServiceImpl
  implements WeixinVotePKSignUserinfoService
{
  public WeixinVotePKSignUserinfo getSignUserinfo(String accountid, String openid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinVotePKSignUserinfo.class);
    try
    {
      cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
      cq.eq("openid", openid);
    }
    catch (Exception e) {
      throw new BusinessException(e.getMessage());
    }
    cq.add();
    List userlist = getListByCriteriaQuery(cq, Boolean.valueOf(false));
    if ((userlist != null) && (userlist.size() != 0)) {
      return (WeixinVotePKSignUserinfo)userlist.get(0);
    }
    return null;
  }

  public int count(CriteriaQuery cq)
  {
    Criteria criteria = cq.getDetachedCriteria().getExecutableCriteria(getSession());

    int allCounts = ((Long)criteria.setProjection(Projections.rowCount()).uniqueResult()).intValue();

    return allCounts;
  }
}