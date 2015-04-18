package weixin.guanjia.account.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
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

@Controller
@RequestMapping({ "/weixinAccountController" })
public class WeixinAccountController extends BaseController {
	private static final Logger logger = Logger.getLogger(WeixinAccountController.class);

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "weixinAccount" })
	public ModelAndView weixinAccount(HttpServletRequest request) {
		return new ModelAndView("weixin/guanjia/account/weixinAccountList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinAccountEntity weixinAccount, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinAccountEntity.class, dataGrid);

		HqlGenerateUtil.installHql(cq, weixinAccount, request.getParameterMap());

		cq.eq("userName", ResourceUtil.getSessionUserName().getUserName());

		cq.add();
		this.weixinAccountService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WeixinAccountEntity weixinAccount, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinAccount = (WeixinAccountEntity) this.systemService.getEntity(WeixinAccountEntity.class,
				weixinAccount.getId());

		this.message = "微信公众帐号信息删除成功";
		try {
			this.weixinAccountService.delete(weixinAccount);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			this.message = "微信公众帐号信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微信公众帐号信息删除成功";
		try {
			for (String id : ids.split(",")) {
				WeixinAccountEntity weixinAccount = (WeixinAccountEntity) this.systemService.getEntity(
						WeixinAccountEntity.class, id);

				this.weixinAccountService.delete(weixinAccount);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			this.message = "微信公众帐号信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WeixinAccountEntity weixinAccount, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微信公众帐号信息添加成功";
		try {
			int f = this.weixinAccountService.findByUsername(ResourceUtil.getSessionUserName().getUserName()).size();

			if (f == 0) {
				weixinAccount.setUserName(ResourceUtil.getSessionUserName().getUserName());

				this.weixinAccountService.save(weixinAccount);
				this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);

				List<WeixinAccountEntity> acclst = this.weixinAccountService.findByProperty(WeixinAccountEntity.class, "accountnumber",
						weixinAccount.getAccountnumber());
				request.getSession().setAttribute("WEIXIN_ACCOUNT", acclst.get(0));
			} else {
				this.message = "微信公众帐号信息添加失败,每个用户只能添加一个微信公众帐号";
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			this.message = "微信公众帐号信息添加失败";
			throw new BusinessException(e.getMessage());
		}

		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WeixinAccountEntity weixinAccount, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微信公众帐号信息更新成功";
		WeixinAccountEntity t = (WeixinAccountEntity) this.weixinAccountService.get(WeixinAccountEntity.class,
				weixinAccount.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinAccount, t);
			this.weixinAccountService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			this.message = "微信公众帐号信息更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		WeixinAccountEntity weixinAccountEntity = ResourceUtil.getShangJiaAccount();
		request.getSession().setAttribute("WEIXIN_ACCOUNT", weixinAccountEntity);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(WeixinAccountEntity weixinAccount, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinAccount.getId())) {
			weixinAccount = (WeixinAccountEntity) this.weixinAccountService.getEntity(WeixinAccountEntity.class,
					weixinAccount.getId());

			req.setAttribute("weixinAccountPage", weixinAccount);
		}
		return new ModelAndView("weixin/guanjia/account/weixinAccount-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WeixinAccountEntity weixinAccount, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinAccount.getId())) {
			weixinAccount = (WeixinAccountEntity) this.weixinAccountService.getEntity(WeixinAccountEntity.class,
					weixinAccount.getId());

			req.setAttribute("weixinAccountPage", weixinAccount);
		}
		return new ModelAndView("weixin/guanjia/account/weixinAccount-update");
	}
}