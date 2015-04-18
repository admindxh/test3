package weixin.guanjia.base.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.guanjia.base.entity.UnknownResponse;

public abstract interface UnknownResponseServiceI extends CommonService {
	public abstract <T> void delete(T paramT);

	public abstract <T> Serializable save(T paramT);

	public abstract <T> void saveOrUpdate(T paramT);

	public abstract boolean doAddSql(UnknownResponse paramUnknownResponse);

	public abstract boolean doUpdateSql(UnknownResponse paramUnknownResponse);

	public abstract boolean doDelSql(UnknownResponse paramUnknownResponse);
}