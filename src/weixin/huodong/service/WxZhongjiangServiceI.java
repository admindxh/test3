package weixin.huodong.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.huodong.entity.WxZhongjiangEntity;

public abstract interface WxZhongjiangServiceI extends CommonService {
	public abstract <T> void delete(T paramT);

	public abstract <T> Serializable save(T paramT);

	public abstract <T> void saveOrUpdate(T paramT);

	public abstract boolean doAddSql(WxZhongjiangEntity paramWxZhongjiangEntity);

	public abstract boolean doUpdateSql(WxZhongjiangEntity paramWxZhongjiangEntity);

	public abstract boolean doDelSql(WxZhongjiangEntity paramWxZhongjiangEntity);

	public abstract WxZhongjiangEntity getWxZhongjiangEntitybyJpCodeAndHdId(String paramString1, String paramString2);

	public abstract WxZhongjiangEntity getWxZhongjiangEntitybyUserAccount(String paramString);
}