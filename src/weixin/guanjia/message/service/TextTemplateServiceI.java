package weixin.guanjia.message.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.guanjia.message.entity.TextTemplate;

public abstract interface TextTemplateServiceI extends CommonService {
	public abstract <T> void delete(T paramT);

	public abstract <T> Serializable save(T paramT);

	public abstract <T> void saveOrUpdate(T paramT);

	public abstract boolean doAddSql(TextTemplate paramTextTemplate);

	public abstract boolean doUpdateSql(TextTemplate paramTextTemplate);

	public abstract boolean doDelSql(TextTemplate paramTextTemplate);
}