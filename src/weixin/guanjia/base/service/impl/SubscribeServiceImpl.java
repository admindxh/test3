package weixin.guanjia.base.service.impl;

import java.io.Serializable;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.ResourceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.base.entity.Subscribe;
import weixin.guanjia.base.service.SubscribeServiceI;

@Service("subscribeService")
@Transactional
public class SubscribeServiceImpl extends CommonServiceImpl implements SubscribeServiceI {

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	public <T> void delete(T entity) {
		super.delete(entity);

		doDelSql((Subscribe) entity);
	}

	public <T> Serializable save(T entity) {
		Subscribe subscribe = (Subscribe) entity;
		subscribe.setAccountid(ResourceUtil.getShangJiaAccountId());
		Serializable t = super.save(subscribe);

		doAddSql((Subscribe) entity);
		return t;
	}

	public <T> void saveOrUpdate(T entity) {
		super.saveOrUpdate(entity);

		doUpdateSql((Subscribe) entity);
	}

	public boolean doAddSql(Subscribe t) {
		return true;
	}

	public boolean doUpdateSql(Subscribe t) {
		return true;
	}

	public boolean doDelSql(Subscribe t) {
		return true;
	}
}