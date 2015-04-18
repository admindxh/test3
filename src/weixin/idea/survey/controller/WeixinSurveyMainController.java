package weixin.idea.survey.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
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
import org.jeecgframework.tag.vo.datatable.SortDirection;
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
import weixin.idea.survey.entity.WeixinSurveyEntity;
import weixin.idea.survey.entity.WeixinSurveyMainEntity;
import weixin.idea.survey.entity.WeixinSurveyOptionEntity;
import weixin.idea.survey.entity.WeixinSurveyView;
import weixin.idea.survey.service.WeixinSurveyMainServiceI;
import weixin.idea.survey.service.WeixinSurveyOptionServiceI;
import weixin.idea.survey.service.WeixinSurveyRecordServiceI;
import weixin.idea.survey.service.WeixinSurveyServiceI;
import weixin.vip.service.WeixinVipMemberServiceI;

@Scope("prototype")
@Controller
@RequestMapping({ "/weixinSurveyMainController" })
public class WeixinSurveyMainController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(WeixinSurveyMainController.class);

	@Autowired
	private WeixinSurveyServiceI weixinSurveyService;

	@Autowired
	private WeixinSurveyMainServiceI weixinSurveyMainService;

	@Autowired
	private WeixinSurveyOptionServiceI weixinSurveyOptionService;

	@Autowired
	private SystemService systemService;

	@Autowired
	private WeixinVipMemberServiceI weixinVipMemberService;

	@Autowired
	private WeixinSurveyRecordServiceI weixinSurveyRecordService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "weixinSurveyMain" })
	public ModelAndView weixinSurveyMain(HttpServletRequest request) {
		return new ModelAndView("weixin/idea/survey/weixinSurveyMainList");
	}

	@RequestMapping(params = { "goReview" })
	public ModelAndView goReview(WeixinSurveyMainEntity weixinSurveyMain,
			HttpServletRequest request) {
		weixinSurveyMain = (WeixinSurveyMainEntity) this.weixinSurveyMainService
				.get(WeixinSurveyMainEntity.class, weixinSurveyMain.getId());
		String accountid = request.getParameter("accountid");
		String openid = request.getParameter("openid");
		if (StringUtil.isEmpty(accountid)) {
			accountid = ResourceUtil.getShangJiaAccountId();
		}
		if (!StringUtil.isEmpty(openid)) {
			request.setAttribute("openid", openid);
		}

		CriteriaQuery cq = new CriteriaQuery(WeixinSurveyEntity.class);
		cq.eq("mainId", weixinSurveyMain.getId());

		cq.addOrder("seq", SortDirection.asc);
		cq.add();
		List<WeixinSurveyEntity> weixinSurveys = this.weixinSurveyService.getListByCriteriaQuery(
				cq, Boolean.valueOf(false));
		request.setAttribute("accountid", accountid);
		request.setAttribute("openid", request.getParameter("openid"));
		List viewlist = new ArrayList();
		if (weixinSurveys.size() != 0) {
			for (WeixinSurveyEntity surveyEntity : weixinSurveys) {
				WeixinSurveyView surveyView = new WeixinSurveyView();
				List surveyoptionlist = this.weixinSurveyOptionService
						.findByProperty(WeixinSurveyOptionEntity.class,
								"weixinSurvey.id", surveyEntity.getId());
				surveyView.setOptionlist(surveyoptionlist);
				surveyView.setSurveyDescription(surveyEntity
						.getSurveyDescription());
				surveyView.setSurveyid(surveyEntity.getId());
				surveyView.setSurveyTitle(surveyEntity.getSurveyTitle());
				surveyView.setSurveyType(surveyEntity.getSurveyType());
				viewlist.add(surveyView);
			}
			request.setAttribute("viewlist", viewlist);
		}
		request.setAttribute("surveyMain", weixinSurveyMain);
		return new ModelAndView("weixin/idea/survey/front/survey-review");
	}

	@RequestMapping(params = { "goSurveyMainCalculate" })
	public ModelAndView goSurveyMainCalculate(
			WeixinSurveyMainEntity weixinSurveyMain, HttpServletRequest request) {
		weixinSurveyMain = (WeixinSurveyMainEntity) this.weixinSurveyMainService
				.get(WeixinSurveyMainEntity.class, weixinSurveyMain.getId());

		CriteriaQuery cq = new CriteriaQuery(WeixinSurveyEntity.class);
		cq.eq("mainId", weixinSurveyMain.getId());

		cq.addOrder("seq", SortDirection.asc);
		cq.add();
		List surveylist = this.weixinSurveyService.getListByCriteriaQuery(cq,
				Boolean.valueOf(false));
		request.setAttribute("weixinSurveyMain", weixinSurveyMain);
		request.setAttribute("surveylist", surveylist);
		return new ModelAndView("weixin/idea/survey/weixinSurveyMain-calculate");
	}

	@RequestMapping(params = { "getCalculateData" })
	@ResponseBody
	public AjaxJson getCalculateData(WeixinSurveyEntity weixinSurvey,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (!StringUtil.isEmpty(weixinSurvey.getId())) {
			List optionlist = this.weixinSurveyOptionService.findByProperty(
					WeixinSurveyOptionEntity.class, "weixinSurvey.id",
					weixinSurvey.getId());
			j.setObj(optionlist);
		}
		return j;
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinSurveyMainEntity weixinSurvey,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinSurveyMainEntity.class,
				dataGrid);

		HqlGenerateUtil.installHql(cq, weixinSurvey, request.getParameterMap());
		try {
			cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.weixinSurveyMainService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "deploy" })
	@ResponseBody
	public AjaxJson deploy(WeixinSurveyMainEntity weixinSurveyMain,
			String statement, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();

		if ("1".equals(statement)) {
			CriteriaQuery maincq = new CriteriaQuery(
					WeixinSurveyMainEntity.class);
			maincq.eq("accountid", ResourceUtil.getShangJiaAccountId());

			maincq.eq("statement", "1");
			maincq.add();
			List mainlist = this.weixinSurveyMainService
					.getListByCriteriaQuery(maincq, Boolean.valueOf(false));
			if (mainlist.size() != 0) {
				this.message = ("调研问卷："
						+ ((WeixinSurveyMainEntity) mainlist.get(0))
								.getSurveyTitle() + "已经发布，请结束该主题后再发布新调研问卷。");
			} else {
				WeixinSurveyMainEntity weixinSurvey = (WeixinSurveyMainEntity) this.systemService
						.getEntity(WeixinSurveyMainEntity.class,
								weixinSurveyMain.getId());
				weixinSurvey.setStatement(statement);
				this.weixinSurveyMainService.updateEntitie(weixinSurvey);
				this.message = "微调研 发布成功";
			}
		} else {
			WeixinSurveyMainEntity weixinSurvey = (WeixinSurveyMainEntity) this.systemService
					.getEntity(WeixinSurveyMainEntity.class,
							weixinSurveyMain.getId());
			weixinSurvey.setStatement(statement);
			this.weixinSurveyMainService.updateEntitie(weixinSurvey);
			this.message = "微调研 发布成功";
		}

		this.systemService.addLog(this.message, Globals.Log_Type_DEL,
				Globals.Log_Leavel_INFO);
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WeixinSurveyMainEntity weixinMainSurvey,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinMainSurvey = (WeixinSurveyMainEntity) this.systemService
				.getEntity(WeixinSurveyMainEntity.class,
						weixinMainSurvey.getId());
		this.message = "微调研 删除成功";
		try {
			List optionlist = this.weixinSurveyOptionService.findByProperty(
					WeixinSurveyOptionEntity.class, "weixinSurvey.id",
					weixinMainSurvey.getId());
			List surveylist = this.weixinSurveyService.findByProperty(
					WeixinSurveyEntity.class, "mainId",
					weixinMainSurvey.getId());
			this.weixinSurveyRecordService.deleteAllEntitie(optionlist);
			this.weixinSurveyService.deleteAllEntitie(surveylist);
			this.weixinSurveyMainService.delete(weixinMainSurvey);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微调研 删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微调研 删除成功";
		try {
			for (String id : ids.split(",")) {
				WeixinSurveyMainEntity weixinMainSurvey = (WeixinSurveyMainEntity) this.systemService
						.getEntity(WeixinSurveyMainEntity.class, id);
				List surveylist = this.weixinSurveyService.findByProperty(
						WeixinSurveyEntity.class, "mainId",
						weixinMainSurvey.getId());
				List optionlist = this.weixinSurveyOptionService
						.findByProperty(WeixinSurveyOptionEntity.class,
								"weixinSurvey.id", weixinMainSurvey.getId());
				this.weixinSurveyRecordService.deleteAllEntitie(optionlist);
				this.weixinSurveyService.deleteAllEntitie(surveylist);
				this.weixinSurveyMainService.delete(weixinMainSurvey);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL,
						Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微调研 删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WeixinSurveyMainEntity weixinSurvey,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微调研 添加成功";
		try {
			if (StringUtil.isEmpty(weixinSurvey.getId())) {
				weixinSurvey.setStatement("0");
				weixinSurvey.setSurveyCount(Integer.valueOf(0));
				this.weixinSurveyMainService.save(weixinSurvey);
			} else {
				this.weixinSurveyMainService.updateEntitie(weixinSurvey);
			}
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微调研 添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WeixinSurveyMainEntity weixinSurvey,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微调研 更新成功";
		WeixinSurveyMainEntity t = (WeixinSurveyMainEntity) this.weixinSurveyService
				.get(WeixinSurveyMainEntity.class, weixinSurvey.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinSurvey, t);
			this.weixinSurveyMainService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微调研 更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(WeixinSurveyMainEntity weixinSurvey,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinSurvey.getId())) {
			weixinSurvey = (WeixinSurveyMainEntity) this.weixinSurveyService
					.getEntity(WeixinSurveyMainEntity.class,
							weixinSurvey.getId());
			req.setAttribute("weixinSurveyMainPage", weixinSurvey);
		}
		return new ModelAndView("weixin/idea/survey/weixinSurveyMain-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WeixinSurveyMainEntity weixinSurvey,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinSurvey.getId())) {
			weixinSurvey = (WeixinSurveyMainEntity) this.weixinSurveyService
					.getEntity(WeixinSurveyMainEntity.class,
							weixinSurvey.getId());
			req.setAttribute("weixinSurveyMainPage", weixinSurvey);
		}
		return new ModelAndView("weixin/idea/survey/weixinSurveyMain-add");
	}

	@RequestMapping(params = { "upload" })
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/idea/survey/weixinSurveyUpload");
	}

	@RequestMapping(params = { "exportXls" })
	public void exportXls(WeixinSurveyMainEntity weixinSurvey,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微调研 ";

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
			CriteriaQuery cq = new CriteriaQuery(WeixinSurveyMainEntity.class,
					dataGrid);
			HqlGenerateUtil.installHql(cq, weixinSurvey,
					request.getParameterMap());

			List weixinSurveys = this.weixinSurveyService
					.getListByCriteriaQuery(cq, Boolean.valueOf(false));
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微调研 列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinSurveyMainEntity.class, weixinSurveys);

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
	public void exportXlsByT(WeixinSurveyMainEntity weixinSurvey,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微调研 ";

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
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微调研 列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinSurveyMainEntity.class, null);

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
				List<WeixinSurveyMainEntity> listWeixinSurveyMainEntitys = (List<WeixinSurveyMainEntity>) ExcelImportUtil
						.importExcelByIs(file.getInputStream(),
								WeixinSurveyMainEntity.class, params);

				for (WeixinSurveyMainEntity weixinSurvey : listWeixinSurveyMainEntitys) {
					this.weixinSurveyService.save(weixinSurvey);
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