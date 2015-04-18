package weixin.cms.cmsdata;

import java.util.Map;

public abstract interface CmsDataCollectI
{
  public abstract void collect(Map<String, String> paramMap);
}