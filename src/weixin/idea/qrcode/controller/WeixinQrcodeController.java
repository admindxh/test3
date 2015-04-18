package weixin.idea.qrcode.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.sf.json.JSONObject;
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
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.util.WeixinUtil;
import weixin.idea.qrcode.entity.WeixinQrcodeEntity;
import weixin.idea.qrcode.entity.WeixinQrcodeSceneEntity;
import weixin.idea.qrcode.model.ActionInfo;
import weixin.idea.qrcode.model.QrCode;
import weixin.idea.qrcode.model.Scene;
import weixin.idea.qrcode.service.WeixinQrcodeSceneServiceI;
import weixin.idea.qrcode.service.WeixinQrcodeServiceI;

@Scope("prototype")
@Controller
@RequestMapping({ "/weixinQrcodeController" })
public class WeixinQrcodeController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(WeixinQrcodeController.class);

	@Autowired
	private WeixinQrcodeServiceI weixinQrcodeService;

	@Autowired
	private SystemService systemService;

	@Autowired
	private WeixinQrcodeSceneServiceI weixinQrcodeSceneService;

	@Autowired
	private WeixinAccountServiceI weixinAccountService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "createQrcode" })
	@ResponseBody
	public AjaxJson createQrcode(HttpServletRequest request,
			WeixinQrcodeEntity weixinQrcode) {
		AjaxJson j = new AjaxJson();
		QrCode qrCode = new QrCode();
		Scene scene = new Scene();
		ActionInfo actionInfo = new ActionInfo();

		weixinQrcode = (WeixinQrcodeEntity) this.weixinQrcodeService.get(
				WeixinQrcodeEntity.class, weixinQrcode.getId());

		if (weixinQrcode.getActionName().equals("1")) {
			qrCode.setAction_name("QR_SCENE");

			if (weixinQrcode.getExpireSeconds() != null) {
				qrCode.setExpire_seconds(weixinQrcode.getExpireSeconds()
						.intValue());
			} else {
				qrCode.setExpire_seconds(1800);
			}
		} else if (weixinQrcode.getActionName().equals("2")) {
			qrCode.setAction_name("QR_LIMIT_SCENE");
		}
		scene.setScene_id(weixinQrcode.getSceneId().intValue());
		actionInfo.setScene(scene);

		qrCode.setAction_info(actionInfo);

		JSONObject jsonQrcode = JSONObject.fromObject(qrCode);

		String accesstoken = this.weixinAccountService.getAccessToken();

		String ticketurl = WeixinUtil.qrcode_ticket_url.replace("ACCESS_TOKEN",
				accesstoken);
		JSONObject ticketjson = WeixinUtil.httpRequest(ticketurl, "POST",
				jsonQrcode.toString());

		if (!ticketjson.containsKey("errcode")) {
			String ticket = ticketjson.getString("ticket");

			String qrcodeimgurl = WeixinUtil.get_qrcode_url.replace("TICKET",
					ticket);

			String filename = ResourceUtil.getShangJiaAccountId()
					+ weixinQrcode.getSceneId() + ".jpg";

			String targetPath = request.getSession().getServletContext()
					.getRealPath("upload/weixinqrcode")
					+ "/" + filename;
			weixinQrcode.setImageurl("upload/weixinqrcode/" + filename);
			File target = new File(targetPath);
			WeixinUtil.saveHttpImage(qrcodeimgurl, "GET", "", target);
			this.weixinQrcodeService.updateEntitie(weixinQrcode);
		} else {
			this.message = ("二维码生成失败！错误码为：" + ticketjson.getInt("errcode")
					+ "错误信息为：" + ticketjson.getString("errmsg"));
		}
		this.message = "操作成功！";
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "weixinQrcode" })
	public ModelAndView weixinQrcode(HttpServletRequest request) {
		return new ModelAndView("weixin/idea/qrcode/weixinQrcodeList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinQrcodeEntity weixinQrcode,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinQrcodeEntity.class, dataGrid);

		HqlGenerateUtil.installHql(cq, weixinQrcode, request.getParameterMap());
		try {
			cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.weixinQrcodeService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WeixinQrcodeEntity weixinQrcode,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinQrcode = (WeixinQrcodeEntity) this.systemService.getEntity(
				WeixinQrcodeEntity.class, weixinQrcode.getId());
		this.message = "二维码信息删除成功";
		try {
			this.weixinQrcodeService.delete(weixinQrcode);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "二维码信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "二维码信息删除成功";
		try {
			for (String id : ids.split(",")) {
				WeixinQrcodeEntity weixinQrcode = (WeixinQrcodeEntity) this.systemService
						.getEntity(WeixinQrcodeEntity.class, id);

				this.weixinQrcodeService.delete(weixinQrcode);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL,
						Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "二维码信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WeixinQrcodeEntity weixinQrcode,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "二维码信息添加成功";
		try {
			this.weixinQrcodeService.save(weixinQrcode);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "二维码信息添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WeixinQrcodeEntity weixinQrcode,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "二维码信息更新成功";
		WeixinQrcodeEntity t = (WeixinQrcodeEntity) this.weixinQrcodeService
				.get(WeixinQrcodeEntity.class, weixinQrcode.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinQrcode, t);
			this.weixinQrcodeService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "二维码信息更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(WeixinQrcodeEntity weixinQrcode,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinQrcode.getId())) {
			weixinQrcode = (WeixinQrcodeEntity) this.weixinQrcodeService
					.getEntity(WeixinQrcodeEntity.class, weixinQrcode.getId());
			req.setAttribute("weixinQrcodePage", weixinQrcode);
		}
		List scenelist = this.weixinQrcodeSceneService.findByProperty(
				WeixinQrcodeSceneEntity.class, "accountid",
				ResourceUtil.getShangJiaAccountId());
		req.setAttribute("scenelist", scenelist);
		return new ModelAndView("weixin/idea/qrcode/weixinQrcode-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WeixinQrcodeEntity weixinQrcode,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinQrcode.getId())) {
			weixinQrcode = (WeixinQrcodeEntity) this.weixinQrcodeService
					.getEntity(WeixinQrcodeEntity.class, weixinQrcode.getId());
			req.setAttribute("weixinQrcodePage", weixinQrcode);
		}
		List scenelist = this.weixinQrcodeSceneService.findByProperty(
				WeixinQrcodeSceneEntity.class, "accountid",
				ResourceUtil.getShangJiaAccountId());
		req.setAttribute("scenelist", scenelist);
		return new ModelAndView("weixin/idea/qrcode/weixinQrcode-update");
	}

	@RequestMapping(params = { "upload" })
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/idea/qrcode/weixinQrcodeUpload");
	}

	@RequestMapping(params = { "downqrcode" })
	public void downQrcode(WeixinQrcodeEntity weixinQrcode,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/jpg");
		weixinQrcode = (WeixinQrcodeEntity) this.weixinQrcodeService.get(
				WeixinQrcodeEntity.class, weixinQrcode.getId());
		WeixinQrcodeSceneEntity weixinQrcodeScene = (WeixinQrcodeSceneEntity) this.weixinQrcodeSceneService
				.findUniqueByProperty(WeixinQrcodeSceneEntity.class,
						"scenekey", weixinQrcode.getSceneId());
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			String qrcodepath = request.getSession().getServletContext()
					.getRealPath(weixinQrcode.getImageurl());
			File file = new File(qrcodepath);
			BufferedInputStream bis = new BufferedInputStream(
					new FileInputStream(file));
			byte[] buff = new byte[2048];
			if (weixinQrcodeScene != null)
				codedFileName = "二维码信息" + weixinQrcodeScene.getScenevalue();
			else {
				codedFileName = "二维码信息";
			}

			if (BrowserUtils.isIE(request)) {
				response.setHeader(
						"content-disposition",
						"attachment;filename="
								+ URLEncoder.encode(codedFileName, "UTF-8")
								+ ".jpg");
			} else {
				String newtitle = new String(codedFileName.getBytes("UTF-8"),
						"ISO8859-1");

				response.setHeader("content-disposition",
						"attachment;filename=" + newtitle + ".jpg");
			}

			fOut = response.getOutputStream();
			int bytesRead;
			while (-1 != (bytesRead = bis.read(buff, 0, buff.length)))
				fOut.write(buff, 0, bytesRead);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				fOut.flush();
				fOut.close();
			} catch (IOException e) {
			}
		}
	}

	@RequestMapping(params = { "exportXls" })
	public void exportXls(WeixinQrcodeEntity weixinQrcode,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "二维码信息";

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
			CriteriaQuery cq = new CriteriaQuery(WeixinQrcodeEntity.class,
					dataGrid);
			HqlGenerateUtil.installHql(cq, weixinQrcode,
					request.getParameterMap());

			List weixinQrcodes = this.weixinQrcodeService
					.getListByCriteriaQuery(cq, Boolean.valueOf(false));
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("二维码信息列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinQrcodeEntity.class, weixinQrcodes);

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
	public void exportXlsByT(WeixinQrcodeEntity weixinQrcode,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "二维码信息";

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
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("二维码信息列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinQrcodeEntity.class, null);

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
				List<WeixinQrcodeEntity> listWeixinQrcodeEntitys = (List<WeixinQrcodeEntity>) ExcelImportUtil
						.importExcelByIs(file.getInputStream(),
								WeixinQrcodeEntity.class, params);

				for (WeixinQrcodeEntity weixinQrcode : listWeixinQrcodeEntitys) {
					this.weixinQrcodeService.save(weixinQrcode);
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