package weixin.cms.service.impl;

import java.util.List;
import java.util.Map;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.cms.dao.CmsAdDao;
import weixin.cms.entity.AdEntity;
import weixin.cms.service.AdServiceI;

@Service("adService")
@Transactional
public class AdServiceImpl extends CommonServiceImpl
  implements AdServiceI
{

  @Autowired
  private CmsAdDao cmsAdDao;

  public List<AdEntity> list(Map params, int page, int rows)
  {
    return this.cmsAdDao.listByMap(params, page, rows);
  }

  public List<AdEntity> list(Map params)
  {
    return this.cmsAdDao.listByMap(params);
  }

  public List<AdEntity> list(AdEntity adEntity)
  {
    return this.cmsAdDao.list(adEntity);
  }

  public List<AdEntity> list(AdEntity adEntity, int page, int rows)
  {
    return this.cmsAdDao.list(adEntity);
  }
}