package weixin.guanjia.base.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.guanjia.base.entity.Subscribe;

public abstract interface SubscribeServiceI extends CommonService {
	public abstract <T> void delete(T paramT);

	public abstract <T> Serializable save(T paramT);

	public abstract <T> void saveOrUpdate(T paramT);

	public abstract boolean doAddSql(Subscribe paramSubscribe);

	public abstract boolean doUpdateSql(Subscribe paramSubscribe);

	public abstract boolean doDelSql(Subscribe paramSubscribe);
}