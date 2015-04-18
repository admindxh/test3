package weixin.cms.cmsdata.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.springframework.context.ApplicationContext;
import weixin.cms.cmsdata.CmsDataCollectI;
import weixin.cms.common.CmsDataContent;
import weixin.cms.entity.CmsArticleEntity;
import weixin.cms.entity.CmsMenuEntity;
import weixin.cms.service.CmsArticleServiceI;
import weixin.cms.service.CmsMenuServiceI;

public class CmsMenuDataCollect
  implements CmsDataCollectI
{
  public void collect(Map<String, String> params)
  {
    CmsArticleServiceI cmsArticleService = (CmsArticleServiceI)ApplicationContextUtil.getContext().getBean("cmsArticleService");
    CmsMenuServiceI cmsMenuService = (CmsMenuServiceI)ApplicationContextUtil.getContext().getBean("cmsMenuService");

    String menuid = params.get("id") != null ? ((String)params.get("id")).toString() : "-";
    CmsMenuEntity menuEntity = (CmsMenuEntity)cmsMenuService.getEntity(CmsMenuEntity.class, menuid);
    CmsArticleEntity cmsArticleEntity = null;
    if (menuEntity != null)
    {
      Map p = new HashMap();
      p.put("columnid", menuEntity.getId());
      List list = cmsArticleService.listByMap(p);

      if ("02".equals(menuEntity.getType()))
      {
        if ((list != null) && (list.size() > 0)) {
          cmsArticleEntity = (CmsArticleEntity)list.get(0);
          Integer viewCount = cmsArticleService.addViewCount(cmsArticleEntity.getId());
          CmsDataContent.put("viewCount", viewCount);
        }
      }
      else CmsDataContent.put("articleList", list);

      Map valueMap = new HashMap();
      MyBeanUtils.copyBean2Map(valueMap, menuEntity);
      if (cmsArticleEntity == null) {
        cmsArticleEntity = new CmsArticleEntity();
      }
      valueMap.put("article", cmsArticleEntity);

      CmsDataContent.put("menu", valueMap);
      CmsDataContent.put("title", menuEntity.getName());
    } else {
      CmsDataContent.put("menu", new CmsMenuEntity());
      CmsDataContent.put("title", "信息列表");
    }
    String res = "template/cms/" + (String)params.get("styleName");

    CmsDataContent.put("base", res);
  }
}