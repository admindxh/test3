package weixin.guanjia.base.service.impl;

import java.io.Serializable;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.ResourceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.base.entity.UnknownResponse;
import weixin.guanjia.base.service.UnknownResponseServiceI;

@Service("unknownResponseService")
@Transactional
public class UnknownResponseServiceImpl extends CommonServiceImpl implements UnknownResponseServiceI {

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	public <T> void delete(T entity) {
		super.delete(entity);

		doDelSql((UnknownResponse) entity);
	}

	public <T> Serializable save(T entity) {
		UnknownResponse subscribe = (UnknownResponse) entity;
		subscribe.setAccountId(ResourceUtil.getShangJiaAccountId());
		Serializable t = super.save(subscribe);

		doAddSql((UnknownResponse) entity);
		return t;
	}

	public <T> void saveOrUpdate(T entity) {
		super.saveOrUpdate(entity);

		doUpdateSql((UnknownResponse) entity);
	}

	public boolean doAddSql(UnknownResponse t) {
		return true;
	}

	public boolean doUpdateSql(UnknownResponse t) {
		return true;
	}

	public boolean doDelSql(UnknownResponse t) {
		return true;
	}
}