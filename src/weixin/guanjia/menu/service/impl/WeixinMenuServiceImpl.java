package weixin.guanjia.menu.service.impl;

import java.io.Serializable;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.ResourceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.menu.entity.MenuEntity;
import weixin.guanjia.menu.service.WeixinMenuServiceI;

@Service("weixinMenuService")
@Transactional
public class WeixinMenuServiceImpl extends CommonServiceImpl implements WeixinMenuServiceI {

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	public <T> void delete(T entity) {
		super.delete(entity);

		doDelSql((MenuEntity) entity);
	}

	public <T> Serializable save(T entity) {
		MenuEntity menuEntity = (MenuEntity) entity;
		menuEntity.setAccountId(ResourceUtil.getShangJiaAccountId());
		Serializable t = super.save(entity);

		doAddSql((MenuEntity) entity);
		return t;
	}

	public <T> void saveOrUpdate(T entity) {
		super.saveOrUpdate(entity);

		doUpdateSql((MenuEntity) entity);
	}

	public boolean doAddSql(MenuEntity t) {
		return true;
	}

	public boolean doUpdateSql(MenuEntity t) {
		return true;
	}

	public boolean doDelSql(MenuEntity t) {
		return true;
	}
}