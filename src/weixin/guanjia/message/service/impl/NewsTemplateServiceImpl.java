package weixin.guanjia.message.service.impl;

import java.io.Serializable;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.ResourceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.message.entity.NewsTemplate;
import weixin.guanjia.message.service.NewsTemplateServiceI;

@Service("newsTemplateService")
@Transactional
public class NewsTemplateServiceImpl extends CommonServiceImpl implements NewsTemplateServiceI {

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	public <T> void delete(T entity) {
		super.delete(entity);

		doDelSql((NewsTemplate) entity);
	}

	public <T> Serializable save(T entity) {
		((NewsTemplate) entity).setAccountId(ResourceUtil.getShangJiaAccountId());
		Serializable t = super.save(entity);

		doAddSql((NewsTemplate) entity);
		return t;
	}

	public <T> void saveOrUpdate(T entity) {
		super.saveOrUpdate(entity);

		doUpdateSql((NewsTemplate) entity);
	}

	public boolean doAddSql(NewsTemplate t) {
		return true;
	}

	public boolean doUpdateSql(NewsTemplate t) {
		return true;
	}

	public boolean doDelSql(NewsTemplate t) {
		return true;
	}
}