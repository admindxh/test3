package weixin.bbs.bbsdata.impl;

import java.util.List;
import java.util.Map;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.jeecgframework.tag.vo.datatable.SortDirection;
import weixin.bbs.bbsdata.DataCollectI;
import weixin.bbs.common.BbsConstant;
import weixin.bbs.common.BbsDataContent;
import weixin.bbs.entity.WeixinBbsPostEntity;
import weixin.bbs.service.WeixinBbsPostServiceI;

public class BbsIndexDataCollect
  implements DataCollectI, BbsConstant
{
  public void collect(Map<String, String> params)
  {
    WeixinBbsPostServiceI bbsPostService = (WeixinBbsPostServiceI)ApplicationContextUtil.getContext().getBean("weixinBbsPostService");
    CriteriaQuery cq = new CriteriaQuery(WeixinBbsPostEntity.class);
    cq.eq("status", Integer.valueOf(1));
    cq.addOrder("createDate", SortDirection.desc);
    List<WeixinBbsPostEntity> bbsPosts = bbsPostService.getListByCriteriaQuery(cq, Boolean.valueOf(false));
    BbsDataContent.put("postCount", Integer.valueOf(bbsPosts == null ? 0 : bbsPosts.size()));

    BbsDataContent.put("postList", bbsPosts);
    String res = "template/bbs/" + (String)params.get("styleName");

    BbsDataContent.put("base", res);
  }
}