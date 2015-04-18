package weixin.shop.base.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.common.UploadFile;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.BrowserUtils;
import org.jeecgframework.core.util.ExceptionUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.MyClassLoader;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.jeecgframework.web.system.pojo.base.TSDocument;
import org.jeecgframework.web.system.pojo.base.TSType;
import org.jeecgframework.web.system.pojo.base.TSTypegroup;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import weixin.shop.base.entity.WeixinShopCategoryEntity;
import weixin.shop.base.service.WeixinShopCategoryServiceI;
import weixin.shop.base.service.WeixinShopGoodsServiceI;
import weixin.util.DateUtils;

@Controller
@RequestMapping({ "/weixinShopCategoryController" })
public class WeixinShopCategoryController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(WeixinShopCategoryController.class);

	@Autowired
	private WeixinShopCategoryServiceI weixinShopCategoryService;

	@Autowired
	private WeixinShopGoodsServiceI weixinShopGoodsService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "weixinShopCategory" })
	public ModelAndView weixinShopCategory(HttpServletRequest request) {
		return new ModelAndView("weixin/shop/base/weixinShopCategoryList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinShopCategoryEntity weixinShopCategory,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinShopCategoryEntity.class,
				dataGrid);

		cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
		cq.addOrder("createDate", SortDirection.desc);
		cq.add();

		HqlGenerateUtil.installHql(cq, weixinShopCategory,
				request.getParameterMap());

		this.weixinShopCategoryService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WeixinShopCategoryEntity weixinShopCategory,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		String sql = "select * from weixin_shop_goods where CATEGORY_ID='"
				+ weixinShopCategory.getId() + "'";
		Map paramsMap = this.systemService.findOneForJdbc(sql, null);
		if (paramsMap != null) {
			this.message = "此类别有商品，不允许删除";
		} else {
			this.message = "商品分类删除成功";
			try {
				weixinShopCategory = (WeixinShopCategoryEntity) this.systemService
						.getEntity(WeixinShopCategoryEntity.class,
								weixinShopCategory.getId());

				this.weixinShopCategoryService.delete(weixinShopCategory);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL,
						Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				this.message = "商品分类删除失败";
				throw new BusinessException(e.getMessage());
			}
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "商品分类删除成功";
		try {
			for (String id : ids.split(",")) {
				WeixinShopCategoryEntity weixinShopCategory = (WeixinShopCategoryEntity) this.systemService
						.getEntity(WeixinShopCategoryEntity.class, id);

				this.weixinShopCategoryService.delete(weixinShopCategory);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL,
						Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "商品分类删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WeixinShopCategoryEntity weixinShopCategory,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "商品分类添加成功";
		try {
			TSUser user = ResourceUtil.getSessionUserName();
			weixinShopCategory.setSellerId(user.getId());
			this.weixinShopCategoryService.save(weixinShopCategory);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "商品分类添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WeixinShopCategoryEntity weixinShopCategory,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "商品分类更新成功";
		WeixinShopCategoryEntity t = (WeixinShopCategoryEntity) this.weixinShopCategoryService
				.get(WeixinShopCategoryEntity.class, weixinShopCategory.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinShopCategory, t);
			this.weixinShopCategoryService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "商品分类更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(WeixinShopCategoryEntity weixinShopCategory,
			HttpServletRequest req) {
		if ((weixinShopCategory.getWeixinShopCategoryEntity() != null)
				&& (weixinShopCategory.getWeixinShopCategoryEntity().getId() != null)) {
			weixinShopCategory
					.setWeixinShopCategoryEntity((WeixinShopCategoryEntity) this.weixinShopCategoryService
							.getEntity(WeixinShopCategoryEntity.class,
									weixinShopCategory
											.getWeixinShopCategoryEntity()
											.getId()));

			req.setAttribute("weixinShopCategoryPage", weixinShopCategory);
		}
		if (StringUtil.isNotEmpty(weixinShopCategory.getId())) {
			weixinShopCategory = (WeixinShopCategoryEntity) this.weixinShopCategoryService
					.getEntity(WeixinShopCategoryEntity.class,
							weixinShopCategory.getId());

			req.setAttribute("weixinShopCategoryPage", weixinShopCategory);
		}
		return new ModelAndView("weixin/shop/base/weixinShopCategory-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WeixinShopCategoryEntity weixinShopCategory,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinShopCategory.getId())) {
			weixinShopCategory = (WeixinShopCategoryEntity) this.weixinShopCategoryService
					.getEntity(WeixinShopCategoryEntity.class,
							weixinShopCategory.getId());

			if ((weixinShopCategory.getWeixinShopCategoryEntity() != null)
					&& (weixinShopCategory.getWeixinShopCategoryEntity()
							.getId() != null)) {
				weixinShopCategory
						.setWeixinShopCategoryEntity((WeixinShopCategoryEntity) this.weixinShopCategoryService
								.getEntity(WeixinShopCategoryEntity.class,
										weixinShopCategory
												.getWeixinShopCategoryEntity()
												.getId()));
			}

			req.setAttribute("weixinShopCategoryPage", weixinShopCategory);
		}
		return new ModelAndView("weixin/shop/base/weixinShopCategory-update");
	}

	@RequestMapping(params = { "upload" })
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/shop/base/weixinShopCategoryUpload");
	}

	@RequestMapping(params = { "exportXls" })
	public void exportXls(WeixinShopCategoryEntity weixinShopCategory,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "商品分类";

			if (BrowserUtils.isIE(request)) {
				response.setHeader(
						"content-disposition",
						"attachment;filename="
								+ URLEncoder.encode(codedFileName, "UTF-8")
								+ ".xls");
			} else {
				String newtitle = new String(codedFileName.getBytes("UTF-8"),
						"ISO8859-1");

				response.setHeader("content-disposition",
						"attachment;filename=" + newtitle + ".xls");
			}

			HSSFWorkbook workbook = null;
			CriteriaQuery cq = new CriteriaQuery(
					WeixinShopCategoryEntity.class, dataGrid);

			HqlGenerateUtil.installHql(cq, weixinShopCategory,
					request.getParameterMap());

			List weixinShopCategorys = this.weixinShopCategoryService
					.getListByCriteriaQuery(cq, Boolean.valueOf(false));

			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("商品分类列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinShopCategoryEntity.class,
					weixinShopCategorys);

			fOut = response.getOutputStream();
			workbook.write(fOut);
		} catch (Exception e) {
		} finally {
			try {
				fOut.flush();
				fOut.close();
			} catch (IOException e) {
			}
		}
	}

	@RequestMapping(params = { "exportXlsByT" })
	public void exportXlsByT(WeixinShopCategoryEntity weixinShopCategory,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "商品分类";

			if (BrowserUtils.isIE(request)) {
				response.setHeader(
						"content-disposition",
						"attachment;filename="
								+ URLEncoder.encode(codedFileName, "UTF-8")
								+ ".xls");
			} else {
				String newtitle = new String(codedFileName.getBytes("UTF-8"),
						"ISO8859-1");

				response.setHeader("content-disposition",
						"attachment;filename=" + newtitle + ".xls");
			}

			HSSFWorkbook workbook = null;
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("商品分类列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinShopCategoryEntity.class, null);

			fOut = response.getOutputStream();
			workbook.write(fOut);
		} catch (Exception e) {
		} finally {
			try {
				fOut.flush();
				fOut.close();
			} catch (IOException e) {
			}
		}
	}

	@RequestMapping(params = { "importExcel" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	@ResponseBody
	public AjaxJson importExcel(HttpServletRequest request,
			HttpServletResponse response) {
		AjaxJson j = new AjaxJson();

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
		for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
			MultipartFile file = (MultipartFile) entity.getValue();
			ImportParams params = new ImportParams();
			params.setTitleRows(2);
			params.setSecondTitleRows(1);
			params.setNeedSave(true);
			try {
				List<WeixinShopCategoryEntity> listWeixinShopCategoryEntitys = (List) ExcelImportUtil
						.importExcelByIs(file.getInputStream(),
								WeixinShopCategoryEntity.class, params);

				for (WeixinShopCategoryEntity weixinShopCategory : listWeixinShopCategoryEntitys) {
					this.weixinShopCategoryService.save(weixinShopCategory);
				}
				j.setMsg("文件导入成功！");
			} catch (Exception e) {
				j.setMsg("文件导入失败！");
				logger.error(ExceptionUtil.getExceptionMessage(e));
			} finally {
				try {
					file.getInputStream().close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return j;
	}

	@RequestMapping(params = { "upload" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	@ResponseBody
	public AjaxJson upload(MultipartHttpServletRequest request,
			HttpServletResponse response) {
		AjaxJson j = new AjaxJson();
		Map attributes = new HashMap();
		TSTypegroup tsTypegroup = this.systemService.getTypeGroup("fieltype",
				"文档分类");

		TSType tsType = this.systemService.getType("files", "附件", tsTypegroup);
		String fileKey = oConvertUtils.getString(request
				.getParameter("fileKey"));

		String documentTitle = oConvertUtils.getString(request
				.getParameter("documentTitle"));

		TSDocument document = new TSDocument();
		if (StringUtil.isNotEmpty(fileKey)) {
			document.setId(fileKey);
			document = (TSDocument) this.systemService.getEntity(
					TSDocument.class, fileKey);
			document.setDocumentTitle(documentTitle);
		}

		document.setSubclassname(MyClassLoader.getPackPath(document));
		document.setCreatedate(DateUtils.gettimestamp());
		document.setTSType(tsType);
		UploadFile uploadFile = new UploadFile(request, document);
		uploadFile.setCusPath("files");
		uploadFile.setSwfpath("swfpath");
		document = (TSDocument) this.systemService.uploadFile(uploadFile);
		attributes.put("url", document.getRealpath());
		attributes.put("fileKey", document.getId());
		attributes.put("name", document.getAttachmenttitle());
		attributes.put("viewhref", "commonController.do?openViewFile&fileid="
				+ document.getId());

		attributes.put("delurl", "commonController.do?delObjFile&fileKey="
				+ document.getId());

		j.setMsg("文件添加成功");
		j.setAttributes(attributes);

		return j;
	}
}