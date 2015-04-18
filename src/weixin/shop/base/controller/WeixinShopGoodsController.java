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
import weixin.shop.base.entity.WeixinShopCartEntity;
import weixin.shop.base.entity.WeixinShopDealEntity;
import weixin.shop.base.entity.WeixinShopGoodsEntity;
import weixin.shop.base.service.WeixinShopDealServiceI;
import weixin.shop.base.service.WeixinShopGoodsServiceI;
import weixin.util.DateUtils;

@Controller
@RequestMapping({ "/weixinShopGoodsController" })
public class WeixinShopGoodsController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(WeixinShopGoodsController.class);

	@Autowired
	private WeixinShopGoodsServiceI weixinShopGoodsService;

	@Autowired
	private WeixinShopDealServiceI weixinShopDealService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "categoryList" })
	public ModelAndView weixinShopCategory(HttpServletRequest request) {
		return new ModelAndView("weixin/shop/base/categorylist");
	}

	@RequestMapping(params = { "weixinShopGoods" })
	public ModelAndView weixinShopGoods(HttpServletRequest request) {
		return new ModelAndView("weixin/shop/base/weixinShopGoodsList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinShopGoodsEntity weixinShopGoods,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinShopGoodsEntity.class,
				dataGrid);
		cq.eq("accountid", ResourceUtil.getShangJiaAccountId());

		cq.addOrder("createDate", SortDirection.desc);
		HqlGenerateUtil.installHql(cq, weixinShopGoods,
				request.getParameterMap());

		cq.add();
		this.weixinShopGoodsService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WeixinShopGoodsEntity weixinShopGoods,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinShopGoods = (WeixinShopGoodsEntity) this.systemService.getEntity(
				WeixinShopGoodsEntity.class, weixinShopGoods.getId());
		List deallst = this.weixinShopDealService.findByProperty(
				WeixinShopDealEntity.class, "shopGoods.id",
				weixinShopGoods.getId());
		if (deallst.size() != 0) {
			this.message = "商品信息删除成功";
			try {
				this.weixinShopGoodsService.delete(weixinShopGoods);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL,
						Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				this.message = "商品信息删除失败";
				throw new BusinessException(e.getMessage());
			}
		} else {
			this.message = "商品信息删除失败，已经下单的商品不能删除！";
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "商品信息删除成功,部分商品可能已经下单，不能删除。";
		try {
			for (String id : ids.split(",")) {
				List deallst = this.weixinShopDealService.findByProperty(
						WeixinShopDealEntity.class, "shopGoods.id", id);
				if (deallst.size() == 0) {
					WeixinShopGoodsEntity weixinShopGoods = (WeixinShopGoodsEntity) this.systemService
							.getEntity(WeixinShopGoodsEntity.class, id);

					List cartlist = this.systemService.findByProperty(
							WeixinShopCartEntity.class, "shopGoodsEntity.id",
							id);
					this.systemService.deleteAllEntitie(cartlist);
					this.weixinShopGoodsService.delete(weixinShopGoods);

					this.systemService.addLog(this.message,
							Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "商品信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WeixinShopGoodsEntity weixinShopGoods,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "商品信息添加成功";
		try {
			TSUser user = ResourceUtil.getSessionUserName();
			weixinShopGoods.setSellerId(user.getId());
			weixinShopGoods.setStatement("0");
			weixinShopGoods.setGoodCount(Integer.valueOf(0));
			weixinShopGoods.setDiscussCount(Integer.valueOf(0));
			weixinShopGoods.setSellCount(Integer.valueOf(0));
			weixinShopGoods.setBadCount(Integer.valueOf(0));

			this.weixinShopGoodsService.save(weixinShopGoods);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "商品信息添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WeixinShopGoodsEntity weixinShopGoods,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "商品信息更新成功";
		WeixinShopGoodsEntity t = (WeixinShopGoodsEntity) this.weixinShopGoodsService
				.get(WeixinShopGoodsEntity.class, weixinShopGoods.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinShopGoods, t);
			this.weixinShopGoodsService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "商品信息更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(WeixinShopGoodsEntity weixinShopGoods,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinShopGoods.getId())) {
			weixinShopGoods = (WeixinShopGoodsEntity) this.weixinShopGoodsService
					.getEntity(WeixinShopGoodsEntity.class,
							weixinShopGoods.getId());
			req.setAttribute("weixinShopGoodsPage", weixinShopGoods);
		}
		return new ModelAndView("weixin/shop/base/weixinShopGoods-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WeixinShopGoodsEntity weixinShopGoods,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinShopGoods.getId())) {
			weixinShopGoods = (WeixinShopGoodsEntity) this.weixinShopGoodsService
					.getEntity(WeixinShopGoodsEntity.class,
							weixinShopGoods.getId());
			req.setAttribute("weixinShopGoodsPage", weixinShopGoods);
		}
		return new ModelAndView("weixin/shop/base/weixinShopGoods-update");
	}

	@RequestMapping(params = { "upload" })
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/shop/base/weixinShopGoodsUpload");
	}

	@RequestMapping(params = { "exportXls" })
	public void exportXls(WeixinShopGoodsEntity weixinShopGoods,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "商品信息";

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
			CriteriaQuery cq = new CriteriaQuery(WeixinShopGoodsEntity.class,
					dataGrid);
			HqlGenerateUtil.installHql(cq, weixinShopGoods,
					request.getParameterMap());

			List weixinShopGoodss = this.weixinShopGoodsService
					.getListByCriteriaQuery(cq, Boolean.valueOf(false));
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("商品信息列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinShopGoodsEntity.class, weixinShopGoodss);

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
	public void exportXlsByT(WeixinShopGoodsEntity weixinShopGoods,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "商品信息";

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
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("商品信息列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinShopGoodsEntity.class, null);

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
				List<WeixinShopGoodsEntity> listWeixinShopGoodsEntitys = (List) ExcelImportUtil
						.importExcelByIs(file.getInputStream(),
								WeixinShopGoodsEntity.class, params);

				for (WeixinShopGoodsEntity weixinShopGoods : listWeixinShopGoodsEntitys) {
					this.weixinShopGoodsService.save(weixinShopGoods);
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