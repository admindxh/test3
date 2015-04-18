package weixin.cms.dao;

import java.util.List;
import java.util.Map;
import org.jeecgframework.minidao.annotation.Arguments;
import org.jeecgframework.minidao.annotation.MiniDao;
import org.jeecgframework.minidao.annotation.ResultType;
import org.jeecgframework.minidao.hibernate.MiniDaoSupportHiber;
import weixin.cms.entity.CmsArticleEntity;

@MiniDao
public abstract interface CmsArticleDao extends MiniDaoSupportHiber<CmsArticleEntity>
{
  @Arguments({"cmsArticleEntity", "page", "rows"})
  @ResultType({"weixin.cms.entity.CmsArticleEntity"})
  public abstract List<CmsArticleEntity> list(CmsArticleEntity paramCmsArticleEntity);

  @Arguments({"cmsArticleEntity", "page", "rows"})
  @ResultType({"weixin.cms.entity.CmsArticleEntity"})
  public abstract List<CmsArticleEntity> list(CmsArticleEntity paramCmsArticleEntity, int paramInt1, int paramInt2);

  @Arguments({"params"})
  @ResultType({"weixin.cms.entity.CmsArticleEntity"})
  public abstract List<CmsArticleEntity> listByMap(Map paramMap);

  @Arguments({"params", "page", "rows"})
  @ResultType({"weixin.cms.entity.CmsArticleEntity"})
  public abstract List<CmsArticleEntity> listByMap(Map paramMap, int paramInt1, int paramInt2);

  @Arguments({"params"})
  @ResultType({"java.lang.Integer"})
  public abstract Integer getCount(Map paramMap);
}