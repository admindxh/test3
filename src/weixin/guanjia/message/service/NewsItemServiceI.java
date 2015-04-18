package weixin.guanjia.message.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.guanjia.message.entity.NewsItem;

public abstract interface NewsItemServiceI extends CommonService {
	public abstract <T> void delete(T paramT);

	public abstract <T> Serializable save(T paramT);

	public abstract <T> void saveOrUpdate(T paramT);

	public abstract boolean doAddSql(NewsItem paramNewsItem);

	public abstract boolean doUpdateSql(NewsItem paramNewsItem);

	public abstract boolean doDelSql(NewsItem paramNewsItem);
}