package weixin.shop.base.dao;

import java.util.List;
import java.util.Map;
import org.jeecgframework.minidao.annotation.Arguments;
import org.jeecgframework.minidao.annotation.MiniDao;
import org.jeecgframework.minidao.annotation.ResultType;
import org.jeecgframework.minidao.hibernate.MiniDaoSupportHiber;
import weixin.shop.base.entity.WeixinShopCategoryEntity;

@MiniDao
public abstract interface WeixinShopCategoryDao extends MiniDaoSupportHiber<WeixinShopCategoryEntity>
{
  @Arguments({"weixinShopCategory"})
  @ResultType({"weixin.shop.base.entity.WeixinShopCategoryEntity"})
  public abstract List<WeixinShopCategoryEntity> list(WeixinShopCategoryEntity paramWeixinShopCategoryEntity);

  @Arguments({"weixinShopCategory", "page", "rows"})
  @ResultType({"weixin.shop.base.entity.WeixinShopCategoryEntity"})
  public abstract List<WeixinShopCategoryEntity> list(WeixinShopCategoryEntity paramWeixinShopCategoryEntity, int paramInt1, int paramInt2);

  @Arguments({"params"})
  @ResultType({"weixin.shop.base.entity.WeixinShopCategoryEntity"})
  public abstract List<WeixinShopCategoryEntity> listByMap(Map paramMap);

  @Arguments({"params", "page", "rows"})
  @ResultType({"weixin.shop.base.entity.WeixinShopCategoryEntity"})
  public abstract List<WeixinShopCategoryEntity> listByMap(Map paramMap, int paramInt1, int paramInt2);
}