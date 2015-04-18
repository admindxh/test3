package weixin.cms.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.cms.dao.CmsMenuDao;
import weixin.cms.entity.CmsMenuEntity;
import weixin.cms.service.CmsMenuServiceI;
import weixin.guanjia.account.service.WeixinAccountServiceI;

@Service("cmsMenuService")
@Transactional
public class CmsMenuServiceImpl extends CommonServiceImpl
  implements CmsMenuServiceI
{

  @Autowired
  private CmsMenuDao cmsArticleDao;

  @Autowired
  private WeixinAccountServiceI weixinAccountService;

  public <T> Serializable save(T entity)
  {
    Serializable t = super.save(entity);
    return t;
  }

  public List<CmsMenuEntity> list(Map params, int page, int rows)
  {
    return this.cmsArticleDao.listByMap(params, page, rows);
  }

  public List<CmsMenuEntity> list(Map params)
  {
    return this.cmsArticleDao.listByMap(params);
  }

  public List<CmsMenuEntity> list(CmsMenuEntity cmsMenuEntity)
  {
    return this.cmsArticleDao.list(cmsMenuEntity);
  }

  public List<CmsMenuEntity> list(CmsMenuEntity cmsMenuEntity, int page, int rows)
  {
    return this.cmsArticleDao.list(cmsMenuEntity);
  }
}