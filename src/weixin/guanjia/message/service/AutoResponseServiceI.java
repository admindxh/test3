package weixin.guanjia.message.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.guanjia.message.entity.AutoResponse;

public abstract interface AutoResponseServiceI extends CommonService {
	public abstract <T> void delete(T paramT);

	public abstract <T> Serializable save(T paramT);

	public abstract <T> void saveOrUpdate(T paramT);

	public abstract boolean doAddSql(AutoResponse paramAutoResponse);

	public abstract boolean doUpdateSql(AutoResponse paramAutoResponse);

	public abstract boolean doDelSql(AutoResponse paramAutoResponse);
}