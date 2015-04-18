package weixin.guanjia.gzuserinfo.timer;

import java.util.List;

import org.jeecgframework.web.system.service.SystemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.core.util.WeixinUtil;
import weixin.guanjia.gzuserinfo.entity.GzUserInfoYw;
import weixin.guanjia.gzuserinfo.model.GzUserInfo;
import weixin.guanjia.gzuserinfo.service.GzUserInfoService;

@Component
public class GzUserInfoTimer {
	
	private static Logger LOG  = LoggerFactory.getLogger(GzUserInfoTimer.class);

	@Autowired
	private GzUserInfoService gzUserInfoService;

	@Autowired
	private SystemService systemService;

	@Scheduled(cron = "0 */2 * * * *")
	public void oneOClockPerDay() {
		if (LOG.isInfoEnabled()) LOG.info("....每分请求一次......");
		List<WeixinAccountEntity> accountList = this.systemService.findByProperty(
				WeixinAccountEntity.class, "accounttype", "1");
		for (WeixinAccountEntity accountInfo : accountList) {
			String hql = "from GzUserInfoYw where accountId='"
					+ accountInfo.getId() + "' and nickname is null";
			List<GzUserInfoYw> gzUserInfoList = this.systemService.findByQueryString(hql);
			if (LOG.isInfoEnabled()) LOG.info(".....获得用户的数据...." + gzUserInfoList.size());
			for (int i = 0; i < gzUserInfoList.size(); i++) {
				GzUserInfoYw gzUserInfo = (GzUserInfoYw) gzUserInfoList.get(i);
				GzUserInfo temp = this.gzUserInfoService.getGzUserInfo(
						gzUserInfo.getOpenid(), accountInfo.getId());
				if (LOG.isInfoEnabled()) LOG.info(".......a....................." + temp.getCountry());
				gzUserInfo.setCity(temp.getCity());
				gzUserInfo.setCountry(temp.getCountry());
				gzUserInfo.setHeadimgurl(temp.getHeadimgurl());
				String nickName = WeixinUtil.encode(temp.getNickname()
						.getBytes());
				gzUserInfo.setNickname(nickName);
				gzUserInfo.setOpenid(temp.getOpenid());
				gzUserInfo.setProvince(temp.getProvince());
				gzUserInfo.setSex(temp.getSex());
				gzUserInfo.setSubscribe(temp.getSubscribe());
				gzUserInfo.setSubscribeTime(temp.getSubscribe_time());
				gzUserInfo.setAddtime(new java.sql.Date(new java.util.Date()
						.getTime()));
				this.systemService.updateEntitie(gzUserInfo);
			}
		}
	}
}