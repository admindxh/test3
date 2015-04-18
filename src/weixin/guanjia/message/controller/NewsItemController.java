package weixin.guanjia.message.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.message.entity.NewsItem;
import weixin.guanjia.message.service.NewsItemServiceI;

@Controller
@RequestMapping({ "/newsItemController" })
public class NewsItemController {

	@Autowired
	private SystemService systemService;

	@Autowired
	private NewsItemServiceI newsItemService;

	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	private String message;

	@RequestMapping(params = { "list" })
	public ModelAndView list(HttpServletRequest request) {
		String templateId = request.getParameter("templateId");
		request.setAttribute("templateId", templateId);
		return new ModelAndView("weixin/guanjia/newsitem/newsItemList");
	}

	@RequestMapping(params = { "datagrid" })
	@ResponseBody
	public void datagrid(NewsItem newsItem, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		String templateId = request.getParameter("templateId");
		CriteriaQuery cq = new CriteriaQuery(NewsItem.class, dataGrid);
		cq.eq("newsTemplate.id", templateId);
		cq.eq("accountId", ResourceUtil.getShangJiaAccountId());
		HqlGenerateUtil.installHql(cq, newsItem);
		this.newsItemService.getDataGridReturn(cq, true);

		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "del" })
	@ResponseBody
	public AjaxJson del(NewsItem newsItem, HttpServletRequest req) {
		AjaxJson j = new AjaxJson();
		newsItem = newsItemService.getEntity(NewsItem.class, newsItem.getId());
		this.newsItemService.delete(newsItem);
		this.message = "删除信息数据成功！";
		this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goContent" })
	public ModelAndView goContent(HttpServletRequest request) {
		String id = request.getParameter("id");
		NewsItem newsItem = newsItemService.getEntity(NewsItem.class, id);
		request.setAttribute("newsItem", newsItem);
		return new ModelAndView("weixin/guanjia/newsitem/newsContent");
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}