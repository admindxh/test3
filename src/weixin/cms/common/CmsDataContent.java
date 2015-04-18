package weixin.cms.common;

import java.util.HashMap;
import java.util.Map;

public class CmsDataContent
{
  public static final String CMS_CONTENT_KEY = "cmsData";
  private static final Map<String, Object> cmsContent = new HashMap();
  private static final Map<String, Object> cmsData = new HashMap();

  public static void put(String key, Object object)
  {
    cmsData.put(key, object);
  }

  public static Object get(String key)
  {
    return cmsData.get(key);
  }

  public static Map<String, Object> loadContent()
  {
    cmsContent.put("cmsData", cmsData);
    return cmsContent;
  }
}