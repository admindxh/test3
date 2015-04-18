package weixin.guanjia.base.service.impl;

import java.io.Serializable;
import java.util.UUID;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.base.entity.WeixinExpandconfigEntity;
import weixin.guanjia.base.service.WeixinExpandconfigServiceI;

@Service("weixinExpandconfigService")
@Transactional
public class WeixinExpandconfigServiceImpl extends CommonServiceImpl implements WeixinExpandconfigServiceI {
	public <T> void delete(T entity) {
		super.delete(entity);

		doDelSql((WeixinExpandconfigEntity) entity);
	}

	public <T> Serializable save(T entity) {
		Serializable t = super.save(entity);

		doAddSql((WeixinExpandconfigEntity) entity);
		return t;
	}

	public <T> void saveOrUpdate(T entity) {
		super.saveOrUpdate(entity);

		doUpdateSql((WeixinExpandconfigEntity) entity);
	}

	public boolean doAddSql(WeixinExpandconfigEntity t) {
		return true;
	}

	public boolean doUpdateSql(WeixinExpandconfigEntity t) {
		return true;
	}

	public boolean doDelSql(WeixinExpandconfigEntity t) {
		return true;
	}

	public String replaceVal(String sql, WeixinExpandconfigEntity t) {
		sql = sql.replace("#{id}", String.valueOf(t.getId()));
		sql = sql.replace("#{keyword}", String.valueOf(t.getKeyword()));
		sql = sql.replace("#{classname}", String.valueOf(t.getClassname()));
		sql = sql.replace("#{accountid}", String.valueOf(t.getAccountId()));
		sql = sql.replace("#{name}", String.valueOf(t.getName()));
		sql = sql.replace("#{content}", String.valueOf(t.getContent()));
		sql = sql.replace("#{UUID}", UUID.randomUUID().toString());
		return sql;
	}
}