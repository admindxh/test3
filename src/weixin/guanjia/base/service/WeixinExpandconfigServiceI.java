package weixin.guanjia.base.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.guanjia.base.entity.WeixinExpandconfigEntity;

public abstract interface WeixinExpandconfigServiceI extends CommonService {
	public abstract <T> void delete(T paramT);

	public abstract <T> Serializable save(T paramT);

	public abstract <T> void saveOrUpdate(T paramT);

	public abstract boolean doAddSql(WeixinExpandconfigEntity paramWeixinExpandconfigEntity);

	public abstract boolean doUpdateSql(WeixinExpandconfigEntity paramWeixinExpandconfigEntity);

	public abstract boolean doDelSql(WeixinExpandconfigEntity paramWeixinExpandconfigEntity);
}