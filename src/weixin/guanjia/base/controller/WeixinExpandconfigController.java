package weixin.guanjia.base.controller;

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
import weixin.guanjia.base.entity.WeixinExpandconfigEntity;
import weixin.guanjia.base.service.WeixinExpandconfigServiceI;

@Controller
@RequestMapping({ "/weixinExpandconfigController" })
public class WeixinExpandconfigController extends BaseController {
	private static final Logger logger = Logger.getLogger(WeixinExpandconfigController.class);

	@Autowired
	private WeixinExpandconfigServiceI weixinExpandconfigService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "weixinExpandconfig" })
	public ModelAndView weixinExpandconfig(HttpServletRequest request) {
		return new ModelAndView("weixin/guanjia/base/expandconfig/weixinExpandconfigList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinExpandconfigEntity weixinExpandconfig, HttpServletRequest request,
			HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinExpandconfigEntity.class, dataGrid);
		String accountId = ResourceUtil.getShangJiaAccountId();
		if (StringUtil.isNotEmpty(accountId))
			cq.eq("accountId", accountId);
		else {
			cq.isNull("accountId");
		}

		HqlGenerateUtil.installHql(cq, weixinExpandconfig, request.getParameterMap());

		cq.add();
		this.weixinExpandconfigService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WeixinExpandconfigEntity weixinExpandconfig, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinExpandconfig = (WeixinExpandconfigEntity) this.systemService.getEntity(WeixinExpandconfigEntity.class,
				weixinExpandconfig.getId());
		this.message = "扩展接口管理删除成功";
		try {
			this.weixinExpandconfigService.delete(weixinExpandconfig);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			this.message = "扩展接口管理删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "扩展接口管理删除成功";
		try {
			for (String id : ids.split(",")) {
				WeixinExpandconfigEntity weixinExpandconfig = (WeixinExpandconfigEntity) this.systemService.getEntity(
						WeixinExpandconfigEntity.class, id);
				this.weixinExpandconfigService.delete(weixinExpandconfig);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			this.message = "扩展接口管理删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WeixinExpandconfigEntity weixinExpandconfig, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "扩展接口管理添加成功";
		try {
			weixinExpandconfig.setAccountId(ResourceUtil.getShangJiaAccountId());
			this.weixinExpandconfigService.save(weixinExpandconfig);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			this.message = "扩展接口管理添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WeixinExpandconfigEntity weixinExpandconfig, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "扩展接口管理更新成功";
		WeixinExpandconfigEntity t = (WeixinExpandconfigEntity) this.weixinExpandconfigService.get(
				WeixinExpandconfigEntity.class, weixinExpandconfig.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinExpandconfig, t);
			this.weixinExpandconfigService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			this.message = "扩展接口管理更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(WeixinExpandconfigEntity weixinExpandconfig, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinExpandconfig.getId())) {
			weixinExpandconfig = (WeixinExpandconfigEntity) this.weixinExpandconfigService.getEntity(
					WeixinExpandconfigEntity.class, weixinExpandconfig.getId());
			req.setAttribute("weixinExpandconfigPage", weixinExpandconfig);
		}
		return new ModelAndView("weixin/guanjia/base/expandconfig/weixinExpandconfig-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WeixinExpandconfigEntity weixinExpandconfig, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinExpandconfig.getId())) {
			weixinExpandconfig = (WeixinExpandconfigEntity) this.weixinExpandconfigService.getEntity(
					WeixinExpandconfigEntity.class, weixinExpandconfig.getId());
			req.setAttribute("weixinExpandconfigPage", weixinExpandconfig);
		}
		return new ModelAndView("weixin/guanjia/base/expandconfig/weixinExpandconfig-update");
	}
}