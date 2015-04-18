package weixin.cms.cmsdata.impl;

import java.util.Map;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.springframework.context.ApplicationContext;
import weixin.cms.cmsdata.CmsDataCollectI;
import weixin.cms.common.CmsDataContent;
import weixin.cms.entity.CmsArticleEntity;
import weixin.cms.service.CmsArticleServiceI;

public class CmsArticleDataCollect
  implements CmsDataCollectI
{
  public void collect(Map<String, String> params)
  {
    CmsArticleServiceI cmsArticleService = (CmsArticleServiceI)ApplicationContextUtil.getContext().getBean("cmsArticleService");

    String articleid = params.get("articleid") != null ? ((String)params.get("articleid")).toString() : "-";
    CmsArticleEntity cmsArticleEntity = cmsArticleService.getCmsArticleEntity(articleid);
    Integer viewCount = cmsArticleService.addViewCount(articleid);
    CmsDataContent.put("viewCount", viewCount);
    if (cmsArticleEntity != null) {
      CmsDataContent.put("article", cmsArticleEntity);
      CmsDataContent.put("title", cmsArticleEntity.getTitle());
    } else {
      CmsDataContent.put("article", new CmsArticleEntity());
      CmsDataContent.put("title", "文章明细");
    }
    String res = "template/cms/" + (String)params.get("styleName");

    CmsDataContent.put("base", res);
  }
}