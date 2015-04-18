package weixin.guanjia.message.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import weixin.guanjia.message.entity.AutoResponse;
import weixin.guanjia.message.entity.NewsTemplate;
import weixin.guanjia.message.entity.TextTemplate;
import weixin.guanjia.message.service.AutoResponseServiceI;
import weixin.guanjia.message.service.NewsTemplateServiceI;
import weixin.guanjia.message.service.TextTemplateServiceI;

@Controller
@RequestMapping({ "/autoResponseController" })
public class AutoResponseController {
	
	private static Logger LOG = LoggerFactory.getLogger(AutoResponseController.class);
	@Autowired
	private SystemService systemService;

	@Autowired
	private AutoResponseServiceI autoResponseService;

	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	@Autowired
	private NewsTemplateServiceI newsTemplateService;
	@Autowired
	private TextTemplateServiceI textTemplateService;
	private String message;

	@RequestMapping(params = { "list" })
	public ModelAndView list() {
		return new ModelAndView("weixin/guanjia/autoresponse/autoresponselist");
	}

	@RequestMapping(params = { "datagrid" })
	@ResponseBody
	public void datagrid(AutoResponse autoResponse, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(AutoResponse.class, dataGrid);
		cq.eq("accountId", ResourceUtil.getShangJiaAccountId());
		HqlGenerateUtil.installHql(cq, autoResponse);

		this.autoResponseService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "del" })
	@ResponseBody
	public AjaxJson del(AutoResponse autoResponse, HttpServletRequest req) {
		AjaxJson j = new AjaxJson();
		autoResponse = (AutoResponse) this.autoResponseService.getEntity(AutoResponse.class, autoResponse.getId());

		this.autoResponseService.delete(autoResponse);
		this.message = "删除信息数据成功！";
		this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "addOrUpdate" })
	public ModelAndView addOrUpdate(HttpServletRequest req) {
		String id = req.getParameter("id");
		req.setAttribute("id", id);
		String accountId = ResourceUtil.getShangJiaAccountId();
		List<TextTemplate> textList = textTemplateService.findByProperty(TextTemplate.class, "accountId", accountId);
		List<NewsTemplate> newsList = newsTemplateService.findByProperty(NewsTemplate.class, "accountId", accountId);

		req.setAttribute("textList", textList);
		req.setAttribute("newsList", newsList);
		if (StringUtil.isNotEmpty(id)) {
			AutoResponse autoResponse = autoResponseService.get(AutoResponse.class, id);

			String msgType = autoResponse.getMsgType();
			String resContent = autoResponse.getResContent();
			String keyWord = autoResponse.getKeyWord();
			String templateName = autoResponse.getTemplateName();
			req.setAttribute("msgType", msgType);
			req.setAttribute("resContent", resContent);
			req.setAttribute("keyWord", keyWord);
			req.setAttribute("templateName", templateName);
		}
		return new ModelAndView("weixin/guanjia/autoresponse/autoresponseinfo");
	}

	@RequestMapping(params = { "doSave" })
	@ResponseBody
	public AjaxJson doSave(AutoResponse autoResponse, HttpServletRequest req) {
		String templateName = "";
		AjaxJson j = new AjaxJson();
		String id = autoResponse.getId();
		if (StringUtil.isNotEmpty(id)) {
			AutoResponse tempAutoResponse = autoResponseService.get(AutoResponse.class,
					autoResponse.getId());

			templateName = getTempName(autoResponse.getMsgType(), autoResponse.getResContent());
			autoResponse.setTemplateName(templateName);
			this.message = "修改关键字回复成功！";
			try {
				MyBeanUtils.copyBeanNotNull2Bean(autoResponse, tempAutoResponse);
				autoResponseService.saveOrUpdate(tempAutoResponse);
				systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				LOG.error(e.getMessage(), e);
			}
		} else {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			autoResponse.setAddTime(sdf.format(new Date()));
			String templateId = autoResponse.getResContent();
			String msgType = autoResponse.getMsgType();
			templateName = getTempName(msgType, templateId);
			autoResponse.setTemplateName(templateName);
			String accountId = ResourceUtil.getShangJiaAccountId();
			if (!"-1".equals(accountId)) {
				autoResponse.setAccountId(ResourceUtil.getShangJiaAccountId());
				this.autoResponseService.save(autoResponse);
			} else {
				j.setSuccess(false);
				j.setMsg("请添加一个公众帐号。");
			}
		}
		return j;
	}

	private String getTempName(String msgType, String templateId) {
		String templateName = "";
		if ("text".equals(msgType)) {
			TextTemplate textTemplate = textTemplateService.get(TextTemplate.class, templateId);
			if (textTemplate != null) {
				templateName = textTemplate.getTemplateName();
			}
		} else if ("news".equals(msgType)) {
			NewsTemplate newsTemplate = newsTemplateService.get(NewsTemplate.class, templateId);
			if (newsTemplate != null) {
				templateName = newsTemplate.getTemplateName();
			}
		}
		return templateName;
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}