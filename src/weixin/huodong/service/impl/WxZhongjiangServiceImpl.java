package weixin.huodong.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.UUID;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.huodong.entity.WxZhongjiangEntity;
import weixin.huodong.service.WxZhongjiangServiceI;

@Service("wxZhongjiangService")
@Transactional
public class WxZhongjiangServiceImpl extends CommonServiceImpl implements WxZhongjiangServiceI {
	public <T> void delete(T entity) {
		super.delete(entity);

		doDelSql((WxZhongjiangEntity) entity);
	}

	public <T> Serializable save(T entity) {
		Serializable t = super.save(entity);

		doAddSql((WxZhongjiangEntity) entity);
		return t;
	}

	public <T> void saveOrUpdate(T entity) {
		super.saveOrUpdate(entity);

		doUpdateSql((WxZhongjiangEntity) entity);
	}

	public boolean doAddSql(WxZhongjiangEntity t) {
		return true;
	}

	public boolean doUpdateSql(WxZhongjiangEntity t) {
		return true;
	}

	public boolean doDelSql(WxZhongjiangEntity t) {
		return true;
	}

	public String replaceVal(String sql, WxZhongjiangEntity t) {
		sql = sql.replace("#{id}", String.valueOf(t.getId()));
		sql = sql.replace("#{create_name}", String.valueOf(t.getCreateName()));
		sql = sql.replace("#{create_date}", String.valueOf(t.getCreateDate()));
		sql = sql.replace("#{update_name}", String.valueOf(t.getUpdateName()));
		sql = sql.replace("#{update_date}", String.valueOf(t.getUpdateDate()));
		sql = sql.replace("#{platform_code}", String.valueOf(t.getPlatformCode()));
		sql = sql.replace("#{user_account}", String.valueOf(t.getUserAccount()));
		sql = sql.replace("#{huoddong_id}", String.valueOf(t.getHuoddongId()));
		sql = sql.replace("#{jp_name}", String.valueOf(t.getJpName()));
		sql = sql.replace("#{jp_code}", String.valueOf(t.getJpCode()));
		sql = sql.replace("#{jp_level}", String.valueOf(t.getJpLevel()));
		sql = sql.replace("#{jp_flag}", String.valueOf(t.getJpFlag()));
		sql = sql.replace("#{user_anme}", String.valueOf(t.getUserAnme()));
		sql = sql.replace("#{user_telphone}", String.valueOf(t.getUserTelphone()));
		sql = sql.replace("#{user_address}", String.valueOf(t.getUserAddress()));
		sql = sql.replace("#{content}", String.valueOf(t.getContent()));
		sql = sql.replace("#{idcard_a_file}", String.valueOf(t.getIdcardAFile()));
		sql = sql.replace("#{idcard_b_file}", String.valueOf(t.getIdcardBFile()));
		sql = sql.replace("#{UUID}", UUID.randomUUID().toString());
		return sql;
	}

	public WxZhongjiangEntity getWxZhongjiangEntitybyJpCodeAndHdId(String jpcode, String hdid) {
		List<WxZhongjiangEntity> wxZhongjiangEntities = findHql("from WxZhongjiangEntity w where w.jpCode=? and w.huoddongId=?", jpcode, hdid);
		if (null == wxZhongjiangEntities || wxZhongjiangEntities.isEmpty()) return null;
		return wxZhongjiangEntities.get(0);
	}

	public WxZhongjiangEntity getWxZhongjiangEntitybyUserAccount(String userAccount) {
		List<WxZhongjiangEntity> wxZhongjiangEntities = findHql("from WxZhongjiangEntity w where w.userAccount=?", userAccount);
		if (null == wxZhongjiangEntities || wxZhongjiangEntities.isEmpty()) return null;
		return wxZhongjiangEntities.get(0);
	}
}