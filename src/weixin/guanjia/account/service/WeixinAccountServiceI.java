package weixin.guanjia.account.service;

import java.io.Serializable;
import java.util.List;
import org.jeecgframework.core.common.service.CommonService;
import weixin.guanjia.account.entity.WeixinAccountEntity;

/**
 * 微信公众平台用户service接口
 * 
 * <p>创建时间: 2014年10月8日 下午2:52:18</p>
 * @author <a href="mailto:hongdanping@163.com">hdp</a>
 * @version V1.0
 * @since V1.0
 */
public abstract interface WeixinAccountServiceI extends CommonService {
	public abstract <T> void delete(T paramT);

	public abstract <T> Serializable save(T paramT);

	public abstract <T> void saveOrUpdate(T paramT);

	public abstract boolean doAddSql(
			WeixinAccountEntity paramWeixinAccountEntity);

	public abstract boolean doUpdateSql(
			WeixinAccountEntity paramWeixinAccountEntity);

	public abstract boolean doDelSql(
			WeixinAccountEntity paramWeixinAccountEntity);

	public abstract String getAccessToken();

	public abstract String getAccessToken(String paramString);

	@Deprecated
	public abstract WeixinAccountEntity findLoginWeixinAccount();

	public abstract List<WeixinAccountEntity> findByUsername(String paramString);

	public abstract WeixinAccountEntity findByToUsername(String paramString);

	public abstract String getNewAccessToken(String paramString);
}