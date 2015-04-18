package weixin.idea.qrcode.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
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
import weixin.idea.qrcode.entity.WeixinQrcodeSceneEntity;
import weixin.idea.qrcode.service.WeixinQrcodeSceneServiceI;

@Scope("prototype")
@Controller
@RequestMapping({ "/weixinQrcodeSceneController" })
public class WeixinQrcodeSceneController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(WeixinQrcodeSceneController.class);

	@Autowired
	private WeixinQrcodeSceneServiceI weixinQrcodeSceneService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "weixinQrcodeScene" })
	public ModelAndView weixinQrcodeScene(HttpServletRequest request) {
		return new ModelAndView("weixin/idea/qrcode/weixinQrcodeSceneList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinQrcodeSceneEntity weixinQrcodeScene,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinQrcodeSceneEntity.class,
				dataGrid);

		HqlGenerateUtil.installHql(cq, weixinQrcodeScene,
				request.getParameterMap());
		try {
			cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.weixinQrcodeSceneService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WeixinQrcodeSceneEntity weixinQrcodeScene,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinQrcodeScene = (WeixinQrcodeSceneEntity) this.systemService
				.getEntity(WeixinQrcodeSceneEntity.class,
						weixinQrcodeScene.getId());
		this.message = "二维码场景信息删除成功";
		try {
			this.weixinQrcodeSceneService.delete(weixinQrcodeScene);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "二维码场景信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "二维码场景信息删除成功";
		try {
			for (String id : ids.split(",")) {
				WeixinQrcodeSceneEntity weixinQrcodeScene = (WeixinQrcodeSceneEntity) this.systemService
						.getEntity(WeixinQrcodeSceneEntity.class, id);

				this.weixinQrcodeSceneService.delete(weixinQrcodeScene);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL,
						Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "二维码场景信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WeixinQrcodeSceneEntity weixinQrcodeScene,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "二维码场景信息添加成功";
		try {
			List lst = this.weixinQrcodeSceneService.findByProperty(
					WeixinQrcodeSceneEntity.class, "scenekey",
					weixinQrcodeScene.getScenekey());

			if (lst.size() != 0) {
				this.message = "场景键不能重复，请重新输入。";
			} else {
				this.weixinQrcodeSceneService.save(weixinQrcodeScene);
				this.systemService.addLog(this.message,
						Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "二维码场景信息添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WeixinQrcodeSceneEntity weixinQrcodeScene,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "二维码场景信息更新成功";
		WeixinQrcodeSceneEntity t = (WeixinQrcodeSceneEntity) this.weixinQrcodeSceneService
				.get(WeixinQrcodeSceneEntity.class, weixinQrcodeScene.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinQrcodeScene, t);
			this.weixinQrcodeSceneService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "二维码场景信息更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(WeixinQrcodeSceneEntity weixinQrcodeScene,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinQrcodeScene.getId())) {
			weixinQrcodeScene = (WeixinQrcodeSceneEntity) this.weixinQrcodeSceneService
					.getEntity(WeixinQrcodeSceneEntity.class,
							weixinQrcodeScene.getId());
			req.setAttribute("weixinQrcodeScenePage", weixinQrcodeScene);
		}
		return new ModelAndView("weixin/idea/qrcode/weixinQrcodeScene-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WeixinQrcodeSceneEntity weixinQrcodeScene,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinQrcodeScene.getId())) {
			weixinQrcodeScene = (WeixinQrcodeSceneEntity) this.weixinQrcodeSceneService
					.getEntity(WeixinQrcodeSceneEntity.class,
							weixinQrcodeScene.getId());
			req.setAttribute("weixinQrcodeScenePage", weixinQrcodeScene);
		}
		return new ModelAndView("weixin/idea/qrcode/weixinQrcodeScene-update");
	}

	@RequestMapping(params = { "upload" })
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/idea/qrcode/weixinQrcodeSceneUpload");
	}

	@RequestMapping(params = { "exportXls" })
	public void exportXls(WeixinQrcodeSceneEntity weixinQrcodeScene,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "二维码场景信息";

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
			CriteriaQuery cq = new CriteriaQuery(WeixinQrcodeSceneEntity.class,
					dataGrid);
			HqlGenerateUtil.installHql(cq, weixinQrcodeScene,
					request.getParameterMap());

			List weixinQrcodeScenes = this.weixinQrcodeSceneService
					.getListByCriteriaQuery(cq, Boolean.valueOf(false));
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("二维码场景信息列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinQrcodeSceneEntity.class, weixinQrcodeScenes);

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
	public void exportXlsByT(WeixinQrcodeSceneEntity weixinQrcodeScene,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "二维码场景信息";

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
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("二维码场景信息列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinQrcodeSceneEntity.class, null);

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
				List<WeixinQrcodeSceneEntity> listWeixinQrcodeSceneEntitys = (List) ExcelImportUtil
						.importExcelByIs(file.getInputStream(),
								WeixinQrcodeSceneEntity.class, params);

				for (WeixinQrcodeSceneEntity weixinQrcodeScene : listWeixinQrcodeSceneEntitys) {
					this.weixinQrcodeSceneService.save(weixinQrcodeScene);
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
}