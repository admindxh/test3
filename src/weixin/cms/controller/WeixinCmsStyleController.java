package weixin.cms.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.zip.ZipOutputStream;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.tools.zip.ZipEntry;
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
import org.jeecgframework.core.util.ZipUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSDocument;
import org.jeecgframework.web.system.pojo.base.TSType;
import org.jeecgframework.web.system.pojo.base.TSTypegroup;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import weixin.cms.entity.WeixinCmsStyleEntity;
import weixin.cms.service.WeixinCmsStyleServiceI;
import weixin.util.DateUtils;

@Scope("prototype")
@Controller
@RequestMapping({ "/weixinCmsStyleController" })
public class WeixinCmsStyleController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(WeixinCmsStyleController.class);

	@Autowired
	private WeixinCmsStyleServiceI weixinCmsStyleService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "weixinCmsStyle" })
	public ModelAndView weixinCmsStyle(HttpServletRequest request) {
		return new ModelAndView("weixin/cms/style/weixinCmsStyleList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinCmsStyleEntity weixinCmsStyle,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinCmsStyleEntity.class,
				dataGrid);

		HqlGenerateUtil.installHql(cq, weixinCmsStyle,
				request.getParameterMap());

		cq.eq("accountid", ResourceUtil.getShangJiaAccountId());

		cq.add();
		this.weixinCmsStyleService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WeixinCmsStyleEntity weixinCmsStyle,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinCmsStyle = (WeixinCmsStyleEntity) this.systemService.getEntity(
				WeixinCmsStyleEntity.class, weixinCmsStyle.getId());

		this.message = "微站点模板删除成功";
		try {
			this.weixinCmsStyleService.delete(weixinCmsStyle);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微站点模板删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微站点模板删除成功";
		try {
			for (String id : ids.split(",")) {
				WeixinCmsStyleEntity weixinCmsStyle = (WeixinCmsStyleEntity) this.systemService
						.getEntity(WeixinCmsStyleEntity.class, id);

				this.weixinCmsStyleService.delete(weixinCmsStyle);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL,
						Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微站点模板删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WeixinCmsStyleEntity weixinCmsStyle,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtil.isNotEmpty(weixinCmsStyle.getId())) {
			this.message = "微站点模板更新成功";
			WeixinCmsStyleEntity t = (WeixinCmsStyleEntity) this.weixinCmsStyleService
					.get(WeixinCmsStyleEntity.class, weixinCmsStyle.getId());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(weixinCmsStyle, t);
				this.weixinCmsStyleService.saveOrUpdate(t);
				this.systemService.addLog(this.message,
						Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				this.message = "微站点模板更新失败";
				throw new BusinessException(e.getMessage());
			}
		} else {
			this.message = "微站点模板添加成功";
			try {
				this.weixinCmsStyleService.save(weixinCmsStyle);
				this.systemService.addLog(this.message,
						Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				this.message = "微站点模板添加失败";
				throw new BusinessException(e.getMessage());
			}
		}
		j.setMsg(this.message);
		j.setObj(weixinCmsStyle);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WeixinCmsStyleEntity weixinCmsStyle,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微站点模板更新成功";
		WeixinCmsStyleEntity t = (WeixinCmsStyleEntity) this.weixinCmsStyleService
				.get(WeixinCmsStyleEntity.class, weixinCmsStyle.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinCmsStyle, t);
			this.weixinCmsStyleService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微站点模板更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		j.setObj(weixinCmsStyle);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(WeixinCmsStyleEntity weixinCmsStyle,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinCmsStyle.getId())) {
			weixinCmsStyle = (WeixinCmsStyleEntity) this.weixinCmsStyleService
					.getEntity(WeixinCmsStyleEntity.class,
							weixinCmsStyle.getId());

			req.setAttribute("weixinCmsStylePage", weixinCmsStyle);
		}
		return new ModelAndView("weixin/cms/style/weixinCmsStyle-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WeixinCmsStyleEntity weixinCmsStyle,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinCmsStyle.getId())) {
			weixinCmsStyle = (WeixinCmsStyleEntity) this.weixinCmsStyleService
					.getEntity(WeixinCmsStyleEntity.class,
							weixinCmsStyle.getId());

			req.setAttribute("weixinCmsStylePage", weixinCmsStyle);
		}
		return new ModelAndView("weixin/cms/style/weixinCmsStyle-update");
	}

	@RequestMapping(params = { "doupload" })
	public ModelAndView doupload(HttpServletRequest req) {
		return new ModelAndView("weixin/cms/style/weixinCmsStyleUpload");
	}

	@RequestMapping(params = { "exportXls" })
	public void exportXls(WeixinCmsStyleEntity weixinCmsStyle,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微站点模板";

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
			CriteriaQuery cq = new CriteriaQuery(WeixinCmsStyleEntity.class,
					dataGrid);

			HqlGenerateUtil.installHql(cq, weixinCmsStyle,
					request.getParameterMap());

			List weixinCmsStyles = this.weixinCmsStyleService
					.getListByCriteriaQuery(cq, Boolean.valueOf(false));

			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微站点模板列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinCmsStyleEntity.class, weixinCmsStyles);

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
	public void exportXlsByT(WeixinCmsStyleEntity weixinCmsStyle,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微站点模板";

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
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微站点模板列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinCmsStyleEntity.class, null);

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
		for (Entry<String, MultipartFile> entity : fileMap.entrySet()) {
			MultipartFile file = (MultipartFile) entity.getValue();
			ImportParams params = new ImportParams();
			params.setTitleRows(2);
			params.setSecondTitleRows(1);
			params.setNeedSave(true);
			try {
				List<WeixinCmsStyleEntity> listWeixinCmsStyleEntitys = (List<WeixinCmsStyleEntity>) ExcelImportUtil
						.importExcelByIs(file.getInputStream(),
								WeixinCmsStyleEntity.class, params);

				for (WeixinCmsStyleEntity weixinCmsStyle : listWeixinCmsStyleEntitys) {
					this.weixinCmsStyleService.save(weixinCmsStyle);
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

		String id = request.getParameter("id");
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

		WeixinCmsStyleEntity weixinCmsStyle = (WeixinCmsStyleEntity) this.weixinCmsStyleService
				.getEntity(WeixinCmsStyleEntity.class, id);

		String requestPath = request.getSession().getServletContext()
				.getRealPath("/template/cms");

		String realpath = requestPath + "/" + weixinCmsStyle.getAccountid()
				+ "/" + weixinCmsStyle.getTemplateUrl() + "/";
		File tempfolder = new File(realpath);
		if (!tempfolder.exists()) {
			tempfolder.mkdirs();
		}
		this.weixinCmsStyleService.updateEntitie(weixinCmsStyle);
		try {
			String path = request.getSession().getServletContext()
					.getRealPath("/")
					+ document.getRealpath();
			ZipUtil.unZip(path, tempfolder.getAbsolutePath() + "/");
		} catch (Exception e) {
			e.printStackTrace();
		}
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

	@RequestMapping(params = { "downloadTemplate" })
	public void downloadTemplate(HttpServletRequest request,
			HttpServletResponse response, String id) {
		String url = "default";
		WeixinCmsStyleEntity style = (WeixinCmsStyleEntity) this.weixinCmsStyleService
				.get(WeixinCmsStyleEntity.class, id);
		if (style != null) {
			url = style.getTemplateUrl();
		}
		String path = "template/cms/" + ResourceUtil.getShangJiaAccountId()
				+ "/" + url;
		String sourceSrc = request.getSession().getServletContext()
				.getRealPath(path);
		String downloadSrc = sourceSrc + ".zip";
		String fileName = style.getTemplateName() + ".zip";
		try {
			compress(sourceSrc, downloadSrc);
			response.reset();

			response.setContentType("APPLICATION/OCTET-STREAM");
			OutputStream out = new BufferedOutputStream(
					response.getOutputStream());

			response.setHeader("Content-disposition", "attachment;filename="
					+ new String(fileName.getBytes("utf-8"), "ISO8859-1"));
			InputStream inStream = new FileInputStream(downloadSrc);
			int bytesRead = 0;
			byte[] buffer = new byte[8192];
			while ((bytesRead = inStream.read(buffer, 0, 8192)) != -1) {
				out.write(buffer, 0, bytesRead);
			}
			out.write(buffer);
			out.flush();
			out.close();
			inStream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(params = { "downloadDefaultTemplate" })
	public void downloadDefaultTemplate(HttpServletRequest request,
			HttpServletResponse response) {
		String path = "template/cms/default/";
		String sourceSrc = request.getSession().getServletContext()
				.getRealPath(path);
		String downloadSrc = sourceSrc + ".zip";
		try {
			compress(sourceSrc, downloadSrc);
			String fileName = "jeewx_default.zip";
			response.reset();

			response.setContentType("APPLICATION/OCTET-STREAM");
			OutputStream out = new BufferedOutputStream(
					response.getOutputStream());

			response.setHeader("Content-disposition", "attachment;filename="
					+ new String(fileName.getBytes("utf-8"), "ISO8859-1"));
			InputStream inStream = new FileInputStream(downloadSrc);
			int bytesRead = 0;
			byte[] buffer = new byte[8192];
			while ((bytesRead = inStream.read(buffer, 0, 8192)) != -1) {
				out.write(buffer, 0, bytesRead);
			}
			out.write(buffer);
			out.flush();
			out.close();
			inStream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void compress(String source, String destinct)
			throws IOException {
		List fileList = loadFilename(new File(source));
		ZipOutputStream zos = new ZipOutputStream(new FileOutputStream(
				new File(destinct)));

		byte[] buffere = new byte[8192];

		for (int i = 0; i < fileList.size(); i++) {
			File file = (File) fileList.get(i);
			zos.putNextEntry(new ZipEntry(getEntryName(source, file)));
			BufferedInputStream bis = new BufferedInputStream(
					new FileInputStream(file));
			while (true) {
				int length = bis.read(buffere);
				if (length == -1)
					break;
				zos.write(buffere, 0, length);
			}
			bis.close();
			zos.closeEntry();
		}
		zos.close();
	}

	private static String getEntryName(String base, File file) {
		File baseFile = new File(base);
		String filename = file.getPath();

		String entryName = null;
		if (baseFile.getParentFile().getParentFile() == null)
			entryName = filename.substring(baseFile.getParent().length());
		else {
			entryName = filename.substring(baseFile.getParent().length() + 1);
		}
		int pos = entryName.indexOf(System.getProperty("file.separator"));
		if (pos != -1) {
			entryName = entryName.substring(pos + 1, entryName.length());
		}
		return entryName;
	}

	private static List loadFilename(File file) {
		List filenameList = new ArrayList();
		if (file.isFile()) {
			filenameList.add(file);
		}
		if (file.isDirectory()) {
			for (File f : file.listFiles()) {
				filenameList.addAll(loadFilename(f));
			}
		}
		return filenameList;
	}
}