package weixin.guanjia.message.service.impl;

import java.io.Serializable;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.message.entity.ReceiveText;
import weixin.guanjia.message.service.ReceiveTextServiceI;

@Service("receiveTextService")
@Transactional
public class ReceiveTextServiceImpl extends CommonServiceImpl implements ReceiveTextServiceI {

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	public <T> void delete(T entity) {
		super.delete(entity);

		doDelSql((ReceiveText) entity);
	}

	public <T> Serializable save(T entity) {
		Serializable t = super.save(entity);

		doAddSql((ReceiveText) entity);
		return t;
	}

	public <T> void saveOrUpdate(T entity) {
		super.saveOrUpdate(entity);

		doUpdateSql((ReceiveText) entity);
	}

	public boolean doAddSql(ReceiveText t) {
		return true;
	}

	public boolean doUpdateSql(ReceiveText t) {
		return true;
	}

	public boolean doDelSql(ReceiveText t) {
		return true;
	}
}