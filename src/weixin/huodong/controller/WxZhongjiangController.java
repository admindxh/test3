package weixin.huodong.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.poi.POIXMLDocument;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
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
import org.jeecgframework.core.util.UUIDGenerator;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSType;
import org.jeecgframework.web.system.pojo.base.TSTypegroup;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import weixin.huodong.entity.WxHuodongEntity;
import weixin.huodong.entity.WxZhongjiangEntity;
import weixin.huodong.service.WxHuodongServiceI;
import weixin.huodong.service.WxZhongjiangServiceI;
import weixin.huodong.view.WxZhongjiangEntityVo;

@Scope("prototype")
@Controller
@RequestMapping({ "/wxZhongjiangController" })
public class WxZhongjiangController extends BaseController {
	private static final Logger logger = Logger.getLogger(WxZhongjiangController.class);

	@Autowired
	private WxZhongjiangServiceI wxZhongjiangService;

	@Autowired
	private SystemService systemService;
	private String message;

	@Autowired
	private WxHuodongServiceI wxHuodongService;
//	private static final String POINT = ".";

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "wxZhongjiang" })
	public ModelAndView wxZhongjiang(HttpServletRequest request) {
		return new ModelAndView("weixin/huodong/wxZhongjiangList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WxZhongjiangEntity wxZhongjiang, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WxZhongjiangEntity.class, dataGrid);

		HqlGenerateUtil.installHql(cq, wxZhongjiang, request.getParameterMap());

		cq.add();
		this.wxZhongjiangService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WxZhongjiangEntity wxZhongjiang, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		wxZhongjiang = (WxZhongjiangEntity) this.systemService
				.getEntity(WxZhongjiangEntity.class, wxZhongjiang.getId());

		this.message = "中奖记录删除成功";
		try {
			this.wxZhongjiangService.delete(wxZhongjiang);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "中奖记录删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "中奖记录删除成功";
		try {
			for (String id : ids.split(",")) {
				WxZhongjiangEntity wxZhongjiang = (WxZhongjiangEntity) this.systemService.getEntity(
						WxZhongjiangEntity.class, id);

				this.wxZhongjiangService.delete(wxZhongjiang);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "中奖记录删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WxZhongjiangEntity wxZhongjiang, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "中奖记录添加成功";
		try {
			wxZhongjiang.setJpFlag(Integer.valueOf(0));
			this.wxZhongjiangService.save(wxZhongjiang);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "中奖记录添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WxZhongjiangEntity wxZhongjiang, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "中奖记录更新成功";
		WxZhongjiangEntity t = (WxZhongjiangEntity) this.wxZhongjiangService.get(WxZhongjiangEntity.class,
				wxZhongjiang.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(wxZhongjiang, t);
			this.wxZhongjiangService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "中奖记录更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(WxZhongjiangEntity wxZhongjiang, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(wxZhongjiang.getId())) {
			wxZhongjiang = (WxZhongjiangEntity) this.wxZhongjiangService.getEntity(WxZhongjiangEntity.class,
					wxZhongjiang.getId());

			req.setAttribute("wxZhongjiangPage", wxZhongjiang);
		}
		List<WxHuodongEntity> huodongEntities = this.systemService.getList(WxHuodongEntity.class);

		req.setAttribute("huodongEntities", huodongEntities);
		return new ModelAndView("weixin/huodong/wxZhongjiang-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WxZhongjiangEntity wxZhongjiang, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(wxZhongjiang.getId())) {
			wxZhongjiang = (WxZhongjiangEntity) this.wxZhongjiangService.getEntity(WxZhongjiangEntity.class,
					wxZhongjiang.getId());

			req.setAttribute("wxZhongjiangPage", wxZhongjiang);
		}
		List<WxHuodongEntity> huodongEntities = this.systemService.getList(WxHuodongEntity.class);

		req.setAttribute("huodongEntities", huodongEntities);
		return new ModelAndView("weixin/huodong/wxZhongjiang-update");
	}

	@RequestMapping(params = { "upload" })
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/huodong/wxZhongjiangUpload");
	}

	@RequestMapping(params = { "exportXls" })
	public void exportXls(WxZhongjiangEntity wxZhongjiang, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "用户中奖邮寄信息";

			if (BrowserUtils.isIE(request)) {
				response.setHeader("content-disposition",
						"attachment;filename=" + URLEncoder.encode(codedFileName, "UTF-8") + ".xls");
			} else {
				String newtitle = new String(codedFileName.getBytes("UTF-8"), "ISO8859-1");

				response.setHeader("content-disposition", "attachment;filename=" + newtitle + ".xls");
			}

			HSSFWorkbook workbook = null;
			CriteriaQuery cq = new CriteriaQuery(WxZhongjiangEntity.class, dataGrid);

			HqlGenerateUtil.installHql(cq, wxZhongjiang, request.getParameterMap());

			List<WxZhongjiangEntity> wxZhongjiangs = this.wxZhongjiangService.getListByCriteriaQuery(cq,
					Boolean.valueOf(false));

			List<WxZhongjiangEntityVo> wxZhongjiangEntityVos = new ArrayList<WxZhongjiangEntityVo>();
			for (WxZhongjiangEntity wxZhongjiangEntity : wxZhongjiangs) {
				WxZhongjiangEntityVo vo = new WxZhongjiangEntityVo();
				BeanUtils.copyProperties(vo, wxZhongjiangEntity);
				WxHuodongEntity entity = (WxHuodongEntity) this.systemService.getEntity(WxHuodongEntity.class,
						wxZhongjiangEntity.getHuoddongId());

				vo.setHuoddongName(entity.getHdName());
				List<TSType> typeList = (List<TSType>) TSTypegroup.allTypes.get("pf_code");
				for (TSType tsType : typeList) {
					if (tsType.getTypecode().equals(wxZhongjiangEntity.getPlatformCode().toString())) {
						vo.setPlatformName(tsType.getTypename());
					}
				}

				typeList = (List<TSType>) TSTypegroup.allTypes.get("jp_level");
				for (TSType tsType : typeList) {
					if (tsType.getTypecode().equals(wxZhongjiangEntity.getJpLevel().toString())) {
						vo.setJpLevel(tsType.getTypename());
					}
				}

				typeList = (List<TSType>) TSTypegroup.allTypes.get("jp_flag");
				for (TSType tsType : typeList) {
					if (tsType.getTypecode().equals(wxZhongjiangEntity.getJpFlag().toString())) {
						vo.setJpFlag(tsType.getTypename());
					}
				}

				wxZhongjiangEntityVos.add(vo);
			}
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("用户中奖邮寄信息", "导出人:"
					+ ResourceUtil.getSessionUserName().getRealName(), "用户中奖邮寄信息"), WxZhongjiangEntityVo.class,
					wxZhongjiangEntityVos);

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
	public void exportXlsByT(WxZhongjiangEntity wxZhongjiang, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "中奖记录";

			if (BrowserUtils.isIE(request)) {
				response.setHeader("content-disposition",
						"attachment;filename=" + URLEncoder.encode(codedFileName, "UTF-8") + ".xls");
			} else {
				String newtitle = new String(codedFileName.getBytes("UTF-8"), "ISO8859-1");

				response.setHeader("content-disposition", "attachment;filename=" + newtitle + ".xls");
			}

			HSSFWorkbook workbook = null;
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("中奖记录列表", "导出人:"
					+ ResourceUtil.getSessionUserName().getRealName(), "导出信息"), WxZhongjiangEntity.class, null);

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
	public AjaxJson importExcel(HttpServletRequest request, HttpServletResponse response) {
		AjaxJson j = new AjaxJson();

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
		for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
			MultipartFile file = (MultipartFile) entity.getValue();
//			ImportParams params = new ImportParams();
			try {
				List<WxZhongjiangEntity> listWxZhongjiangEntitys = new ArrayList<WxZhongjiangEntity>();

				Workbook book = null;
				InputStream inputstream = file.getInputStream();
				if (!inputstream.markSupported()) {
					inputstream = new PushbackInputStream(inputstream, 8);
				}
				if (POIFSFileSystem.hasPOIFSHeader(inputstream))
					book = new HSSFWorkbook(inputstream);
				else if (POIXMLDocument.hasOOXMLHeader(inputstream)) {
					book = new XSSFWorkbook(OPCPackage.open(inputstream));
				}
				Iterator<Row> rows = book.getSheetAt(0).rowIterator();
				rows.next();
				while (rows.hasNext()) {
					Row row = (Row) rows.next();
					WxZhongjiangEntity entityWxZhongjiangEntity = new WxZhongjiangEntity();

					String platformName = row.getCell(0).toString();
					if (!StringUtil.isEmpty(platformName)) {
						List<TSType> typeList = TSTypegroup.allTypes.get("pf_code");
						for (TSType tsType : typeList) {
							if (tsType.getTypename().equals(platformName)) {
								entityWxZhongjiangEntity.setPlatformCode(Integer.valueOf(tsType.getTypecode()));
							}
						}

						entityWxZhongjiangEntity.setUserAccount(row.getCell(1).toString());

						String hdName = row.getCell(2).toString();
						WxHuodongEntity huodongEntity = (WxHuodongEntity) this.systemService.findUniqueByProperty(
								WxHuodongEntity.class, "hdName", hdName);

						if (huodongEntity != null) {
							entityWxZhongjiangEntity.setHuoddongId(huodongEntity.getId());
						}

						entityWxZhongjiangEntity.setJpName(row.getCell(3).toString());

						entityWxZhongjiangEntity.setJpCode(row.getCell(4).toString());

						entityWxZhongjiangEntity.setJpLevel(Integer.valueOf(Double.valueOf(
								row.getCell(5).getNumericCellValue()).intValue()));

						entityWxZhongjiangEntity.setJpFlag(Integer.valueOf(0));
						listWxZhongjiangEntitys.add(entityWxZhongjiangEntity);
					}
				}
				for (WxZhongjiangEntity wxZhongjiang : listWxZhongjiangEntitys) {
					this.wxZhongjiangService.save(wxZhongjiang);
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

	@RequestMapping(params = { "index" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView("weixin/huodong/wxHuoDong");
		List<WxHuodongEntity> list = this.wxHuodongService.getList(WxHuodongEntity.class);
		List<WxHuodongEntity> wxhoudongList = new ArrayList<WxHuodongEntity>();
		for (Iterator<WxHuodongEntity> i$ = list.iterator(); i$.hasNext();) {
			Object object = i$.next();
			WxHuodongEntity wxhuodong = (WxHuodongEntity) object;
			wxhoudongList.add(wxhuodong);
		}
		modelAndView.addObject("wxhuodongList", wxhoudongList);
		return modelAndView;
	}

	@RequestMapping(params = { "validate" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	@ResponseBody
	public AjaxJson validate(HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		String jpCode = request.getParameter("jpCode");
		String hdid = request.getParameter("hdid");
		String platform = request.getParameter("platform");
		WxZhongjiangEntity wxZhongjiangEntity;
		if ("wx".equals(platform)) {
			String userAccount = request.getParameter("userName");
			wxZhongjiangEntity = this.wxZhongjiangService.getWxZhongjiangEntitybyUserAccount(userAccount);
		} else {
			wxZhongjiangEntity = this.wxZhongjiangService.getWxZhongjiangEntitybyJpCodeAndHdId(jpCode, hdid);
		}

		if (wxZhongjiangEntity != null) {
			if (wxZhongjiangEntity.getJpFlag().intValue() != 0) {
				j.setSuccess(false);
				j.setMsg("已经兑奖，不能重复兑奖!");
			} else {
				j.setObj(wxZhongjiangEntity.getId());
				j.setSuccess(true);
			}
		} else {
			j.setSuccess(false);
			j.setMsg("兑奖信息有误，请重新输入!");
		}
		return j;
	}

	@RequestMapping(params = { "next" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public ModelAndView next(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("weixin/huodong/wxHuoDongNext");

		String id = request.getParameter("id");
		WxZhongjiangEntity wxZhongjiangEntity = (WxZhongjiangEntity) this.wxZhongjiangService.get(
				WxZhongjiangEntity.class, id);

		modelAndView.addObject("wxZhongjiangEntity", wxZhongjiangEntity);
		return modelAndView;
	}

	@RequestMapping(params = { "saveAndUpload" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public ModelAndView saveAndUpload(@ModelAttribute("wxZhongjiangEntity") WxZhongjiangEntity wxZhongjiangEntity,
			@RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("weixin/huodong/success");
		WxZhongjiangEntity wxZhongjiangEntity2 = (WxZhongjiangEntity) this.wxZhongjiangService.get(
				WxZhongjiangEntity.class, wxZhongjiangEntity.getId());

		if (wxZhongjiangEntity2.getJpFlag().intValue() == 1) {
			modelAndView.setView(new RedirectView("wxZhongjiangController.do?index"));
			return modelAndView;
		}
		wxZhongjiangEntity2.setJpFlag(Integer.valueOf(1));
		wxZhongjiangEntity2.setUpdateDate(new Date());
		wxZhongjiangEntity2.setUserTelphone(wxZhongjiangEntity.getUserTelphone());

		wxZhongjiangEntity2.setUserAnme(wxZhongjiangEntity.getUserAnme());
		wxZhongjiangEntity2.setUserAddress(wxZhongjiangEntity.getUserAddress());
		wxZhongjiangEntity2.setContent(wxZhongjiangEntity.getContent());

		String contextUploadPath = "upload" + File.separator + "zhongjiang";
		String path = request.getSession().getServletContext().getRealPath(contextUploadPath);
		if ((files != null) && (files.length > 0)) {
			for (int i = 0; i < files.length; i++) {
				if (!files[i].isEmpty()) {
					try {
						String originalFilename = files[i].getOriginalFilename();
						String kname = StringUtils.substringAfterLast(originalFilename, ".");
						String fileName = UUIDGenerator.generate() + "." + kname;
						String filePath = contextUploadPath + File.separator + fileName;
						File targetFile = new File(path, fileName);
						if (!targetFile.exists()) {
							targetFile.mkdirs();
						}
						files[i].transferTo(targetFile);

						if (i == 0) {
							wxZhongjiangEntity2.setIdcardAFile(filePath);
						} else {
							wxZhongjiangEntity2.setIdcardBFile(filePath);
						}
					} catch (Exception e) {
						logger.error("上传出错", e);
					}
				}
			}
		}
		this.wxZhongjiangService.updateEntitie(wxZhongjiangEntity2);
		return modelAndView;
	}

	@RequestMapping(params = { "save" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public ModelAndView save(@ModelAttribute("wxZhongjiangEntity") WxZhongjiangEntity wxZhongjiangEntity) {
		ModelAndView modelAndView = new ModelAndView("weixin/huodong/success");
		WxZhongjiangEntity wxZhongjiangEntity2 = (WxZhongjiangEntity) this.wxZhongjiangService.get(
				WxZhongjiangEntity.class, wxZhongjiangEntity.getId());

		if (wxZhongjiangEntity2.getJpFlag().intValue() == 1) {
			modelAndView.setView(new RedirectView("wxZhongjiangController.do?index"));
			return modelAndView;
		}
		wxZhongjiangEntity2.setJpFlag(Integer.valueOf(1));
		wxZhongjiangEntity2.setUpdateDate(new Date());
		wxZhongjiangEntity2.setUserTelphone(wxZhongjiangEntity.getUserTelphone());

		wxZhongjiangEntity2.setUserAnme(wxZhongjiangEntity.getUserAnme());
		wxZhongjiangEntity2.setUserAddress(wxZhongjiangEntity.getUserAddress());
		wxZhongjiangEntity2.setContent(wxZhongjiangEntity.getContent());
		this.wxZhongjiangService.updateEntitie(wxZhongjiangEntity2);
		return modelAndView;
	}
}