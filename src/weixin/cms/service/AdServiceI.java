package weixin.cms.service;

import java.util.List;
import java.util.Map;
import org.jeecgframework.core.common.service.CommonService;
import weixin.cms.entity.AdEntity;

public abstract interface AdServiceI extends CommonService
{
  public abstract List<AdEntity> list(AdEntity paramAdEntity);

  public abstract List<AdEntity> list(AdEntity paramAdEntity, int paramInt1, int paramInt2);

  public abstract List<AdEntity> list(Map paramMap, int paramInt1, int paramInt2);

  public abstract List<AdEntity> list(Map paramMap);
}