package weixin.guanjia.message.service.impl;

import java.io.Serializable;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.ResourceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.message.entity.TextTemplate;
import weixin.guanjia.message.service.TextTemplateServiceI;

@Service("textTemplateService")
@Transactional
public class TextTemplateServiceImpl extends CommonServiceImpl implements TextTemplateServiceI {

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	public <T> void delete(T entity) {
		super.delete(entity);

		doDelSql((TextTemplate) entity);
	}

	public <T> Serializable save(T entity) {
		((TextTemplate) entity).setAccountId(ResourceUtil.getShangJiaAccountId());
		Serializable t = super.save(entity);

		doAddSql((TextTemplate) entity);
		return t;
	}

	public <T> void saveOrUpdate(T entity) {
		super.saveOrUpdate(entity);

		doUpdateSql((TextTemplate) entity);
	}

	public boolean doAddSql(TextTemplate t) {
		return true;
	}

	public boolean doUpdateSql(TextTemplate t) {
		return true;
	}

	public boolean doDelSql(TextTemplate t) {
		return true;
	}
}