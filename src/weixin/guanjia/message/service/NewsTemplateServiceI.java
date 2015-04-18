package weixin.guanjia.message.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.guanjia.message.entity.NewsTemplate;

public abstract interface NewsTemplateServiceI extends CommonService {
	public abstract <T> void delete(T paramT);

	public abstract <T> Serializable save(T paramT);

	public abstract <T> void saveOrUpdate(T paramT);

	public abstract boolean doAddSql(NewsTemplate paramNewsTemplate);

	public abstract boolean doUpdateSql(NewsTemplate paramNewsTemplate);

	public abstract boolean doDelSql(NewsTemplate paramNewsTemplate);
}