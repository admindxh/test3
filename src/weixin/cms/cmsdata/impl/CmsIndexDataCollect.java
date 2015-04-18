package weixin.cms.cmsdata.impl;

import java.util.List;
import java.util.Map;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.springframework.context.ApplicationContext;
import weixin.cms.cmsdata.CmsDataCollectI;
import weixin.cms.common.CmsDataContent;
import weixin.cms.service.AdServiceI;
import weixin.cms.service.CmsMenuServiceI;

public class CmsIndexDataCollect
  implements CmsDataCollectI
{
  public void collect(Map<String, String> params)
  {
    AdServiceI adService = (AdServiceI)ApplicationContextUtil.getContext().getBean("adService");
    CmsMenuServiceI cmsMenuService = (CmsMenuServiceI)ApplicationContextUtil.getContext().getBean("cmsMenuService");

    List adList = adService.list(params);
    CmsDataContent.put("adList", adList);
    List menuList = cmsMenuService.list(params);
    CmsDataContent.put("menuList", menuList);
    String res = "template/cms/" + (String)params.get("styleName");

    CmsDataContent.put("base", res);
  }
}