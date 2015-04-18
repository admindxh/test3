package weixin.guanjia.message.service.impl;

import java.io.Serializable;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.ResourceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.message.entity.NewsItem;
import weixin.guanjia.message.service.NewsItemServiceI;

@Service("newsItemService")
@Transactional
public class NewsItemServiceImpl extends CommonServiceImpl implements NewsItemServiceI {

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	public <T> void delete(T entity) {
		super.delete(entity);

		doDelSql((NewsItem) entity);
	}

	public <T> Serializable save(T entity) {
		((NewsItem) entity).setAccountId(ResourceUtil.getShangJiaAccountId());
		Serializable t = super.save(entity);

		doAddSql((NewsItem) entity);
		return t;
	}

	public <T> void saveOrUpdate(T entity) {
		super.saveOrUpdate(entity);

		doUpdateSql((NewsItem) entity);
	}

	public boolean doAddSql(NewsItem t) {
		return true;
	}

	public boolean doUpdateSql(NewsItem t) {
		return true;
	}

	public boolean doDelSql(NewsItem t) {
		return true;
	}
}