package weixin.bbs.bbsdata.impl;

import java.util.Map;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.util.ApplicationContextUtil;
import weixin.bbs.bbsdata.DataCollectI;
import weixin.bbs.common.BbsConstant;
import weixin.bbs.common.BbsDataContent;
import weixin.bbs.entity.WeixinBbsPostEntity;
import weixin.bbs.service.WeixinBbsPostServiceI;

public class BbsPostDataCollect implements DataCollectI, BbsConstant {
	public void collect(Map<String, String> params) {
		WeixinBbsPostServiceI bbsPostService = (WeixinBbsPostServiceI) ApplicationContextUtil
				.getContext().getBean("weixinBbsPostService");
		CriteriaQuery cq = new CriteriaQuery(WeixinBbsPostEntity.class);
		cq.eq("id", params.get("id"));
		WeixinBbsPostEntity post = (WeixinBbsPostEntity) bbsPostService
				.findUniqueByProperty(WeixinBbsPostEntity.class, "id",
						params.get("id"));

		BbsDataContent.put("post", post);
		String res = "template/bbs/" + (String) params.get("styleName");

		BbsDataContent.put("base", res);
	}
}