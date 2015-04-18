package weixin.cms.dao;

import java.util.List;
import java.util.Map;
import org.jeecgframework.minidao.annotation.Arguments;
import org.jeecgframework.minidao.annotation.MiniDao;
import org.jeecgframework.minidao.annotation.ResultType;
import org.jeecgframework.minidao.hibernate.MiniDaoSupportHiber;
import weixin.cms.entity.CmsMenuEntity;

@MiniDao
public abstract interface CmsMenuDao extends MiniDaoSupportHiber<CmsMenuEntity>
{
  @Arguments({"cmsMenuEntity"})
  @ResultType({"weixin.cms.entity.CmsMenuEntity"})
  public abstract List<CmsMenuEntity> list(CmsMenuEntity paramCmsMenuEntity);

  @Arguments({"cmsMenuEntity", "page", "rows"})
  @ResultType({"weixin.cms.entity.CmsMenuEntity"})
  public abstract List<CmsMenuEntity> list(CmsMenuEntity paramCmsMenuEntity, int paramInt1, int paramInt2);

  @Arguments({"params"})
  @ResultType({"weixin.cms.entity.CmsMenuEntity"})
  public abstract List<CmsMenuEntity> listByMap(Map paramMap);

  @Arguments({"params", "page", "rows"})
  @ResultType({"weixin.cms.entity.CmsMenuEntity"})
  public abstract List<CmsMenuEntity> listByMap(Map paramMap, int paramInt1, int paramInt2);
}