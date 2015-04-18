package weixin.cms.service;

import java.util.List;
import java.util.Map;
import org.jeecgframework.core.common.service.CommonService;
import weixin.cms.entity.CmsArticleEntity;

public abstract interface CmsArticleServiceI extends CommonService
{
  public abstract List<CmsArticleEntity> list(CmsArticleEntity paramCmsArticleEntity);

  public abstract List<CmsArticleEntity> list(CmsArticleEntity paramCmsArticleEntity, int paramInt1, int paramInt2);

  public abstract List<CmsArticleEntity> listByMap(Map paramMap);

  public abstract List<CmsArticleEntity> listByMap(Map paramMap, int paramInt1, int paramInt2);

  public abstract int getCount(Map paramMap);

  public abstract CmsArticleEntity getCmsArticleEntity(String paramString);

  public abstract Integer addViewCount(String paramString);
}