package weixin.shop.base.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.shop.base.dao.WeixinShopCategoryDao;
import weixin.shop.base.entity.WeixinShopCategoryEntity;
import weixin.shop.base.service.WeixinShopCategoryServiceI;

@Service("weixinShopCategoryService")
@Transactional
public class WeixinShopCategoryServiceImpl extends CommonServiceImpl
  implements WeixinShopCategoryServiceI
{

  @Autowired
  private WeixinShopCategoryDao weixinShopCategoryDao;

  public <T> void delete(T entity)
  {
    super.delete(entity);

    doDelSql((WeixinShopCategoryEntity)entity);
  }

  public <T> Serializable save(T entity) {
    Serializable t = super.save(entity);

    doAddSql((WeixinShopCategoryEntity)entity);
    return t;
  }

  public <T> void saveOrUpdate(T entity) {
    super.saveOrUpdate(entity);

    doUpdateSql((WeixinShopCategoryEntity)entity);
  }

  public boolean doAddSql(WeixinShopCategoryEntity t)
  {
    return true;
  }

  public boolean doUpdateSql(WeixinShopCategoryEntity t)
  {
    return true;
  }

  public boolean doDelSql(WeixinShopCategoryEntity t)
  {
    return true;
  }

  public List<WeixinShopCategoryEntity> list(WeixinShopCategoryEntity weixinShopCategory)
  {
    return this.weixinShopCategoryDao.list(weixinShopCategory);
  }

  public List<WeixinShopCategoryEntity> list(WeixinShopCategoryEntity weixinShopCategory, int page, int rows)
  {
    return this.weixinShopCategoryDao.list(weixinShopCategory, page, rows);
  }

  public List<WeixinShopCategoryEntity> list(Map params, int page, int rows)
  {
    return this.weixinShopCategoryDao.listByMap(params, page, rows);
  }

  public List<WeixinShopCategoryEntity> list(Map params)
  {
    return this.weixinShopCategoryDao.listByMap(params);
  }
}