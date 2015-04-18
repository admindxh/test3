package weixin.huodong.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.huodong.entity.WxHuodongEntity;

public abstract interface WxHuodongServiceI extends CommonService {
	public abstract <T> void delete(T paramT);

	public abstract <T> Serializable save(T paramT);

	public abstract <T> void saveOrUpdate(T paramT);

	public abstract boolean doAddSql(WxHuodongEntity paramWxHuodongEntity);

	public abstract boolean doUpdateSql(WxHuodongEntity paramWxHuodongEntity);

	public abstract boolean doDelSql(WxHuodongEntity paramWxHuodongEntity);
}