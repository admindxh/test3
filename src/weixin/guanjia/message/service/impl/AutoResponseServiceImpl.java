package weixin.guanjia.message.service.impl;

import java.io.Serializable;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.message.entity.AutoResponse;
import weixin.guanjia.message.service.AutoResponseServiceI;

@Service("autoResponseService")
@Transactional
public class AutoResponseServiceImpl extends CommonServiceImpl implements AutoResponseServiceI {
	public <T> void delete(T entity) {
		super.delete(entity);

		doDelSql((AutoResponse) entity);
	}

	public <T> Serializable save(T entity) {
		Serializable t = super.save(entity);

		doAddSql((AutoResponse) entity);
		return t;
	}

	public <T> void saveOrUpdate(T entity) {
		super.saveOrUpdate(entity);

		doUpdateSql((AutoResponse) entity);
	}

	public boolean doAddSql(AutoResponse t) {
		return true;
	}

	public boolean doUpdateSql(AutoResponse t) {
		return true;
	}

	public boolean doDelSql(AutoResponse t) {
		return true;
	}
}