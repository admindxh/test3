package weixin.shop.base.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.jeecgframework.core.common.service.CommonService;
import weixin.shop.base.entity.WeixinShopCategoryEntity;

public abstract interface WeixinShopCategoryServiceI extends CommonService
{
  public abstract <T> void delete(T paramT);

  public abstract <T> Serializable save(T paramT);

  public abstract <T> void saveOrUpdate(T paramT);

  public abstract boolean doAddSql(WeixinShopCategoryEntity paramWeixinShopCategoryEntity);

  public abstract boolean doUpdateSql(WeixinShopCategoryEntity paramWeixinShopCategoryEntity);

  public abstract boolean doDelSql(WeixinShopCategoryEntity paramWeixinShopCategoryEntity);

  public abstract List<WeixinShopCategoryEntity> list(WeixinShopCategoryEntity paramWeixinShopCategoryEntity);

  public abstract List<WeixinShopCategoryEntity> list(WeixinShopCategoryEntity paramWeixinShopCategoryEntity, int paramInt1, int paramInt2);

  public abstract List<WeixinShopCategoryEntity> list(Map paramMap, int paramInt1, int paramInt2);

  public abstract List<WeixinShopCategoryEntity> list(Map paramMap);
}