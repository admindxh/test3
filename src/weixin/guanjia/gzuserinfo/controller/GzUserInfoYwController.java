package weixin.guanjia.gzuserinfo.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.util.WeixinUtil;
import weixin.guanjia.gzgroup.entity.GroupYw;
import weixin.guanjia.gzgroup.service.GroupYwServiceI;
import weixin.guanjia.gzuserinfo.entity.GzUserInfoYw;
import weixin.guanjia.gzuserinfo.service.GzUserInfoService;
import weixin.guanjia.gzuserinfo.service.GzUserInfoYwServiceI;

@Controller
@RequestMapping({ "/gzUserInfoYwController" })
public class GzUserInfoYwController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(GzUserInfoYwController.class);

	@Autowired
	private GzUserInfoService gzUserInfoService;

	@Autowired
	private GzUserInfoYwServiceI gzUserInfoYwService;

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	@Autowired
	private SystemService systemService;
	@Autowired
	private GroupYwServiceI groupYwService;
	private String message;

	@RequestMapping(params = { "list" })
	public ModelAndView gzUserInfoYw(HttpServletRequest request) {
		String accountId = ResourceUtil.getShangJiaAccountId();
		List<GroupYw> groupList = this.systemService.findByProperty(GroupYw.class,
				"accountId", accountId);

		String replaceStr = "";
		for (int i = 0; i < groupList.size(); i++) {
			GroupYw group = (GroupYw) groupList.get(i);
			replaceStr = replaceStr + group.getName() + "_" + group.getId();
			if (i < groupList.size() - 1) {
				replaceStr = replaceStr + ",";
			}
		}
		System.out.println(".....replaceStr...." + replaceStr);
		request.setAttribute("replaceStr", replaceStr);

		return new ModelAndView("weixin/guanjia/gzuser/gzUserInfoYwList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(GzUserInfoYw gzUserInfoYw, HttpServletRequest request,
			HttpServletResponse response, DataGrid dataGrid)
			throws ParseException {
		String total_id = request.getParameter("total_id") == null ? ""
				: request.getParameter("total_id");
		CriteriaQuery cq = new CriteriaQuery(GzUserInfoYw.class, dataGrid);


		String accountId = ResourceUtil.getShangJiaAccountId();
		WeixinAccountEntity weixinAccountEntity = weixinAccountService.get(WeixinAccountEntity.class, accountId);
		if (StringUtil.isNotEmpty(accountId)) {
			cq.eq("accountId", accountId);
			cq.add();
		}

		if (!StringUtils.isBlank(gzUserInfoYw.getNickname())) {
			gzUserInfoYw.setNickname(WeixinUtil.encode(gzUserInfoYw
					.getNickname().getBytes()));
		}
		HqlGenerateUtil.installHql(cq, gzUserInfoYw, request.getParameterMap());
		this.gzUserInfoYwService.getDataGridReturn(cq, true);

		if ("1".equals(weixinAccountEntity.getAccounttype())) {
			List<GzUserInfoYw> gzUserInfoList = dataGrid.getResults();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date subscribeTime = null;
			for (GzUserInfoYw temp : gzUserInfoList) {
				String userName = temp.getNickname();
				if (StringUtil.isNotEmpty(userName)) {
					String nickName = new String(WeixinUtil.decode(userName));
					temp.setNickname(nickName);
				}
				String subcribeTimeStr = temp.getSubscribeTime();
				if (StringUtils.isNotBlank(subcribeTimeStr)) {
					try {
						subscribeTime = new Date(Long.parseLong(subcribeTimeStr) * 1000L);
						if (null != subscribeTime) {
							temp.setSubscribeTime(sdf.format(subscribeTime));
						}
					} catch (NumberFormatException e) {}
				}
			}
		}
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "del" })
	@ResponseBody
	public AjaxJson del(GzUserInfoYw gzUserInfoYw, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		gzUserInfoYw = (GzUserInfoYw) this.systemService.getEntity(
				GzUserInfoYw.class, gzUserInfoYw.getId());
		this.message = "关注用户删除成功";
		this.gzUserInfoYwService.delete(gzUserInfoYw);
		this.systemService.addLog(this.message, Globals.Log_Type_DEL,
				Globals.Log_Leavel_INFO);

		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "save" })
	@ResponseBody
	public AjaxJson save(GzUserInfoYw gzUserInfoYw, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtil.isNotEmpty(gzUserInfoYw.getId())) {
			this.message = "关注用户更新成功";
			GzUserInfoYw t = (GzUserInfoYw) this.gzUserInfoYwService.get(
					GzUserInfoYw.class, gzUserInfoYw.getId());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(gzUserInfoYw, t);
				this.gzUserInfoYwService.saveOrUpdate(t);
				this.systemService.addLog(this.message,
						Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				this.message = "关注用户更新失败";
			}
		} else {
			this.message = "关注用户添加成功";

			gzUserInfoYw.setAccountId(ResourceUtil.getShangJiaAccountId());
			this.gzUserInfoYwService.save(gzUserInfoYw);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT,
					Globals.Log_Leavel_INFO);
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "addorupdate" })
	public ModelAndView addorupdate(GzUserInfoYw gzUserInfoYw,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(gzUserInfoYw.getId())) {
			gzUserInfoYw = (GzUserInfoYw) this.gzUserInfoYwService.getEntity(
					GzUserInfoYw.class, gzUserInfoYw.getId());
			req.setAttribute("gzUserInfoYwPage", gzUserInfoYw);
		}
		List<GroupYw> groupList = groupYwService.findByProperty(GroupYw.class, "accountId", ResourceUtil.getShangJiaAccountId());
		if (logger.isInfoEnabled()) logger.info("....size of list..." + (null == groupList ? " null " : groupList.size()));
		req.setAttribute("groupList", groupList);
		return new ModelAndView("weixin/guanjia/gzuser/gzUserInfoYw");
	}

	@RequestMapping(params = { "goSameCustomer" })
	@ResponseBody
	public AjaxJson goSameCustomer(GzUserInfoYw gzUserInfoYw,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		String accountId = ResourceUtil.getShangJiaAccountId();
		List<GzUserInfoYw> gzUserInfoList = this.gzUserInfoService.getGzUserList("0", accountId);
		if (gzUserInfoList.size() > 0) {
			this.systemService.batchSave(gzUserInfoList);
		}
		return j;
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}