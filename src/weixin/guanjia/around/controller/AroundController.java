package weixin.guanjia.around.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.guanjia.around.entity.AroundEntity;
import weixin.guanjia.around.service.AroundServiceI;

@Scope("prototype")
@Controller
@RequestMapping({ "/aroundController" })
public class AroundController extends BaseController {
	private static final Logger logger = Logger.getLogger(AroundController.class);

	@Autowired
	private AroundServiceI aroundService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "around" })
	public ModelAndView around(HttpServletRequest request) {
		return new ModelAndView("weixin/guanjia/around/aroundList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(AroundEntity around, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(AroundEntity.class, dataGrid);
		String accountid = ResourceUtil.getQianTaiAccountId();
		if (StringUtil.isNotEmpty(accountid)) {
			cq.eq("accountid", accountid);
		}

		HqlGenerateUtil.installHql(cq, around, request.getParameterMap());
		this.aroundService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "del" })
	@ResponseBody
	public AjaxJson del(AroundEntity around, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		around = (AroundEntity) this.systemService.getEntity(AroundEntity.class, around.getId());
		this.message = "周边管理删除成功";
		this.aroundService.delete(around);
		this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "save" })
	@ResponseBody
	public AjaxJson save(AroundEntity around, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtil.isNotEmpty(around.getId())) {
			this.message = "周边管理更新成功";
			AroundEntity t = (AroundEntity) this.aroundService.get(AroundEntity.class, around.getId());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(around, t);
				this.aroundService.saveOrUpdate(t);
				this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				this.message = "周边管理更新失败";
			}
		} else {
			this.message = "周边管理添加成功";
			String accountid = ResourceUtil.getQianTaiAccountId();
			around.setAccountid(accountid);
			around.setIswork("0");
			this.aroundService.save(around);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "addorupdate" })
	public ModelAndView addorupdate(AroundEntity around, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(around.getId())) {
			around = (AroundEntity) this.aroundService.getEntity(AroundEntity.class, around.getId());
			req.setAttribute("aroundPage", around);
		}
		return new ModelAndView("weixin/guanjia/around/around");
	}

	@RequestMapping(params = { "updateIsWork" })
	@ResponseBody
	public AjaxJson updateIsWork(AroundEntity around, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		String id = request.getParameter("id");
		if (StringUtil.isNotEmpty(id)) {
			AroundEntity aroundEntity = (AroundEntity) this.aroundService.getEntity(AroundEntity.class, id);
			aroundEntity.setIswork("1");
			this.aroundService.updateEntitie(aroundEntity);

			String sql = "update weixin_around set iswork='0' where id!='" + id + "'";
			this.aroundService.updateBySqlString(sql);
			this.message = "启用成功！";
		}
		j.setMsg(this.message);
		return j;
	}
}