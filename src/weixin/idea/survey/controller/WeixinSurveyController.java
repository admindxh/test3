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
import weixin.idea.survey.entity.WeixinSurveyRecordEntity;
import weixin.idea.survey.entity.WeixinSurveyResultView;
import weixin.idea.survey.entity.WeixinSurveyView;
import weixin.idea.survey.service.WeixinSurveyMainServiceI;
import weixin.idea.survey.service.WeixinSurveyOptionServiceI;
import weixin.idea.survey.service.WeixinSurveyRecordServiceI;
import weixin.idea.survey.service.WeixinSurveyServiceI;
import weixin.vip.service.WeixinVipMemberServiceI;

@Scope("prototype")
@Controller
@RequestMapping({ "/weixinSurveyController" })
public class WeixinSurveyController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(WeixinSurveyController.class);

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

	@RequestMapping(params = { "weixinSurvey" })
	public ModelAndView weixinSurvey(HttpServletRequest request) {
		return new ModelAndView("weixin/idea/survey/weixinSurveyList");
	}

	@RequestMapping(params = { "weixinSurveyRecord" })
	public ModelAndView weixinSurveyRecord(HttpServletRequest request) {
		return new ModelAndView("weixin/idea/survey/weixinSurveyRecordList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinSurveyEntity weixinSurvey,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinSurveyEntity.class, dataGrid);

		HqlGenerateUtil.installHql(cq, weixinSurvey, request.getParameterMap());
		try {
			cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.weixinSurveyService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "recorddatagrid" })
	public void recorddatagrid(WeixinSurveyRecordEntity weixinSurveyRecord,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinSurveyRecordEntity.class,
				dataGrid);

		HqlGenerateUtil.installHql(cq, weixinSurveyRecord,
				request.getParameterMap());
		try {
			cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.weixinSurveyRecordService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "goAddSurveyOption" })
	public ModelAndView goAddSurveyOption(WeixinSurveyEntity weixinSurvey,
			HttpServletRequest request) {
		if (!StringUtil.isEmpty(weixinSurvey.getId())) {
			List surveyOptionList = this.weixinSurveyOptionService
					.findByProperty(WeixinSurveyOptionEntity.class,
							"weixinSurvey.id", weixinSurvey.getId());
			request.setAttribute("surveyOptionList", surveyOptionList);
		}
		return new ModelAndView("weixin/idea/survey/weixinSurveyOption-add");
	}

	@RequestMapping(params = { "deploy" })
	@ResponseBody
	public AjaxJson deploy(String ids, String statement,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();

		for (String id : ids.split(",")) {
			WeixinSurveyEntity weixinSurvey = (WeixinSurveyEntity) this.systemService
					.getEntity(WeixinSurveyEntity.class, id);
			weixinSurvey.setStatement(statement);
			this.weixinSurveyService.updateEntitie(weixinSurvey);
			this.message = "微调研 发布成功";
			this.systemService.addLog(this.message, Globals.Log_Type_DEL,
					Globals.Log_Leavel_INFO);
		}
		j.setSuccess(true);
		j.setMsg("操作成功！");
		return j;
	}

	@RequestMapping(params = { "goSurvey" })
	public ModelAndView goSurvey(WeixinSurveyEntity weixinSurvey,
			HttpServletRequest request) {
		String accountid = request.getParameter("accountid");
		String openid = request.getParameter("openid");
		if (StringUtil.isEmpty(accountid)) {
			accountid = ResourceUtil.getQianTaiAccountId();
		}
		if (!StringUtil.isEmpty(openid)) {
			request.setAttribute("openid", openid);
		}

		CriteriaQuery maincq = new CriteriaQuery(WeixinSurveyMainEntity.class);
		maincq.eq("accountid", accountid);

		maincq.eq("statement", "1");
		maincq.add();
		List mainlist = this.weixinSurveyMainService.getListByCriteriaQuery(
				maincq, Boolean.valueOf(false));

		if (mainlist.size() != 0) {
			CriteriaQuery recordcq = new CriteriaQuery(
					WeixinSurveyRecordEntity.class);
			recordcq.eq("mainid",
					((WeixinSurveyMainEntity) mainlist.get(0)).getId());
			recordcq.eq("userid", ResourceUtil.getSessionUserName().getId());
			recordcq.add();
			List<WeixinSurveyRecordEntity> recordlist = this.weixinSurveyRecordService
					.getListByCriteriaQuery(recordcq, Boolean.valueOf(false));

			if (recordlist.size() != 0) {
				return goSurveyResultShow(
						(WeixinSurveyMainEntity) mainlist.get(0), request);
			}
			CriteriaQuery cq = new CriteriaQuery(WeixinSurveyEntity.class);
			cq.eq("mainId", ((WeixinSurveyMainEntity) mainlist.get(0)).getId());

			cq.addOrder("seq", SortDirection.asc);
			cq.add();
			List<WeixinSurveyEntity> weixinSurveys = this.weixinSurveyService
					.getListByCriteriaQuery(cq, Boolean.valueOf(false));
			request.setAttribute("accountid", accountid);
			request.setAttribute("openid", request.getParameter("openid"));
			List<WeixinSurveyView> viewlist = new ArrayList<WeixinSurveyView>();
			if (weixinSurveys.size() != 0) {
				for (WeixinSurveyEntity surveyEntity : weixinSurveys) {
					WeixinSurveyView surveyView = new WeixinSurveyView();
					List<WeixinSurveyOptionEntity> surveyoptionlist = this.weixinSurveyOptionService
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
			request.setAttribute("surveyMain", mainlist.get(0));
		}
		return new ModelAndView("weixin/idea/survey/front/survey");
	}

	@RequestMapping(params = { "doSurvey" })
	@ResponseBody
	public AjaxJson doSurvey(String[] answer, String mainid,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		WeixinSurveyMainEntity weixinSurveyMain = (WeixinSurveyMainEntity) this.weixinSurveyMainService
				.get(WeixinSurveyMainEntity.class, mainid);
		weixinSurveyMain.setSurveyCount(Integer.valueOf(weixinSurveyMain
				.getSurveyCount().intValue() + 1));
		this.weixinSurveyMainService.updateEntitie(weixinSurveyMain);
		if ((answer != null) && (answer.length != 0)) {
			for (String an : answer) {
				String[] valstrs = an.split("_");
				String surveyid = valstrs[0];
				String answervalue = valstrs[1];

				WeixinSurveyEntity weixinSurvey = (WeixinSurveyEntity) this.weixinSurveyService
						.get(WeixinSurveyEntity.class, surveyid);
				int allcount;
				if (("1".equals(weixinSurvey.getSurveyType()))
						|| ("2".equals(weixinSurvey.getSurveyType()))) {
					String[] optionids = valstrs[2].split(";");
					allcount = 0;

					for (String oid : optionids) {
						WeixinSurveyOptionEntity optionEntity = (WeixinSurveyOptionEntity) this.weixinSurveyOptionService
								.get(WeixinSurveyOptionEntity.class, oid);
						optionEntity.setCount(Integer.valueOf(optionEntity
								.getCount().intValue() + 1));
						this.weixinSurveyOptionService
								.updateEntitie(optionEntity);
					}

					List<WeixinSurveyOptionEntity> optionlist = this.weixinSurveyOptionService
							.findByProperty(WeixinSurveyOptionEntity.class,
									"weixinSurvey.id", weixinSurvey.getId());
					for (WeixinSurveyOptionEntity o : optionlist) {
						allcount += o.getCount().intValue();
					}
					for (WeixinSurveyOptionEntity oid : optionlist) {
						WeixinSurveyOptionEntity optionEntity = (WeixinSurveyOptionEntity) this.weixinSurveyOptionService
								.get(WeixinSurveyOptionEntity.class,
										oid.getId());
						String scale = String.format(
								"%.2f",
								new Object[] { Double.valueOf(optionEntity
										.getCount().intValue() / allcount) });
						optionEntity.setScale(Double.valueOf(scale));
						this.weixinSurveyOptionService
								.updateEntitie(optionEntity);
					}
				}
				WeixinSurveyRecordEntity surveyRecordEntity = new WeixinSurveyRecordEntity();

				weixinSurvey.setSurveyCount(Integer.valueOf(weixinSurvey
						.getSurveyCount().intValue() + 1));
				surveyRecordEntity.setAccountid(weixinSurvey.getAccountid());
				surveyRecordEntity.setOpenid(request.getParameter("openid"));
				surveyRecordEntity.setUserid(ResourceUtil.getSessionUserName()
						.getId());
				surveyRecordEntity.setSurveyid(weixinSurvey.getId());
				surveyRecordEntity.setAnswer(answervalue);
				surveyRecordEntity.setMainid(mainid);

				this.weixinSurveyRecordService.save(surveyRecordEntity);
			}
		}

		if (ResourceUtil.getSessionUserName() != null) {
			this.weixinVipMemberService.updateMemberIntegral(ResourceUtil
					.getSessionUserName().getId(), request
					.getParameter("accountid"), weixinSurveyMain.getIntegral());
		}

		j.setSuccess(true);
		return j;
	}

	@RequestMapping(params = { "goSurveyResultShow" })
	public ModelAndView goSurveyResultShow(
			WeixinSurveyMainEntity weixinSurveyMain, HttpServletRequest request) {
		weixinSurveyMain = (WeixinSurveyMainEntity) this.weixinSurveyMainService
				.get(WeixinSurveyMainEntity.class, weixinSurveyMain.getId());
		request.setAttribute("weixinSurveyMain", weixinSurveyMain);
		return new ModelAndView("weixin/idea/survey/front/survey-show");
	}

	@RequestMapping(params = { "goSurveyResult" })
	public ModelAndView goSurveyResult(WeixinSurveyMainEntity weixinSurveyMain,
			HttpServletRequest request) {
		String accountid = request.getParameter("accountid");
		if (StringUtil.isEmpty(accountid)) {
			accountid = ResourceUtil.getQianTaiAccountId();
		}

		weixinSurveyMain = (WeixinSurveyMainEntity) this.weixinSurveyMainService
				.get(WeixinSurveyMainEntity.class, weixinSurveyMain.getId());

		List<WeixinSurveyEntity> surveylist = this.weixinSurveyService.findByProperty(
				WeixinSurveyEntity.class, "mainId", weixinSurveyMain.getId());
		List<WeixinSurveyResultView> resultlist = new ArrayList<WeixinSurveyResultView>();

		for (WeixinSurveyEntity survey : surveylist) {
			CriteriaQuery cq = new CriteriaQuery(WeixinSurveyRecordEntity.class);
			cq.eq("surveyid", survey.getId());
			cq.eq("userid", ResourceUtil.getSessionUserName().getId());
			cq.add();
			WeixinSurveyResultView resultView = new WeixinSurveyResultView();
			List<WeixinSurveyRecordEntity> recordlist = this.weixinSurveyRecordService
					.getListByCriteriaQuery(cq, Boolean.valueOf(false));
			resultView.setWeixinSurvey(survey);
			resultView.setRecordlist(recordlist);
			resultlist.add(resultView);
		}
		request.setAttribute("resultlist", resultlist);
		request.setAttribute("weixinSurveyMain", weixinSurveyMain);
		request.setAttribute("openid", request.getParameter("openid"));
		request.setAttribute("accountid", accountid);
		return new ModelAndView("weixin/idea/survey/front/survey-result");
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

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WeixinSurveyEntity weixinSurvey,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinSurvey = (WeixinSurveyEntity) this.systemService.getEntity(
				WeixinSurveyEntity.class, weixinSurvey.getId());
		this.message = "微调研 删除成功";
		try {
			List optionlist = this.weixinSurveyOptionService.findByProperty(
					WeixinSurveyOptionEntity.class, "weixinSurvey.id",
					weixinSurvey.getId());
			this.weixinSurveyRecordService.deleteAllEntitie(optionlist);
			this.weixinSurveyService.delete(weixinSurvey);
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
				WeixinSurveyEntity weixinSurvey = (WeixinSurveyEntity) this.systemService
						.getEntity(WeixinSurveyEntity.class, id);
				List optionlist = this.weixinSurveyOptionService
						.findByProperty(WeixinSurveyOptionEntity.class,
								"weixinSurvey.id", weixinSurvey.getId());
				this.weixinSurveyRecordService.deleteAllEntitie(optionlist);
				this.weixinSurveyService.delete(weixinSurvey);
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
	public AjaxJson doAdd(WeixinSurveyEntity weixinSurvey,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微调研 添加成功";
		try {
			this.weixinSurveyService.save(weixinSurvey);
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
	public AjaxJson doUpdate(WeixinSurveyEntity weixinSurvey,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微调研 更新成功";
		WeixinSurveyEntity t = (WeixinSurveyEntity) this.weixinSurveyService
				.get(WeixinSurveyEntity.class, weixinSurvey.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinSurvey, t);
			this.weixinSurveyService.saveOrUpdate(t);
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
	public ModelAndView goAdd(WeixinSurveyEntity weixinSurvey,
			HttpServletRequest req) {
		List mainlist = this.weixinSurveyMainService.findByProperty(
				WeixinSurveyMainEntity.class, "accountid",
				ResourceUtil.getShangJiaAccountId());
		if (StringUtil.isNotEmpty(weixinSurvey.getId())) {
			weixinSurvey = (WeixinSurveyEntity) this.weixinSurveyService
					.getEntity(WeixinSurveyEntity.class, weixinSurvey.getId());
			req.setAttribute("weixinSurveyPage", weixinSurvey);
		}
		req.setAttribute("mainlist", mainlist);
		return new ModelAndView("weixin/idea/survey/weixinSurvey-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WeixinSurveyEntity weixinSurvey,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinSurvey.getId())) {
			weixinSurvey = (WeixinSurveyEntity) this.weixinSurveyService
					.getEntity(WeixinSurveyEntity.class, weixinSurvey.getId());
			List mainlist = this.weixinSurveyMainService
					.loadAll(WeixinSurveyMainEntity.class);
			req.setAttribute("mainlist", mainlist);
			req.setAttribute("weixinSurveyPage", weixinSurvey);
		}
		return new ModelAndView("weixin/idea/survey/weixinSurvey-add");
	}

	@RequestMapping(params = { "upload" })
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/idea/survey/weixinSurveyUpload");
	}

	@RequestMapping(params = { "exportXls" })
	public void exportXls(WeixinSurveyEntity weixinSurvey,
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
			CriteriaQuery cq = new CriteriaQuery(WeixinSurveyEntity.class,
					dataGrid);
			HqlGenerateUtil.installHql(cq, weixinSurvey,
					request.getParameterMap());

			List weixinSurveys = this.weixinSurveyService
					.getListByCriteriaQuery(cq, Boolean.valueOf(false));
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微调研 列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinSurveyEntity.class, weixinSurveys);

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
	public void exportXlsByT(WeixinSurveyEntity weixinSurvey,
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
					"导出信息"), WeixinSurveyEntity.class, null);

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
				List<WeixinSurveyEntity> listWeixinSurveyEntitys = (List<WeixinSurveyEntity>) ExcelImportUtil
						.importExcelByIs(file.getInputStream(),
								WeixinSurveyEntity.class, params);

				for (WeixinSurveyEntity weixinSurvey : listWeixinSurveyEntitys) {
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