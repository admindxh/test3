package weixin.idea.vote.service.impl;

import java.util.List;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import weixin.idea.vote.entity.VoteRecordEntity;
import weixin.idea.vote.service.VoteRecordServiceI;

@Service("voteRecordService")
public class VoteRecordServiceImpl extends CommonServiceImpl
  implements VoteRecordServiceI
{
  public boolean checkVote(String userid, String voteid)
  {
    CriteriaQuery cq = new CriteriaQuery(VoteRecordEntity.class);
    try
    {
      cq.eq("userid", userid);
      cq.eq("voteid", voteid);
    }
    catch (Exception e) {
      throw new BusinessException(e.getMessage());
    }
    cq.add();
    List recordlst = getListByCriteriaQuery(cq, Boolean.valueOf(false));
    if (recordlst.size() != 0) {
      return true;
    }
    return false;
  }
}