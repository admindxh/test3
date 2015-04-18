package weixin.guanjia.pay.controller;

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
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.guanjia.pay.entity.PayConfigEntity;
import weixin.guanjia.pay.service.PayConfigServiceI;

@Scope("prototype")
@Controller
@RequestMapping({ "/payConfigController" })
public class PayConfigController extends BaseController {
	private static final Logger LOG= Logger.getLogger(PayConfigController.class);

	@Autowired
	private PayConfigServiceI payConfigService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "payConfig" })
	public ModelAndView payConfig(HttpServletRequest request) {
		return new ModelAndView("weixin/guanjia/pay/payConfigList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(PayConfigEntity payConfig, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(PayConfigEntity.class, dataGrid);

		HqlGenerateUtil.installHql(cq, payConfig, request.getParameterMap());
		this.payConfigService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "del" })
	@ResponseBody
	public AjaxJson del(PayConfigEntity payConfig, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		payConfig = (PayConfigEntity) this.systemService.getEntity(PayConfigEntity.class, payConfig.getId());
		this.message = "支付方式设置删除成功";
		this.payConfigService.delete(payConfig);
		this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "save" })
	@ResponseBody
	public AjaxJson save(PayConfigEntity payConfig, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtil.isNotEmpty(payConfig.getId())) {
			this.message = "支付方式设置更新成功";
			PayConfigEntity t = (PayConfigEntity) this.payConfigService.get(PayConfigEntity.class, payConfig.getId());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(payConfig, t);
				this.payConfigService.saveOrUpdate(t);
				this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				this.message = "支付方式设置更新失败";
				LOG.error(message, e);
			}
		} else {
			this.message = "支付方式设置添加成功";
			this.payConfigService.save(payConfig);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "addorupdate" })
	public ModelAndView addorupdate(PayConfigEntity payConfig, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(payConfig.getId())) {
			payConfig = (PayConfigEntity) this.payConfigService.getEntity(PayConfigEntity.class, payConfig.getId());
			req.setAttribute("payConfigPage", payConfig);
		}
		return new ModelAndView("weixin/guanjia/pay/payConfig");
	}
}