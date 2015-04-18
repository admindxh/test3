package weixin.guanjia.message.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.message.dao.TextTemplateDao;
import weixin.guanjia.message.entity.TextTemplate;
import weixin.guanjia.message.service.TextTemplateServiceI;

@Controller
@RequestMapping({ "/textTemplateController" })
public class TextTemplateController {
	
	private static final Logger LOG = LoggerFactory.getLogger(TextTemplateController.class);
	@Autowired
	private TextTemplateDao textTemplateDao;

	@Autowired
	private TextTemplateServiceI textTemplateService;

	@Autowired
	private SystemService systemService;

	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	private String message;

	@RequestMapping(params = { "list" })
	public ModelAndView list() {
		return new ModelAndView("weixin/guanjia/texttemplate/textTemplateList");
	}

	@RequestMapping(params = { "datagrid" })
	@ResponseBody
	public void datagrid(TextTemplate textTemplate, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(TextTemplate.class, dataGrid);
		cq.eq("accountId", ResourceUtil.getShangJiaAccountId());
		HqlGenerateUtil.installHql(cq, textTemplate);

		this.textTemplateService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "del" })
	@ResponseBody
	public AjaxJson del(TextTemplate textTemplate, HttpServletRequest req) {
		AjaxJson j = new AjaxJson();
		textTemplate = textTemplateService.getEntity(TextTemplate.class, textTemplate.getId());

		this.textTemplateService.delete(textTemplate);

		this.message = "删除信息数据成功！";
		this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "删除信息数据成功";
		int succeed = 0;
		int error = 0;
		try {
			for (String id : ids.split(",")) {
				TextTemplate textTemplate = this.textTemplateService.getEntity(TextTemplate.class, id);
				this.textTemplateService.delete(textTemplate);
				succeed++;
				this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			LOG.error(e.getMessage(), e);
			error++;
			this.message = "删除信息数据失败";
			throw new BusinessException(e.getMessage());
		}
		this.message = ("删除信息数据成功" + succeed + "条，失败" + error + "条");
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "addorUpdate" })
	public ModelAndView addorUpdate(HttpServletRequest req) {
		String id = req.getParameter("id");
		req.setAttribute("id", id);
		if (StringUtil.isNotEmpty(id)) {
			TextTemplate textTemplate = (TextTemplate) this.textTemplateService.getEntity(TextTemplate.class, id);
			String templateName = textTemplate.getTemplateName();
			String content = textTemplate.getContent();
			req.setAttribute("accountId", ResourceUtil.getShangJiaAccountId());
			req.setAttribute("templateName", templateName);
			req.setAttribute("content", content);
		}
		return new ModelAndView("weixin/guanjia/texttemplate/textTemplateInfo");
	}

	@RequestMapping(params = { "doSave" })
	@ResponseBody
	public AjaxJson doSave(TextTemplate textTemplate, HttpServletRequest req) {
		AjaxJson j = new AjaxJson();
		String id = textTemplate.getId();
		if (StringUtil.isNotEmpty(id)) {
			TextTemplate tempAutoResponse = (TextTemplate) this.textTemplateService.getEntity(TextTemplate.class,
					textTemplate.getId());

			this.message = "修改关文本模板成功！";
			try {
				MyBeanUtils.copyBeanNotNull2Bean(textTemplate, tempAutoResponse);

				this.textTemplateService.saveOrUpdate(tempAutoResponse);
				this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				LOG.error(e.getMessage(), e);
			}
		} else {
			String accountId = ResourceUtil.getShangJiaAccountId();
			if (!"-1".equals(accountId)) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

				textTemplate.setAddTime(sdf.format(new Date()));
				this.textTemplateService.save(textTemplate);
			} else {
				j.setSuccess(false);
				j.setMsg("请添加一个公众帐号。");
			}
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