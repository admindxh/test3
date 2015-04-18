package weixin.shop.base.dao;

import java.util.List;
import java.util.Map;
import org.jeecgframework.minidao.annotation.Arguments;
import org.jeecgframework.minidao.annotation.MiniDao;
import org.jeecgframework.minidao.annotation.ResultType;
import org.jeecgframework.minidao.hibernate.MiniDaoSupportHiber;
import weixin.shop.base.entity.WeixinShopGoodsEntity;

@MiniDao
public abstract interface WeixinShopGoodsDao extends MiniDaoSupportHiber<WeixinShopGoodsEntity>
{
  @Arguments({"weixinShopGoods"})
  @ResultType({"weixin.shop.base.entity.WeixinShopGoodsEntity"})
  public abstract List<WeixinShopGoodsEntity> list(WeixinShopGoodsEntity paramWeixinShopGoodsEntity);

  @Arguments({"weixinShopGoods", "page", "rows"})
  @ResultType({"weixin.shop.base.entity.WeixinShopGoodsEntity"})
  public abstract List<WeixinShopGoodsEntity> list(WeixinShopGoodsEntity paramWeixinShopGoodsEntity, int paramInt1, int paramInt2);

  @Arguments({"params"})
  @ResultType({"weixin.shop.base.entity.WeixinShopGoodsEntity"})
  public abstract List<WeixinShopGoodsEntity> listByMap(Map paramMap);

  @Arguments({"params", "page", "rows"})
  @ResultType({"weixin.shop.base.entity.WeixinShopGoodsEntity"})
  public abstract List<WeixinShopGoodsEntity> listByMap(Map paramMap, int paramInt1, int paramInt2);

  @Arguments({"params"})
  public abstract Integer getCount(Map paramMap);
}