package weixin.guanjia.message.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.common.UploadFile;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.MyClassLoader;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSDocument;
import org.jeecgframework.web.system.pojo.base.TSType;
import org.jeecgframework.web.system.pojo.base.TSTypegroup;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import weixin.cms.service.WeixinCmsStyleServiceI;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.message.entity.NewsItem;
import weixin.guanjia.message.entity.NewsTemplate;
import weixin.guanjia.message.service.NewsItemServiceI;
import weixin.util.DateUtils;

@Controller
@RequestMapping({ "/weixinArticleController" })
public class WeixinArticleController extends BaseController {
	private static final Logger LOG = Logger.getLogger(WeixinArticleController.class);

	@Autowired
	private NewsItemServiceI newsItemService;

	@Autowired
	private SystemService systemService;

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	@Autowired
	private WeixinCmsStyleServiceI weixinCmsStyleService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "goMessage" })
	public ModelAndView goMessage(HttpServletRequest request) {
		String templateId = request.getParameter("templateId");

		if (StringUtil.isNotEmpty(templateId)) {
			String hql = "from NewsItem where newsTemplate.id='" + templateId + "' order by orders asc";
			if(LOG.isInfoEnabled()) LOG.info("...hql..." + hql);
			List<NewsItem> headerList = this.systemService.findByQueryString(hql);
			if (headerList != null && !headerList.isEmpty()) {
				request.setAttribute("headerNews", headerList.get(0));
				if (LOG.isInfoEnabled()) LOG.info(headerList.size()+"---headerList---size------");
				int size = headerList.size();
				if (size > 1) {
					request.setAttribute("newsList", headerList.subList(1, size));
				}
			}
			NewsTemplate newsTemplate = (NewsTemplate) this.systemService.getEntity(NewsTemplate.class, templateId);
			//String temp = newsTemplate.getAddTime().replace("-", "/");
			Date addTime = null;
			try {
				addTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(newsTemplate.getAddTime());
			} catch (ParseException e) {
				LOG.error(e.getMessage(), e);
			}
			if (null != addTime) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
				request.setAttribute("addtime", sdf.format(addTime));
			}
		}
		return new ModelAndView("weixin/guanjia/newstemplate/showmessage");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(NewsItem weixinArticle, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(NewsItem.class, dataGrid);
		cq.eq("accountId", ResourceUtil.getShangJiaAccountId());

		HqlGenerateUtil.installHql(cq, weixinArticle, request.getParameterMap());

		cq.add();
		this.newsItemService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(NewsItem weixinArticle, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinArticle = (NewsItem) this.systemService.getEntity(NewsItem.class, weixinArticle.getId());
		this.message = "微信单图消息删除成功";
		try {
			this.newsItemService.delete(weixinArticle);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			this.message = "微信单图消息删除失败";
			LOG.error(message, e);
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微信单图消息删除成功";
		try {
			for (String id : ids.split(",")) {
				NewsItem weixinArticle = (NewsItem) this.systemService.getEntity(NewsItem.class, id);
				this.newsItemService.delete(weixinArticle);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			this.message = "微信单图消息删除失败";
			LOG.error(message, e);
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(NewsItem weixinArticle, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微信单图消息添加成功";
		try {
			String templateId = request.getParameter("templateId");
			NewsTemplate temp1 = (NewsTemplate) this.systemService.getEntity(NewsTemplate.class, templateId);
			weixinArticle.setNewsTemplate(temp1);
			String accountId = ResourceUtil.getShangJiaAccountId();
			if (!"-1".equals(accountId)) {
				this.newsItemService.save(weixinArticle);
			} else {
				j.setSuccess(false);
				j.setMsg("请添加一个公众帐号。");
			}
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			this.message = "微信单图消息添加失败";
			LOG.error(message, e);
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(NewsItem weixinArticle, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微信单图消息更新成功";
		NewsItem t = newsItemService.get(NewsItem.class, weixinArticle.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinArticle, t);
			this.newsItemService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			this.message = "微信单图消息更新失败";
			LOG.error(message, e);
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(NewsItem weixinArticle, HttpServletRequest req) {
		String templateId = req.getParameter("templateId");
		req.setAttribute("templateId", templateId);
		if (StringUtil.isNotEmpty(weixinArticle.getId())) {
			weixinArticle = (NewsItem) this.newsItemService.getEntity(NewsItem.class, weixinArticle.getId());
			req.setAttribute("weixinArticlePage", weixinArticle);
		}
		return new ModelAndView("weixin/guanjia/newstemplate/weixinArticle-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(NewsItem weixinArticle, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinArticle.getId())) {
			weixinArticle = (NewsItem) this.newsItemService.getEntity(NewsItem.class, weixinArticle.getId());
			req.setAttribute("weixinArticle", weixinArticle);
		}
		return new ModelAndView("weixin/guanjia/newstemplate/weixinArticle-update");
	}

	@RequestMapping(params = { "upload" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	@ResponseBody
	public AjaxJson upload(MultipartHttpServletRequest request, HttpServletResponse response) {
		AjaxJson j = new AjaxJson();
		Map<String, Object> attributes = new HashMap<String, Object>();
		TSTypegroup tsTypegroup = this.systemService.getTypeGroup("fieltype", "文档分类");
		TSType tsType = this.systemService.getType("files", "附件", tsTypegroup);
		String fileKey = oConvertUtils.getString(request.getParameter("fileKey"));
		String documentTitle = oConvertUtils.getString(request.getParameter("documentTitle"));
		TSDocument document = new TSDocument();
		if (StringUtil.isNotEmpty(fileKey)) {
			document.setId(fileKey);
			document = (TSDocument) this.systemService.getEntity(TSDocument.class, fileKey);
			document.setDocumentTitle(documentTitle);
		}

		document.setSubclassname(MyClassLoader.getPackPath(document));
		document.setCreatedate(DateUtils.gettimestamp());
		document.setTSType(tsType);
		UploadFile uploadFile = new UploadFile(request, document);

		uploadFile.setBasePath("template/cms");

		String stylePath = this.weixinCmsStyleService.getStylePath();
		uploadFile.setCusPath(stylePath + "/images");

		document = (TSDocument) this.systemService.uploadFile(uploadFile);
		attributes.put("url", document.getRealpath());
		attributes.put("fileKey", document.getId());
		attributes.put("name", document.getAttachmenttitle());
		attributes.put("viewhref", "commonController.do?openViewFile&fileid=" + document.getId());
		attributes.put("delurl", "commonController.do?delObjFile&fileKey=" + document.getId());
		j.setMsg("文件添加成功");
		j.setAttributes(attributes);

		return j;
	}
}