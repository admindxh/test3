package weixin.bbs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.model.common.UploadFile;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import weixin.bbs.bbsdata.DataCollectI;
import weixin.bbs.bbsdata.impl.BbsAddPostDataCollect;
import weixin.bbs.bbsdata.impl.BbsIndexDataCollect;
import weixin.bbs.bbsdata.impl.BbsPostCommentCollect;
import weixin.bbs.bbsdata.impl.BbsPostDataCollect;
import weixin.bbs.common.BbsConstant;
import weixin.bbs.common.BbsDataContent;
import weixin.bbs.entity.WeixinBbsEntity;
import weixin.bbs.entity.WeixinBbsPostCommentEntity;
import weixin.bbs.entity.WeixinBbsPostEntity;
import weixin.bbs.entity.WeixinBbsPostImgEntity;
import weixin.bbs.service.WeixinBbsPostServiceI;
import weixin.cms.entity.WeixinCmsStyleEntity;
import weixin.cms.service.CmsArticleServiceI;
import weixin.cms.service.WeixinCmsSiteServiceI;
import weixin.cms.service.WeixinCmsStyleServiceI;
import weixin.cms.util.CmsFreemarkerHelper;
import weixin.idea.photo.service.WeixinPhotoAlbumServiceI;

@Controller
@RequestMapping({ "/bbsController" })
public class BbsController extends BaseController implements BbsConstant {

	@Autowired
	private CmsArticleServiceI cmsArticleService;

	@Autowired
	private WeixinCmsSiteServiceI weixinCmsSiteService;

	@Autowired
	private WeixinCmsStyleServiceI weixinCmsStyleService;

	@Autowired
	private WeixinBbsPostServiceI weixinBbsPostService;

	@Autowired
	private SystemService systemService;

	@Autowired
	private WeixinPhotoAlbumServiceI weixinPhotoAlbumService;
	private String message;
	private static Map<String, Object> dataCollectContent = new HashMap();

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	private String getRootUrl(HttpServletRequest request, String page) {
		String rootUrl = null;
		rootUrl = request.getSession().getServletContext()
				.getRealPath("/template/bbs");
		return rootUrl;
	}

	@RequestMapping(params = { "goPage" })
	public void goPage(HttpServletRequest request,
			HttpServletResponse response, @RequestParam String page) {
		Map params = paramsToMap(request);

		String rootUrl = getRootUrl(request, page);
		String styleUrl = null;

		WeixinBbsEntity weixinBbsEntity = (WeixinBbsEntity) this.weixinCmsSiteService
				.findUniqueByProperty(WeixinBbsEntity.class, "accountid",
						params.get("accountid"));

		WeixinCmsStyleEntity weixinCmsStyleEntity = null;

		String templateName = null;

		if (weixinBbsEntity != null) {
			if (weixinBbsEntity.getTemplateStyle() != null) {
				weixinCmsStyleEntity = (WeixinCmsStyleEntity) this.weixinCmsStyleService
						.get(WeixinCmsStyleEntity.class,
								weixinBbsEntity.getTemplateStyle());
			}
			if (weixinCmsStyleEntity != null) {
				templateName = ResourceUtil.getShangJiaAccountId() + "/"
						+ weixinCmsStyleEntity.getTemplateUrl();
				styleUrl = rootUrl + "/" + ResourceUtil.getShangJiaAccountId()
						+ "/" + weixinCmsStyleEntity.getTemplateUrl()
						+ "/html/";
			} else {
				templateName = "default";
				styleUrl = rootUrl + "/default/html/";
			}
		} else {
			templateName = "default";
			styleUrl = rootUrl + "/default/html/";
		}
		params.put("styleName", templateName);

		CmsFreemarkerHelper cmsFreemarkerHelper = new CmsFreemarkerHelper(
				styleUrl);

		if (dataCollectContent.get(page) != null) {
			DataCollectI bbsDataCollect = (DataCollectI) dataCollectContent
					.get(page);
			bbsDataCollect.collect(params);
		}

		String html = cmsFreemarkerHelper.parseTemplate(page + ".html",
				BbsDataContent.loadContent());
		response.setContentType("text/html");
		response.setHeader("Cache-Control", "no-store");
		PrintWriter writer = null;
		try {
			writer = response.getWriter();
			writer.println(html);
			writer.flush();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (writer != null)
				writer.close();
		}
	}

	@RequestMapping(params = { "getMenuList" })
	public void getMenuList(HttpServletRequest request,
			HttpServletResponse response, DataGrid dataGrid) {
		Map params = paramsToMap(request);
		List list = this.cmsArticleService.listByMap(params,
				dataGrid.getPage(), dataGrid.getRows());
		int count = this.cmsArticleService.getCount(params);
		dataGrid.setTotal(count);
		dataGrid.setResults(list);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "save" })
	@ResponseBody
	public AjaxJson save(WeixinBbsPostEntity weixinBbsPost,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		String postId = null;
		String fileId = request.getParameter("fileId");
		if (StringUtil.isNotEmpty(weixinBbsPost.getId())) {
			this.message = "微社区帖子更新成功";
			WeixinBbsPostEntity t = (WeixinBbsPostEntity) this.weixinBbsPostService
					.get(WeixinBbsPostEntity.class, weixinBbsPost.getId());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(weixinBbsPost, t);
				postId = weixinBbsPost.getId();
				this.weixinBbsPostService.saveOrUpdate(t);
				this.systemService.addLog(this.message,
						Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				this.message = "微社区帖子更新失败";
			}
		} else {
			this.message = "微社区帖子添加成功";

			List bbs = this.weixinBbsPostService.findByProperty(
					WeixinBbsEntity.class, "accountid",
					ResourceUtil.getShangJiaAccountId());
			if ((null == bbs) || (bbs.size() == 0)) {
				this.message = "微社区帖子新增失败";
			} else {
				weixinBbsPost.setPostPerson("游客");
				weixinBbsPost.setStatus("1");
				weixinBbsPost.setCommentCount(Integer.valueOf(0));
				weixinBbsPost.setPraiseCount(Integer.valueOf(0));
				postId = this.weixinBbsPostService.savePost(weixinBbsPost,
						fileId);
				this.systemService.addLog(this.message,
						Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
			}
		}
		return j;
	}

	private Map<String, String> paramsToMap(HttpServletRequest request) {
		Map<String, String> params = new HashMap<String, String>();

		Enumeration<String> em = request.getParameterNames();
		while (em.hasMoreElements()) {
			String paramName = (String) em.nextElement();
			String paramValue = request.getParameter(paramName);

			params.put(paramName, paramValue);
		}
		if (!params.containsKey("accountid")) {
			params.put("accountid", ResourceUtil.getShangJiaAccountId());
		}
		return params;
	}

	@RequestMapping(params = { "addPostComment" })
	@ResponseBody
	public AjaxJson addPostComment(WeixinBbsPostCommentEntity postComment,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微社区帖子添加成功";
		String postId = request.getParameter("postId");
		postComment.setCommentPerson("游客");
		this.weixinBbsPostService.postComment(postComment, postId);
		Map<String, Object> attr = new HashMap<String, Object>();
		attr.put("postId", postId);
		j.setAttributes(attr);
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "uploadPostImg" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	@ResponseBody
	public AjaxJson uploadPostImg(HttpServletRequest request,
			HttpServletResponse response, WeixinBbsPostImgEntity postImg) {
		AjaxJson j = new AjaxJson();
		Map<String, Object> attributes = new HashMap<String, Object>();
		String fileKey = oConvertUtils.getString(request
				.getParameter("fileKey"));

		if (StringUtil.isNotEmpty(fileKey)) {
			postImg.setId(fileKey);
			postImg = (WeixinBbsPostImgEntity) this.systemService.getEntity(
					WeixinBbsPostImgEntity.class, fileKey);
		}

		UploadFile uploadFile = new UploadFile(request, postImg);
		uploadFile.setCusPath("files");

		uploadFile.setByteField(null);
		postImg = (WeixinBbsPostImgEntity) this.systemService
				.uploadFile(uploadFile);
		attributes.put("fileKey", postImg.getId());
		attributes.put("viewhref", "commonController.do?objfileList&fileKey="
				+ postImg.getId());
		attributes.put("delurl", "commonController.do?delObjFile&fileKey="
				+ postImg.getId());
		attributes.put("realPath", postImg.getRealpath());
		attributes.put("fileId", postImg.getId());
		j.setMsg("文件添加成功");
		j.setAttributes(attributes);

		return j;
	}

	@RequestMapping(params = { "delPhoto" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	@ResponseBody
	public AjaxJson delPhoto(HttpServletRequest request,
			HttpServletResponse response, WeixinBbsPostImgEntity postImg) {
		AjaxJson j = new AjaxJson();
		String id = request.getParameter("id");
		postImg = (WeixinBbsPostImgEntity) this.systemService.getEntity(
				WeixinBbsPostImgEntity.class, id);

		this.weixinPhotoAlbumService.deleteFile(postImg);
		return j;
	}

	static {
		dataCollectContent.put("index", new BbsIndexDataCollect());

		dataCollectContent.put("post", new BbsPostDataCollect());

		dataCollectContent.put("addpost", new BbsAddPostDataCollect());

		dataCollectContent.put("addcomment", new BbsPostCommentCollect());
	}
}