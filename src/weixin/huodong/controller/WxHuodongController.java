package weixin.huodong.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.BrowserUtils;
import org.jeecgframework.core.util.ExceptionUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import weixin.huodong.entity.WxHuodongEntity;
import weixin.huodong.service.WxHuodongServiceI;

@Scope("prototype")
@Controller
@RequestMapping({ "/wxHuodongController" })
public class WxHuodongController extends BaseController {
	private static final Logger LOG = Logger.getLogger(WxHuodongController.class);

	@Autowired
	private WxHuodongServiceI wxHuodongService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "wxHuodong" })
	public ModelAndView wxHuodong(HttpServletRequest request) {
		return new ModelAndView("weixin/huodong/wxHuodongList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WxHuodongEntity wxHuodong, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WxHuodongEntity.class, dataGrid);

		HqlGenerateUtil.installHql(cq, wxHuodong, request.getParameterMap());

		cq.add();
		this.wxHuodongService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WxHuodongEntity wxHuodong, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		wxHuodong = (WxHuodongEntity) this.systemService.getEntity(WxHuodongEntity.class, wxHuodong.getId());
		this.message = "活动表删除成功";
		try {
			this.wxHuodongService.delete(wxHuodong);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			this.message = "活动表删除失败";
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
		this.message = "活动表删除成功";
		try {
			for (String id : ids.split(",")) {
				WxHuodongEntity wxHuodong = (WxHuodongEntity) this.systemService.getEntity(WxHuodongEntity.class, id);

				this.wxHuodongService.delete(wxHuodong);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			this.message = "活动表删除失败";
			LOG.error(message, e);
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WxHuodongEntity wxHuodong, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "活动表添加成功";
		try {
			this.wxHuodongService.save(wxHuodong);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			this.message = "活动表添加失败";
			LOG.error(message, e);
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WxHuodongEntity wxHuodong, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "活动表更新成功";
		WxHuodongEntity t = (WxHuodongEntity) this.wxHuodongService.get(WxHuodongEntity.class, wxHuodong.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(wxHuodong, t);
			this.wxHuodongService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			this.message = "活动表更新失败";
			LOG.error(message, e);
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(WxHuodongEntity wxHuodong, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(wxHuodong.getId())) {
			wxHuodong = (WxHuodongEntity) this.wxHuodongService.getEntity(WxHuodongEntity.class, wxHuodong.getId());
			req.setAttribute("wxHuodongPage", wxHuodong);
		}
		return new ModelAndView("weixin/huodong/wxHuodong-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WxHuodongEntity wxHuodong, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(wxHuodong.getId())) {
			wxHuodong = (WxHuodongEntity) this.wxHuodongService.getEntity(WxHuodongEntity.class, wxHuodong.getId());
			req.setAttribute("wxHuodongPage", wxHuodong);
		}
		return new ModelAndView("weixin/huodong/wxHuodong-update");
	}

	@RequestMapping(params = { "upload" })
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/huodong/wxHuodongUpload");
	}

	@RequestMapping(params = { "exportXls" })
	public void exportXls(WxHuodongEntity wxHuodong, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "活动表";

			if (BrowserUtils.isIE(request)) {
				response.setHeader("content-disposition",
						"attachment;filename=" + URLEncoder.encode(codedFileName, "UTF-8") + ".xls");
			} else {
				String newtitle = new String(codedFileName.getBytes("UTF-8"), "ISO8859-1");

				response.setHeader("content-disposition", "attachment;filename=" + newtitle + ".xls");
			}

			HSSFWorkbook workbook = null;
			CriteriaQuery cq = new CriteriaQuery(WxHuodongEntity.class, dataGrid);
			HqlGenerateUtil.installHql(cq, wxHuodong, request.getParameterMap());

			List wxHuodongs = this.wxHuodongService.getListByCriteriaQuery(cq, Boolean.valueOf(false));
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("活动表列表", "导出人:"
					+ ResourceUtil.getSessionUserName().getRealName(), "导出信息"), WxHuodongEntity.class, wxHuodongs);

			fOut = response.getOutputStream();
			workbook.write(fOut);
		} catch (Exception e) {
			LOG.error(e.getMessage(), e);
		} finally {
			try {
				fOut.flush();
				fOut.close();
			} catch (IOException e) {
			}
		}
	}

	@RequestMapping(params = { "exportXlsByT" })
	public void exportXlsByT(WxHuodongEntity wxHuodong, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			try {
				codedFileName = "活动表";
	
				if (BrowserUtils.isIE(request)) {
					response.setHeader("content-disposition",
							"attachment;filename=" + URLEncoder.encode(codedFileName, "UTF-8") + ".xls");
				} else {
					String newtitle = new String(codedFileName.getBytes("UTF-8"), "ISO8859-1");
	
					response.setHeader("content-disposition", "attachment;filename=" + newtitle + ".xls");
				}
	
				HSSFWorkbook workbook = null;
				workbook = ExcelExportUtil.exportExcel(new ExcelTitle("活动表列表", "导出人:"
						+ ResourceUtil.getSessionUserName().getRealName(), "导出信息"), WxHuodongEntity.class, null);
	
				fOut = response.getOutputStream();
				workbook.write(fOut);
			} finally {
				fOut.flush();
				fOut.close();
			}
		} catch (Exception e) {
			LOG.error(e.getMessage(), e);
		}
	}

	@RequestMapping(params = { "importExcel" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	@ResponseBody
	public AjaxJson importExcel(HttpServletRequest request, HttpServletResponse response) {
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
				List<WxHuodongEntity> listWxHuodongEntitys = (List<WxHuodongEntity>) ExcelImportUtil.importExcelByIs(
						file.getInputStream(), WxHuodongEntity.class, params);

				for (WxHuodongEntity wxHuodong : listWxHuodongEntitys) {
					this.wxHuodongService.save(wxHuodong);
				}
				j.setMsg("文件导入成功！");
			} catch (Exception e) {
				j.setMsg("文件导入失败！");
				LOG.error(ExceptionUtil.getExceptionMessage(e), e);
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
}