package weixin.guanjia.gzgroup.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

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
import weixin.guanjia.gzgroup.entity.GroupYw;
import weixin.guanjia.gzgroup.model.ComplexGroup;
import weixin.guanjia.gzgroup.model.Group;
import weixin.guanjia.gzgroup.service.GroupYwServiceI;
import weixin.guanjia.gzgroup.service.impl.GroupService;
import weixin.guanjia.gzuserinfo.entity.GzUserInfoYw;

@Controller
@RequestMapping({ "/groupYwController" })
public class GroupYwController extends BaseController {
	private static final Logger logger = Logger.getLogger(GroupYwController.class);

	@Autowired
	private GroupYwServiceI groupYwService;

	@Autowired
	private SystemService systemService;

	@Autowired
	private GroupService groupService;

	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	private String message;

	@RequestMapping(params = { "list" })
	public ModelAndView groupYw(HttpServletRequest request) {
		return new ModelAndView("weixin/guanjia/gzgroup/groupYwList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(GroupYw groupYw, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(GroupYw.class, dataGrid);
		WeixinAccountEntity weixinAccount = this.weixinAccountService.get(WeixinAccountEntity.class, ResourceUtil.getShangJiaAccountId());
		if (weixinAccount != null) {
			cq.eq("accountId", weixinAccount.getId());
		}
		cq.add();

		HqlGenerateUtil.installHql(cq, groupYw, request.getParameterMap());
		this.groupYwService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "del" })
	@ResponseBody
	public AjaxJson del(GroupYw groupYw, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		groupYw = (GroupYw) this.systemService.getEntity(GroupYw.class, groupYw.getId());
		this.message = "分组管理删除成功";
		this.groupYwService.delete(groupYw);
		this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "save" })
	@ResponseBody
	public AjaxJson save(GroupYw groupYw, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtil.isNotEmpty(groupYw.getId())) {
			this.message = "分组管理更新成功";
			GroupYw t = (GroupYw) this.groupYwService.get(GroupYw.class, groupYw.getId());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(groupYw, t);
				this.groupYwService.saveOrUpdate(t);
				this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				this.message = "分组管理更新失败";
			}
		} else {
			WeixinAccountEntity weixinAccount = this.weixinAccountService.get(WeixinAccountEntity.class, ResourceUtil.getShangJiaAccountId());
			if (weixinAccount != null) {
				groupYw.setAccountId(weixinAccount.getId());
			}

			if ("1".equals(weixinAccount.getAccounttype())) {
				Group group = new Group();
				group.setName(groupYw.getName());

				ComplexGroup complexGroup = new ComplexGroup(group);

				JSONObject jsonObj = this.groupService.createGroup(complexGroup);
				if (jsonObj.containsKey("errmsg")) {
					String errmsg = jsonObj.getString("errmsg");
					j.setMsg("与微信服务器同步分组信息失败~！" + errmsg);
				} else {
					groupYw.setId(jsonObj.getJSONObject("group").getString("id"));

					groupYw.setAddTime(new Timestamp(new Date().getTime()));
					this.groupYwService.save(groupYw);
					this.message = "分组管理添加成功";
					this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
				}
			} else {
				this.message = "订阅号没有建立分组的权限！";
			}
		}

		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "addorupdate" })
	public ModelAndView addorupdate(GroupYw groupYw, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(groupYw.getId())) {
			groupYw = (GroupYw) this.groupYwService.getEntity(GroupYw.class, groupYw.getId());
			req.setAttribute("groupYwPage", groupYw);
		}
		return new ModelAndView("weixin/guanjia/gzgroup/groupYw");
	}

	@RequestMapping(params = { "goSelectGroup" })
	public ModelAndView goSelectGroup(HttpServletRequest req) {
		String idStr = req.getParameter("idStr");
		req.setAttribute("idStr", idStr);
		WeixinAccountEntity weixinAccount = this.weixinAccountService.get(WeixinAccountEntity.class, ResourceUtil.getShangJiaAccountId());
		if (weixinAccount != null) {
			String accountId = weixinAccount.getId();
			List<GroupYw> groupList = this.groupYwService.findByProperty(GroupYw.class, "accountId", accountId);
			req.setAttribute("groupList", groupList);
		}
		return new ModelAndView("weixin/guanjia/gzgroup/selectGroup");
	}

	@RequestMapping(params = { "doSelectGroup" })
	@ResponseBody
	public AjaxJson doSelectGroup(HttpServletRequest req) {
		AjaxJson j = new AjaxJson();
		String idStr = req.getParameter("idStr");
		String groupId = req.getParameter("groupId");
		if (StringUtil.isNotEmpty(idStr)) {
			String[] idArr = idStr.split(",");
			for (String id : idArr) {
				GzUserInfoYw gzUserInfo = this.systemService.get(GzUserInfoYw.class, id);
				gzUserInfo.setGroupId(groupId);
				this.systemService.updateEntitie(gzUserInfo);
			}
		}

		return j;
	}

	@RequestMapping(params = { "goUserList" })
	public ModelAndView goUserList(HttpServletRequest request) {
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		return new ModelAndView("weixin/guanjia/gzgroup/userList");
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}