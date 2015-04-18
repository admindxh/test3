package weixin.cms.dao;

import java.util.List;
import java.util.Map;
import org.jeecgframework.minidao.annotation.Arguments;
import org.jeecgframework.minidao.annotation.MiniDao;
import org.jeecgframework.minidao.annotation.ResultType;
import org.jeecgframework.minidao.hibernate.MiniDaoSupportHiber;
import weixin.cms.entity.AdEntity;

@MiniDao
public abstract interface CmsAdDao extends MiniDaoSupportHiber<AdEntity>
{
  @Arguments({"adEntity"})
  @ResultType({"weixin.cms.entity.AdEntity"})
  public abstract List<AdEntity> list(AdEntity paramAdEntity);

  @Arguments({"adEntity", "page", "rows"})
  @ResultType({"weixin.cms.entity.AdEntity"})
  public abstract List<AdEntity> list(AdEntity paramAdEntity, int paramInt1, int paramInt2);

  @Arguments({"params"})
  @ResultType({"weixin.cms.entity.AdEntity"})
  public abstract List<AdEntity> listByMap(Map paramMap);

  @Arguments({"params", "page", "rows"})
  @ResultType({"weixin.cms.entity.AdEntity"})
  public abstract List<AdEntity> listByMap(Map paramMap, int paramInt1, int paramInt2);
}