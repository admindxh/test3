package weixin.guanjia.menu.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.guanjia.menu.entity.MenuEntity;

public abstract interface WeixinMenuServiceI extends CommonService {
	public abstract <T> void delete(T paramT);

	public abstract <T> Serializable save(T paramT);

	public abstract <T> void saveOrUpdate(T paramT);

	public abstract boolean doAddSql(MenuEntity paramMenuEntity);

	public abstract boolean doUpdateSql(MenuEntity paramMenuEntity);

	public abstract boolean doDelSql(MenuEntity paramMenuEntity);
}