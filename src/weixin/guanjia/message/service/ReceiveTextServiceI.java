package weixin.guanjia.message.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.guanjia.message.entity.ReceiveText;

public abstract interface ReceiveTextServiceI extends CommonService {
	public abstract <T> void delete(T paramT);

	public abstract <T> Serializable save(T paramT);

	public abstract <T> void saveOrUpdate(T paramT);

	public abstract boolean doAddSql(ReceiveText paramReceiveText);

	public abstract boolean doUpdateSql(ReceiveText paramReceiveText);

	public abstract boolean doDelSql(ReceiveText paramReceiveText);
}