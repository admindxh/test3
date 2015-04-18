package weixin.huodong.service.impl;

import java.io.Serializable;
import java.util.UUID;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.huodong.entity.WxHuodongEntity;
import weixin.huodong.service.WxHuodongServiceI;

@Service("wxHuodongService")
@Transactional
public class WxHuodongServiceImpl extends CommonServiceImpl implements WxHuodongServiceI {
	public <T> void delete(T entity) {
		super.delete(entity);

		doDelSql((WxHuodongEntity) entity);
	}

	public <T> Serializable save(T entity) {
		Serializable t = super.save(entity);

		doAddSql((WxHuodongEntity) entity);
		return t;
	}

	public <T> void saveOrUpdate(T entity) {
		super.saveOrUpdate(entity);

		doUpdateSql((WxHuodongEntity) entity);
	}

	public boolean doAddSql(WxHuodongEntity t) {
		return true;
	}

	public boolean doUpdateSql(WxHuodongEntity t) {
		return true;
	}

	public boolean doDelSql(WxHuodongEntity t) {
		return true;
	}

	public String replaceVal(String sql, WxHuodongEntity t) {
		sql = sql.replace("#{id}", String.valueOf(t.getId()));
		sql = sql.replace("#{create_name}", String.valueOf(t.getCreateName()));
		sql = sql.replace("#{create_date}", String.valueOf(t.getCreateDate()));
		sql = sql.replace("#{update_name}", String.valueOf(t.getUpdateName()));
		sql = sql.replace("#{update_date}", String.valueOf(t.getUpdateDate()));
		sql = sql.replace("#{hd_name}", String.valueOf(t.getHdName()));
		sql = sql.replace("#{hd_status}", String.valueOf(t.getHdStatus()));
		sql = sql.replace("#{UUID}", UUID.randomUUID().toString());
		return sql;
	}
}