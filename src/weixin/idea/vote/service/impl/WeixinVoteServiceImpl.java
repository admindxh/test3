package weixin.idea.vote.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.UUID;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.StringUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.idea.vote.entity.WeixinVoteEntity;
import weixin.idea.vote.entity.WeixinVoteOptionEntity;
import weixin.idea.vote.service.WeixinVoteServiceI;

@Service("weixinVoteService")
@Transactional
public class WeixinVoteServiceImpl extends CommonServiceImpl
  implements WeixinVoteServiceI
{
  public <T> void delete(T entity)
  {
    super.delete(entity);

    doDelSql((WeixinVoteEntity)entity);
  }

  public <T> Serializable save(T entity) {
    WeixinVoteEntity weixinVoteEntity = (WeixinVoteEntity)entity;
    if (StringUtil.isEmpty(weixinVoteEntity.getId())) {
      List<WeixinVoteOptionEntity> optionlist = weixinVoteEntity.getWeixinVoteOptions();
      weixinVoteEntity.setVoteCount(Integer.valueOf(0));
      weixinVoteEntity.setStatement("0");
      Serializable t = super.save(weixinVoteEntity);
      for (WeixinVoteOptionEntity option : optionlist) {
        option.setCount(Integer.valueOf(0));
        option.setScale(Double.valueOf(0.0D));
        option.setWeixinVote(weixinVoteEntity);
        super.save(option);
      }
    } else {
      WeixinVoteEntity updateEntity = (WeixinVoteEntity)get(WeixinVoteEntity.class, weixinVoteEntity.getId());
      List<WeixinVoteOptionEntity> optionlist = weixinVoteEntity.getWeixinVoteOptions();
      List<WeixinVoteOptionEntity> oldoptionlist = super.findByProperty(WeixinVoteOptionEntity.class, "weixinVote.id", weixinVoteEntity.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(weixinVoteEntity, updateEntity);
      }
      catch (Exception e) {
        e.printStackTrace();
      }
      super.updateEntitie(updateEntity);
      super.deleteAllEntitie(oldoptionlist);
      for (WeixinVoteOptionEntity option : optionlist) {
        option.setWeixinVote(weixinVoteEntity);
        option.setCount(Integer.valueOf(0));
        option.setScale(Double.valueOf(0.0D));
        super.save(option);
      }
    }

    return weixinVoteEntity;
  }

  public <T> void saveOrUpdate(T entity) {
    WeixinVoteEntity weixinVoteEntity = (WeixinVoteEntity)entity;
    super.saveOrUpdate(weixinVoteEntity);

    doUpdateSql(weixinVoteEntity);
  }

  public boolean doAddSql(WeixinVoteEntity t)
  {
    return true;
  }

  public boolean doUpdateSql(WeixinVoteEntity t)
  {
    return true;
  }

  public boolean doDelSql(WeixinVoteEntity t)
  {
    return true;
  }

  public String replaceVal(String sql, WeixinVoteEntity t)
  {
    sql = sql.replace("#{id}", String.valueOf(t.getId()));
    sql = sql.replace("#{create_name}", String.valueOf(t.getCreateName()));
    sql = sql.replace("#{create_date}", String.valueOf(t.getCreateDate()));
    sql = sql.replace("#{update_name}", String.valueOf(t.getUpdateName()));
    sql = sql.replace("#{update_date}", String.valueOf(t.getUpdateDate()));
    sql = sql.replace("#{vote_title}", String.valueOf(t.getVoteTitle()));
    sql = sql.replace("#{vote_count}", String.valueOf(t.getVoteCount()));
    sql = sql.replace("#{vote_description}", String.valueOf(t.getVoteDescription()));
    sql = sql.replace("#{integral}", String.valueOf(t.getIntegral()));
    sql = sql.replace("#{UUID}", UUID.randomUUID().toString());
    return sql;
  }
}