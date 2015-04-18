package weixin.idea.votepk.service.impl;

import java.util.Date;
import java.util.List;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import weixin.guanjia.gzuserinfo.model.GzUserInfo;
import weixin.guanjia.gzuserinfo.service.GzUserInfoService;
import weixin.idea.votepk.entity.WeixinVotePKRecord;
import weixin.idea.votepk.entity.WeixinVotePKSignUserinfo;
import weixin.idea.votepk.service.WeixinVotePKRecordService;
import weixin.idea.votepk.service.WeixinVotePKService;
import weixin.idea.votepk.service.WeixinVotePKSignUserinfoService;

@Service("weixinVotePKService")
public class WeixinVotePKServiceImpl extends CommonServiceImpl implements
		WeixinVotePKService {

	@Autowired
	private WeixinVotePKSignUserinfoService weixinVotePKSignUserinfoService;

	@Autowired
	private WeixinVotePKRecordService weixinVotePKRecordService;

	@Autowired
	private GzUserInfoService gzUserInfoService;

	public void updateVoteCount(int sceneid, String accountid, String openid,
			String votetype, int count) {
		GzUserInfo voteuser = this.gzUserInfoService.getGzUserInfo(openid,
				accountid);

		List userinfolist = this.weixinVotePKSignUserinfoService
				.findByProperty(WeixinVotePKSignUserinfo.class, "sceneid",
						Integer.valueOf(sceneid));

		if ((userinfolist != null) && (userinfolist.size() != 0)) {
			if (!this.weixinVotePKRecordService.checkVote(openid,
					((WeixinVotePKSignUserinfo) userinfolist.get(0))
							.getOpenid(), accountid)) {
				WeixinVotePKRecord record = new WeixinVotePKRecord();
				record.setVotetype(votetype);
				record.setVotedate(new Date());
				record.setOpenid(((WeixinVotePKSignUserinfo) userinfolist
						.get(0)).getOpenid());
				record.setAccountid(accountid);
				record.setVoteopenid(openid);
				record.setHeadimgurl(voteuser.getHeadimgurl());
				record.setNickname(voteuser.getNickname());
				record.setSubscribe("1");
				this.weixinVotePKRecordService.save(record);
				WeixinVotePKSignUserinfo user = (WeixinVotePKSignUserinfo) userinfolist
						.get(0);

				user.setVotecount(Integer.valueOf(user.getVotecount()
						.intValue() + count));

				this.weixinVotePKSignUserinfoService.updateEntitie(user);
				this.weixinVotePKRecordService.sendMsg(openid,
						voteuser.getOpenid(), accountid, "2");
			}
		}
	}

	public void toSuccessUnsubscribeVoteCount(String accountid,
			String voteopenid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinVotePKRecord.class);
		try {
			cq.eq("accountid", accountid);
			cq.eq("voteopenid", voteopenid);
			cq.eq("subscribe", "0");
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		List<WeixinVotePKRecord> recordlist = this.weixinVotePKRecordService
				.getListByCriteriaQuery(cq, Boolean.valueOf(false));

		for (WeixinVotePKRecord record : recordlist) {
			record.setSubscribe("1");
			GzUserInfo u = this.gzUserInfoService.getGzUserInfo(
					record.getOpenid(), record.getAccountid());
			GzUserInfo voteuser = this.gzUserInfoService.getGzUserInfo(
					voteopenid, record.getAccountid());

			record.setVotenickname(u.getNickname());
			record.setHeadimgurl(voteuser.getHeadimgurl());

			this.weixinVotePKRecordService.updateEntitie(record);

			WeixinVotePKSignUserinfo userinfo = this.weixinVotePKSignUserinfoService
					.getSignUserinfo(accountid, record.getOpenid());

			userinfo.setVotecount(Integer.valueOf(userinfo.getVotecount()
					.intValue() + 1));

			this.weixinVotePKSignUserinfoService.updateEntitie(userinfo);

			this.weixinVotePKRecordService.sendMsg(record.getOpenid(),
					record.getVoteopenid(), record.getAccountid(), "1");
		}
	}
}