package weixin.idea.votepk.controller;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import javax.servlet.http.HttpServletRequest;
import net.sf.json.JSONObject;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.util.WeixinUtil;
import weixin.guanjia.gzuserinfo.entity.GzUserInfoYw;
import weixin.guanjia.gzuserinfo.model.GzUserInfo;
import weixin.guanjia.gzuserinfo.service.GzUserInfoService;
import weixin.guanjia.message.service.CustomerMessageService;
import weixin.idea.qrcode.entity.WeixinQrcodeEntity;
import weixin.idea.qrcode.entity.WeixinQrcodeSceneSeq;
import weixin.idea.qrcode.service.WeixinQrcodeSceneSeqServiceI;
import weixin.idea.qrcode.service.WeixinQrcodeServiceI;
import weixin.idea.votepk.entity.WeixinVotePKConfig;
import weixin.idea.votepk.entity.WeixinVotePKRecord;
import weixin.idea.votepk.entity.WeixinVotePKSignUserinfo;
import weixin.idea.votepk.service.WeixinVotePKConfigService;
import weixin.idea.votepk.service.WeixinVotePKRecordService;
import weixin.idea.votepk.service.WeixinVotePKSignUserinfoService;
import weixin.idea.votepk.view.WeixinVotePKRecordView;
import weixin.idea.votepk.view.WeixinVotePKSortView;
import weixin.util.DateUtils;

@Scope("prototype")
@Controller
@RequestMapping({ "/weixinVotePKController" })
public class WeixinVotePKController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(WeixinVotePKController.class);

	@Autowired
	private WeixinVotePKSignUserinfoService weixinVotePKSignUserinfoService;

	@Autowired
	private WeixinVotePKRecordService weixinVotePKRecordService;

	@Autowired
	private GzUserInfoService gzUserInfoService;

	@Autowired
	private WeixinQrcodeServiceI weixinQrcodeService;

	@Autowired
	private WeixinQrcodeSceneSeqServiceI weixinQrcodeSceneSeqService;

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	@Autowired
	private CustomerMessageService customerMessageService;

	@Autowired
	private WeixinVotePKConfigService weixinVotePKConfigService;

	@RequestMapping(params = { "goZhongjiang" })
	public ModelAndView goZhongjiang() {
		return new ModelAndView("weixin/idea/votepk/zhongjiang");
	}

	@RequestMapping(params = { "goSuccess" })
	public ModelAndView goSuccess() {
		return new ModelAndView("weixin/idea/votepk/success");
	}

	@RequestMapping(params = { "goVotePK" })
	public ModelAndView goVotePK(
			WeixinVotePKSignUserinfo weixinVotePKSignUserinfo,
			String voteopenid, HttpServletRequest request) {
		ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");

		String accountid = weixinVotePKSignUserinfo.getAccountid();
		String openid = weixinVotePKSignUserinfo.getOpenid();

		WeixinAccountEntity account = (WeixinAccountEntity) this.weixinAccountService
				.get(WeixinAccountEntity.class, accountid);

		String shareurl = "";
		try {
			String redirecturi = URLEncoder.encode(bundler.getString("domain")
					+ "/weixinVotePKController.do?goVotePK&openid=" + openid
					+ "&accountid=" + accountid, "UTF-8");
			shareurl = WeixinUtil.web_oauth_url
					.replace("APPID", account.getAccountappid())
					.replace("REDIRECT_URI", redirecturi)
					.replace("SCOPE", "snsapi_base");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		if (request.getParameter("code") != null) {
			String code = request.getParameter("code");
			logger.info("通过网页授权获得的CODE为：" + code);
			String openidurl = WeixinUtil.web_oauth_accesstoken_url
					.replace("APPID", account.getAccountappid())
					.replace("SECRET", account.getAccountappsecret())
					.replace("CODE", code);

			System.out.println(openidurl);
			JSONObject jsonObj = WeixinUtil.httpRequest(openidurl, "GET", "");
			if (jsonObj.containsKey("openid")) {
				logger.info("通过网页授权获得的OPENID为：" + jsonObj.getString("openid"));

				GzUserInfoYw voteuser = this.gzUserInfoService
						.getLocalUserinfo(jsonObj.getString("openid"),
								accountid);
				if ((voteuser != null) && (voteuser.getSubscribe().equals("1"))) {
					request.setAttribute("subscribeflag", Integer.valueOf(1));
				} else {
					request.setAttribute("subscribeflag", Integer.valueOf(0));
				}
				voteopenid = jsonObj.getString("openid");
			}

		}

		WeixinVotePKSignUserinfo userinfo = this.weixinVotePKSignUserinfoService
				.getSignUserinfo(accountid, openid);

		GzUserInfoYw cuser = this.gzUserInfoService.getLocalUserinfo(openid,
				accountid);

		request.setAttribute("domain", bundler.getString("domain"));

		request.setAttribute("appid", account.getAccountappid());
		if (userinfo != null) {
			List<WeixinVotePKRecord> recordlist = this.weixinVotePKRecordService
					.getVotePkRecordList(openid, accountid);
			List viewlist = new ArrayList();
			for (WeixinVotePKRecord r : recordlist) {
				WeixinVotePKSignUserinfo voteinfo = this.weixinVotePKSignUserinfoService
						.getSignUserinfo(r.getAccountid(), r.getVoteopenid());

				GzUserInfoYw u = this.gzUserInfoService.getLocalUserinfo(
						r.getVoteopenid(), r.getAccountid());

				WeixinVotePKRecordView view = new WeixinVotePKRecordView();
				view.setNickname("匿名用户");
				view.setOpenid(r.getVoteopenid());
				view.setAccountid(r.getAccountid());
				if (voteinfo != null)
					view.setVotecount(voteinfo.getVotecount());
				else {
					view.setVotecount(Integer.valueOf(0));
				}
				view.setVotedate(DateUtils.formatDate(r.getVotedate(),
						"yyyy-MM-dd HH:mm:ss"));
				view.setVotetype(r.getVotetype());
				if (u != null) {
					if (u.getNickname() != null) {
						view.setNickname(new String(WeixinUtil.decode(u
								.getNickname())));
					}

					view.setImgurl(u.getHeadimgurl());
				}
				viewlist.add(view);
			}

			request.setAttribute("userinfo", userinfo);

			request.setAttribute("recordlist", viewlist);
			request.setAttribute("cuser", cuser);
			request.setAttribute("openid", openid);
			request.setAttribute("accountid", accountid);
			request.setAttribute("shareurl", shareurl);
			String subscribeurl = this.weixinVotePKConfigService.getByName(
					"快捷关注图文URL", accountid).getConfigValue();
			String hdjs = this.weixinVotePKConfigService.getByName("活动介绍URL",
					accountid).getConfigValue();
			String hdgz = this.weixinVotePKConfigService.getByName("活动规则URL",
					accountid).getConfigValue();
			String tpgl = this.weixinVotePKConfigService.getByName("投票攻略URL",
					accountid).getConfigValue();
			request.setAttribute("hdjs", "#");
			request.setAttribute("hdgz", "#");
			request.setAttribute("tpgl", "#");
			if (!StringUtil.isEmpty(hdjs)) {
				request.setAttribute("hdjs", hdjs);
			}
			if (!StringUtil.isEmpty(tpgl)) {
				request.setAttribute("tpgl", tpgl);
			}
			if (!StringUtil.isEmpty(hdgz)) {
				request.setAttribute("hdgz", hdgz);
			}
			request.setAttribute("voteopenid", voteopenid);
			request.setAttribute("subscribeurl", subscribeurl);

			return new ModelAndView("weixin/idea/votepk/weixinVotePK-userinfo");
		}

		if (request.getParameter("code") != null) {
			String code = request.getParameter("code");
			logger.info("通过网页授权获得的CODE为：" + code);
			String openidurl = WeixinUtil.web_oauth_accesstoken_url
					.replace("APPID", account.getAccountappid())
					.replace("SECRET", account.getAccountappsecret())
					.replace("CODE", code);

			JSONObject jsonObj = WeixinUtil.httpRequest(openidurl, "GET", "");
			openid = jsonObj.getString("openid");
		}
		GzUserInfo user = this.gzUserInfoService.getGzUserInfo(openid,
				accountid);
		request.setAttribute("userinfo", user);
		request.setAttribute("openid", openid);
		request.setAttribute("accountid", accountid);
		request.setAttribute("shareurl", shareurl);
		request.setAttribute("voteopenid", voteopenid);
		return new ModelAndView("weixin/idea/votepk/weixinVotePK-sign");
	}

	@RequestMapping(params = { "goVotePKBySort" })
	public ModelAndView goVotePKBySort(
			WeixinVotePKSignUserinfo weixinVotePKSignUserinfo,
			String voteopenid, HttpServletRequest request) {
		ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");

		String accountid = weixinVotePKSignUserinfo.getAccountid();
		String openid = weixinVotePKSignUserinfo.getOpenid();
		if (!StringUtil.isEmpty(voteopenid)) {
			openid = voteopenid;
		}

		WeixinAccountEntity account = (WeixinAccountEntity) this.weixinAccountService
				.get(WeixinAccountEntity.class, accountid);

		String shareurl = "";
		try {
			String redirecturi = URLEncoder.encode(bundler.getString("domain")
					+ "/weixinVotePKController.do?goVotePK&openid=" + openid
					+ "&accountid=" + accountid, "UTF-8");
			shareurl = WeixinUtil.web_oauth_url
					.replace("APPID", account.getAccountappid())
					.replace("REDIRECT_URI", redirecturi)
					.replace("SCOPE", "snsapi_base");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		WeixinVotePKSignUserinfo userinfo = this.weixinVotePKSignUserinfoService
				.getSignUserinfo(accountid, openid);

		GzUserInfoYw cuser = this.gzUserInfoService.getLocalUserinfo(openid,
				accountid);

		request.setAttribute("domain", bundler.getString("domain"));

		request.setAttribute("appid", account.getAccountappid());
		if (userinfo != null) {
			List<WeixinVotePKRecord> recordlist = this.weixinVotePKRecordService
					.getVotePkRecordList(openid, accountid);
			List viewlist = new ArrayList();
			for (WeixinVotePKRecord r : recordlist) {
				WeixinVotePKSignUserinfo voteinfo = this.weixinVotePKSignUserinfoService
						.getSignUserinfo(r.getAccountid(), r.getVoteopenid());

				WeixinVotePKRecordView view = new WeixinVotePKRecordView();
				view.setOpenid(r.getVoteopenid());
				view.setAccountid(r.getAccountid());
				if (voteinfo != null)
					view.setVotecount(voteinfo.getVotecount());
				else {
					view.setVotecount(Integer.valueOf(0));
				}
				view.setVotedate(DateUtils.formatDate(r.getVotedate(),
						"yyyy-MM-dd HH:mm:ss"));
				view.setVotetype(r.getVotetype());
				view.setNickname(r.getNickname());
				view.setImgurl(r.getHeadimgurl());
				viewlist.add(view);
			}

			request.setAttribute("userinfo", userinfo);

			request.setAttribute("recordlist", viewlist);
			request.setAttribute("cuser", cuser);
			request.setAttribute("openid", openid);
			request.setAttribute("accountid", accountid);
			request.setAttribute("shareurl", shareurl);
			request.setAttribute("voteopenid", voteopenid);
			String subscribeurl = this.weixinVotePKConfigService.getByName(
					"快捷关注图文URL", accountid).getConfigValue();
			request.setAttribute("subscribeurl", subscribeurl);
			String hdjs = this.weixinVotePKConfigService.getByName("活动介绍URL",
					accountid).getConfigValue();
			String hdgz = this.weixinVotePKConfigService.getByName("活动规则URL",
					accountid).getConfigValue();
			String tpgl = this.weixinVotePKConfigService.getByName("投票攻略URL",
					accountid).getConfigValue();
			request.setAttribute("hdjs", "#");
			request.setAttribute("hdgz", "#");
			request.setAttribute("tpgl", "#");
			if (!StringUtil.isEmpty(hdjs)) {
				request.setAttribute("hdjs", hdjs);
			}
			if (!StringUtil.isEmpty(tpgl)) {
				request.setAttribute("tpgl", tpgl);
			}
			if (!StringUtil.isEmpty(hdgz)) {
				request.setAttribute("hdgz", hdgz);
			}
		}

		return new ModelAndView("weixin/idea/votepk/weixinVotePK-userinfo");
	}

	@RequestMapping(params = { "doSign" })
	public ModelAndView doSign(WeixinVotePKSignUserinfo userinfo,
			HttpServletRequest request) {
		GzUserInfoYw user = this.gzUserInfoService.getLocalUserinfo(
				userinfo.getOpenid(), userinfo.getAccountid());

		if (user == null) {
			WeixinAccountEntity account = (WeixinAccountEntity) this.weixinAccountService
					.get(WeixinAccountEntity.class, userinfo.getAccountid());
			this.gzUserInfoService.saveGzUserInfoByOpenId(userinfo.getOpenid(),
					account.getWeixinaccountid());
		}
		AjaxJson j = new AjaxJson();

		WeixinQrcodeEntity weixinqrcode = new WeixinQrcodeEntity();
		int sceneid = this.weixinQrcodeSceneSeqService
				.getQrcodeSceneseq(userinfo.getAccountid()).getCount()
				.intValue();
		weixinqrcode.setSceneId(Integer.valueOf(sceneid));
		weixinqrcode.setAccountid(userinfo.getAccountid());

		String qrcodeurl = this.weixinQrcodeService.getQrcodeImgurl(
				weixinqrcode, request);

		userinfo.setQrcodeurl(qrcodeurl);
		userinfo.setSceneid(Integer.valueOf(sceneid));
		userinfo.setSigndate(new Date());
		userinfo.setVotecount(Integer.valueOf(0));
		this.weixinVotePKSignUserinfoService.save(userinfo);
		return goVotePK(userinfo, userinfo.getOpenid(), request);
	}

	@RequestMapping(params = { "goVotePKSort" })
	public ModelAndView goVotePKSort(String accountid, int page,
			HttpServletRequest request) {
		int pageSize = Integer.valueOf(
				this.weixinVotePKConfigService.getByName("投票排行每页显示数量",
						accountid).getConfigValue()).intValue();
		CriteriaQuery cq = new CriteriaQuery(WeixinVotePKSignUserinfo.class);
		try {
			cq.eq("accountid", accountid);
			cq.setCurPage(Integer.valueOf(page));
			cq.setPageSize(pageSize);
			cq.addOrder("votecount", SortDirection.desc);
			cq.add();
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		List<WeixinVotePKSignUserinfo> userlist = this.weixinVotePKSignUserinfoService
				.getListByCriteriaQuery(cq, Boolean.valueOf(true));
		int count = this.weixinVotePKSignUserinfoService.count(cq);
		List viewlist = new ArrayList();
		for (WeixinVotePKSignUserinfo u : userlist) {
			GzUserInfoYw gzuser = this.gzUserInfoService.getLocalUserinfo(
					u.getOpenid(), u.getAccountid());

			if (gzuser == null) {
				break;
			}
			WeixinVotePKSortView view = new WeixinVotePKSortView();
			view.setAccountid(u.getAccountid());
			view.setVotecount(u.getVotecount().intValue());
			view.setOpenid(u.getOpenid());
			view.setImgurl(gzuser.getHeadimgurl());
			viewlist.add(view);
		}
		int pagecount = count % pageSize == 0 ? count / pageSize : count
				/ pageSize + 1;
		String openid = request.getParameter("openid");
		String voteopenid = request.getParameter("voteopenid");
		request.setAttribute("openid", openid);
		request.setAttribute("voteopenid", voteopenid);
		request.setAttribute("accountid", accountid);
		request.setAttribute("count", Integer.valueOf(count));
		request.setAttribute("pagecount", Integer.valueOf(pagecount));
		request.setAttribute("page", Integer.valueOf(page));
		request.setAttribute("pageSize", Integer.valueOf(pageSize));
		request.setAttribute("viewlist", viewlist);
		request.setAttribute("shareurl", getShareUrl(openid, accountid));
		WeixinVotePKSignUserinfo userinfo = this.weixinVotePKSignUserinfoService
				.getSignUserinfo(accountid, openid);
		request.setAttribute("userinfo", userinfo);
		return new ModelAndView("weixin/idea/votepk/weixinVotePK-sort");
	}

	private String getShareUrl(String openid, String accountid) {
		ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");
		WeixinAccountEntity account = (WeixinAccountEntity) this.weixinAccountService
				.get(WeixinAccountEntity.class, accountid);

		String shareurl = "";
		try {
			String redirecturi = URLEncoder.encode(bundler.getString("domain")
					+ "/weixinVotePKController.do?goVotePK&openid=" + openid
					+ "&accountid=" + accountid, "UTF-8");
			shareurl = WeixinUtil.web_oauth_url
					.replace("APPID", account.getAccountappid())
					.replace("REDIRECT_URI", redirecturi)
					.replace("SCOPE", "snsapi_base");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return shareurl;
	}

	@RequestMapping(params = { "getMore" })
	@ResponseBody
	public AjaxJson getMore(String accountid, int page,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		int pageSize = 10;
		CriteriaQuery cq = new CriteriaQuery(WeixinVotePKSignUserinfo.class);
		try {
			cq.eq("accountid", accountid);
			cq.setCurPage(Integer.valueOf(page));
			cq.setPageSize(pageSize);
			cq.addOrder("votecount", SortDirection.desc);
			cq.add();
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		List<WeixinVotePKSignUserinfo> userlist = this.weixinVotePKSignUserinfoService
				.getListByCriteriaQuery(cq, Boolean.valueOf(true));
		List viewlist = new ArrayList();
		for (WeixinVotePKSignUserinfo u : userlist) {
			GzUserInfoYw gzuser = this.gzUserInfoService.getLocalUserinfo(
					u.getOpenid(), u.getAccountid());
			WeixinVotePKSortView view = new WeixinVotePKSortView();
			view.setAccountid(u.getAccountid());
			view.setImgurl(gzuser.getHeadimgurl());
			view.setNickname(new String(WeixinUtil.decode(gzuser.getNickname())));
			view.setVotecount(u.getVotecount().intValue());
			view.setOpenid(u.getOpenid());
			viewlist.add(view);
		}
		j.setObj(viewlist);
		return j;
	}

	@RequestMapping(params = { "doAddVoteCountByFriends" })
	@ResponseBody
	public AjaxJson doAddVoteCountByFriends(WeixinVotePKSignUserinfo userinfo,
			String voteopenid, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();

		if (StringUtil.isEmpty(voteopenid)) {
			j.setSuccess(false);
			return j;
		}

		if (userinfo.getOpenid().equals(voteopenid)) {
			return j;
		}

		GzUserInfoYw yw = this.gzUserInfoService.getLocalUserinfo(voteopenid,
				userinfo.getAccountid());
		if ((yw != null) && (yw.getSubscribe().equals("1"))) {
			userinfo = (WeixinVotePKSignUserinfo) this.weixinVotePKSignUserinfoService
					.get(WeixinVotePKSignUserinfo.class, userinfo.getId());

			int maxcount = Integer.valueOf(
					this.weixinVotePKConfigService.getByName("朋友圈分享投票数量",
							userinfo.getAccountid()).getConfigValue())
					.intValue();
			userinfo.setVotecount(Integer.valueOf(userinfo.getVotecount()
					.intValue() + maxcount));
			this.weixinVotePKSignUserinfoService.updateEntitie(userinfo);

			WeixinVotePKRecord record = new WeixinVotePKRecord();
			record.setAccountid(userinfo.getAccountid());
			record.setOpenid(userinfo.getOpenid());
			record.setVotedate(new Date());
			record.setVoteopenid(voteopenid);
			record.setVotenickname(new String(WeixinUtil.decode(yw
					.getNickname())));
			record.setSubscribe("1");
			GzUserInfoYw cuser = this.gzUserInfoService.getLocalUserinfo(
					userinfo.getOpenid(), userinfo.getAccountid());
			if (cuser != null)
				record.setNickname(new String(WeixinUtil.decode(cuser
						.getNickname())));
			else {
				record.setNickname("匿名用户");
			}

			record.setVotetype("3");
			this.weixinVotePKRecordService.save(record);
			j.setSuccess(true);
			this.weixinVotePKRecordService.sendMsg(userinfo.getOpenid(),
					voteopenid, userinfo.getAccountid(), "3");
		}
		return j;
	}

	@RequestMapping(params = { "doVotePK" })
	@ResponseBody
	public AjaxJson doVotePK(WeixinVotePKSignUserinfo userinfo,
			String voteopenid, HttpServletRequest request) {
		GzUserInfoYw cuser = this.gzUserInfoService.getLocalUserinfo(
				userinfo.getOpenid(), userinfo.getAccountid());
		Map locationmap = new HashMap();
		GzUserInfoYw voteuser = null;
		AjaxJson j = new AjaxJson();
		if (voteopenid.equals(userinfo.getOpenid())) {
			j.setSuccess(false);
			j.setMsg("亲，不能为自己投票喔！");
			locationmap.put("flag", "0");

			j.setAttributes(locationmap);
			return j;
		}
		if (StringUtil.isEmpty(voteopenid)) {
			j.setSuccess(false);
			j.setMsg("亲，请重新进入投票页面！");
			locationmap.put("flag", "0");

			j.setAttributes(locationmap);
			return j;
		}

		if (this.weixinVotePKRecordService.checkVote(userinfo.getOpenid(),
				voteopenid, userinfo.getAccountid())) {
			j.setSuccess(false);
			j.setMsg("你已经投过票了，不能重复投票。");
			locationmap.put("flag", "0");
			j.setAttributes(locationmap);
			return j;
		}

		voteuser = this.gzUserInfoService.getLocalUserinfo(voteopenid,
				userinfo.getAccountid());

		if ((voteuser == null) || (voteuser.getSubscribe().equals("0"))) {
			WeixinVotePKRecord record = new WeixinVotePKRecord();
			record.setAccountid(userinfo.getAccountid());
			record.setOpenid(userinfo.getOpenid());
			record.setVotedate(new Date());
			record.setVoteopenid(voteopenid);

			record.setVotetype("1");
			record.setSubscribe("0");
			if ((voteuser != null) && (voteuser.getHeadimgurl() != null))
				record.setHeadimgurl(voteuser.getHeadimgurl());
			else {
				record.setHeadimgurl("#");
			}

			if (cuser != null)
				record.setNickname(new String(WeixinUtil.decode(cuser
						.getNickname())));
			else {
				record.setNickname("匿名用户");
			}
			this.weixinVotePKRecordService.save(record);
			j.setSuccess(false);
			locationmap.put("flag", "1");
			j.setAttributes(locationmap);
			return j;
		}

		userinfo = (WeixinVotePKSignUserinfo) this.weixinVotePKSignUserinfoService
				.get(WeixinVotePKSignUserinfo.class, userinfo.getId());

		userinfo.setVotecount(Integer.valueOf(userinfo.getVotecount()
				.intValue() + 1));
		this.weixinVotePKSignUserinfoService.updateEntitie(userinfo);

		WeixinVotePKRecord record = new WeixinVotePKRecord();
		record.setAccountid(userinfo.getAccountid());
		record.setOpenid(userinfo.getOpenid());
		record.setVotedate(new Date());
		record.setVoteopenid(voteopenid);

		record.setVotetype("1");
		record.setSubscribe("1");
		record.setVotenickname(new String(WeixinUtil.decode(voteuser
				.getNickname())));
		if ((voteuser != null) && (voteuser.getHeadimgurl() != null))
			record.setHeadimgurl(voteuser.getHeadimgurl());
		else {
			record.setHeadimgurl("#");
		}

		if (cuser != null)
			record.setNickname(new String(
					WeixinUtil.decode(cuser.getNickname())));
		else {
			record.setNickname("匿名用户");
		}
		this.weixinVotePKRecordService.save(record);

		this.weixinVotePKRecordService.sendMsg(record.getOpenid(),
				record.getVoteopenid(), record.getAccountid(),
				record.getVotetype());
		j.setSuccess(true);
		return j;
	}

	@RequestMapping(params = { "checkVoteUser" })
	@ResponseBody
	public AjaxJson checkVoteUser(WeixinVotePKSignUserinfo userinfo,
			String voteopenid, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		j.setSuccess(false);

		if (StringUtil.isEmpty(voteopenid)) {
			j.setSuccess(false);
			j.setMsg("0");
			return j;
		}
		GzUserInfoYw voteuser = this.gzUserInfoService.getLocalUserinfo(
				voteopenid, userinfo.getAccountid());
		if ((voteuser != null) && (voteuser.getSubscribe().equals("1"))) {
			j.setSuccess(true);
			j.setMsg("1");
		}
		return j;
	}

	@RequestMapping(params = { "checkSubscribe" })
	@ResponseBody
	public AjaxJson checkSubscribe(WeixinVotePKSignUserinfo userinfo,
			String voteopenid, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		GzUserInfoYw voteuser = this.gzUserInfoService.getLocalUserinfo(
				voteopenid, userinfo.getAccountid());
		if ((voteuser != null) && (voteuser.getSubscribe().equals("1")))
			j.setSuccess(true);
		else {
			j.setSuccess(false);
		}
		return j;
	}
}