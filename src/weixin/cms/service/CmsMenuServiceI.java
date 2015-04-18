package weixin.cms.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.jeecgframework.core.common.service.CommonService;
import weixin.cms.entity.CmsMenuEntity;

public abstract interface CmsMenuServiceI extends CommonService
{
  public abstract <T> Serializable save(T paramT);

  public abstract List<CmsMenuEntity> list(CmsMenuEntity paramCmsMenuEntity);

  public abstract List<CmsMenuEntity> list(CmsMenuEntity paramCmsMenuEntity, int paramInt1, int paramInt2);

  public abstract List<CmsMenuEntity> list(Map paramMap);

  public abstract List<CmsMenuEntity> list(Map paramMap, int paramInt1, int paramInt2);
}