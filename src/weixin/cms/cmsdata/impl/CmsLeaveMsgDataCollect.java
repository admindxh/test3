package weixin.cms.cmsdata.impl;

import java.util.List;
import java.util.Map;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.springframework.context.ApplicationContext;
import weixin.cms.cmsdata.CmsDataCollectI;
import weixin.cms.common.CmsDataContent;
import weixin.cms.entity.WeixinLeaveMsgEntity;
import weixin.cms.service.WeixinLeaveMsgServiceI;

public class CmsLeaveMsgDataCollect
  implements CmsDataCollectI
{
  public void collect(Map<String, String> params)
  {
    WeixinLeaveMsgServiceI weixinLeaveMsgServiceI = (WeixinLeaveMsgServiceI)ApplicationContextUtil.getContext().getBean("weixinLeaveMsgService");

    CriteriaQuery cq = new CriteriaQuery(WeixinLeaveMsgEntity.class);
    cq.addOrder("createDate", SortDirection.desc);
    List leaveMsgList = weixinLeaveMsgServiceI.getListByCriteriaQuery(cq, Boolean.valueOf(false));

    CmsDataContent.put("leaveMsgList", leaveMsgList);

    String res = "template/cms/" + (String)params.get("styleName");

    CmsDataContent.put("base", res);
  }
}