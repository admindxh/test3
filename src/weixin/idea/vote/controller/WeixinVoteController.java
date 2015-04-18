package weixin.idea.vote.controller;

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
import weixin.idea.vote.entity.VoteRecordEntity;
import weixin.idea.vote.entity.WeixinVoteEntity;
import weixin.idea.vote.entity.WeixinVoteOptionEntity;
import weixin.idea.vote.service.VoteRecordServiceI;
import weixin.idea.vote.service.WeixinVoteOptionServiceI;
import weixin.idea.vote.service.WeixinVoteServiceI;
import weixin.vip.service.WeixinVipMemberServiceI;

@Scope("prototype")
@Controller
@RequestMapping({ "/weixinVoteController" })
public class WeixinVoteController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(WeixinVoteController.class);

	@Autowired
	private WeixinVoteServiceI weixinVoteService;

	@Autowired
	private WeixinVoteOptionServiceI weixinVoteOptionService;

	@Autowired
	private SystemService systemService;

	@Autowired
	private WeixinVipMemberServiceI weixinVipMemberService;

	@Autowired
	private VoteRecordServiceI voteRecordService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "weixinVote" })
	public ModelAndView weixinVote(HttpServletRequest request) {
		return new ModelAndView("weixin/idea/vote/weixinVoteList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinVoteEntity weixinVote,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinVoteEntity.class, dataGrid);

		HqlGenerateUtil.installHql(cq, weixinVote, request.getParameterMap());
		try {
			cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.weixinVoteService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "goAddVoteOption" })
	public ModelAndView goAddVoteOption(WeixinVoteEntity weixinVote,
			HttpServletRequest request) {
		if (!StringUtil.isEmpty(weixinVote.getId())) {
			List voteOptionList = this.weixinVoteOptionService.findByProperty(
					WeixinVoteOptionEntity.class, "weixinVote.id",
					weixinVote.getId());
			request.setAttribute("voteOptionList", voteOptionList);
		}
		return new ModelAndView("weixin/idea/vote/weixinVoteOption-add");
	}

	@RequestMapping(params = { "deploy" })
	@ResponseBody
	public AjaxJson deploy(WeixinVoteEntity weixinVote,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		String accountid = ResourceUtil.getShangJiaAccountId();

		if ("1".equals(weixinVote.getStatement())) {
			String sql = " UPDATE weixin_vote set statement = 2 where statement = 1 AND accountid= '"
					+ accountid + "'";
			this.weixinVoteService.updateBySqlString(sql);
		}

		String sql2 = "UPDATE weixin_vote set statement ='"
				+ weixinVote.getStatement() + "' where id = '"
				+ weixinVote.getId() + "'";
		this.weixinVoteService.updateBySqlString(sql2);
		j.setSuccess(true);
		j.setMsg("操作成功！");
		return j;
	}

	@RequestMapping(params = { "goVote" })
	public ModelAndView goVote(WeixinVoteEntity weixinVote,
			HttpServletRequest request) {
		String accountid = request.getParameter("accountid");
		String openid = request.getParameter("openid");
		if (StringUtil.isEmpty(accountid)) {
			accountid = ResourceUtil.getQianTaiAccountId();
		}
		if (!StringUtil.isEmpty(openid)) {
			request.setAttribute("openid", openid);
		}
		List weixinVotes = this.weixinVoteService
				.findByQueryString(" FROM WeixinVoteEntity v WHERE v.accountid = '"
						+ accountid + "' AND statement = '1' ");
		if (weixinVotes.size() != 0) {
			request.setAttribute("weixinVote", weixinVotes.get(0));
			List voteoptionlist = this.weixinVoteOptionService.findByProperty(
					WeixinVoteOptionEntity.class, "weixinVote.id",
					((WeixinVoteEntity) weixinVotes.get(0)).getId());
			request.setAttribute("voteoptionlist", voteoptionlist);
		}
		request.setAttribute("accountid", accountid);
		return new ModelAndView("weixin/idea/vote/front/vote");
	}

	@RequestMapping(params = { "doVote" })
	@ResponseBody
	public AjaxJson doVote(WeixinVoteEntity weixinVote,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();

		if (this.voteRecordService.checkVote(ResourceUtil.getSessionUserName()
				.getId(), weixinVote.getId())) {
			j.setSuccess(false);
			j.setMsg("您已经投过票了！谢谢您的参与。");
			return j;
		}

		weixinVote = (WeixinVoteEntity) this.weixinVoteService.get(
				WeixinVoteEntity.class, weixinVote.getId());

		weixinVote.setVoteCount(Integer.valueOf(weixinVote.getVoteCount()
				.intValue() + 1));

		String optid = request.getParameter("optionid");
		WeixinVoteOptionEntity weixinVoteOption = (WeixinVoteOptionEntity) this.weixinVoteOptionService
				.get(WeixinVoteOptionEntity.class, optid);

		weixinVoteOption.setCount(Integer.valueOf(weixinVoteOption.getCount()
				.intValue() + 1));

		if (weixinVote.getVoteCount().intValue() != 0) {
			String scale = String
					.format("%.2f", new Object[] { Double
							.valueOf(weixinVoteOption.getCount().intValue()
									/ weixinVote.getVoteCount().intValue()) });
			weixinVoteOption
					.setScale(Double.valueOf(Double.parseDouble(scale)));
		}
		this.weixinVoteOptionService.updateEntitie(weixinVoteOption);

		if (ResourceUtil.getSessionUserName() != null) {
			this.weixinVipMemberService.updateMemberIntegral(ResourceUtil
					.getSessionUserName().getId(), request
					.getParameter("accountid"), weixinVote.getIntegral());
		}

		VoteRecordEntity voteRecordEntity = new VoteRecordEntity();
		voteRecordEntity.setAccountid(weixinVote.getAccountid());
		voteRecordEntity.setOpenid(request.getParameter("openid"));
		voteRecordEntity.setUserid(ResourceUtil.getSessionUserName().getId());
		voteRecordEntity.setVoteid(weixinVote.getId());
		voteRecordEntity.setOptionid(weixinVoteOption.getId());
		this.voteRecordService.save(voteRecordEntity);
		j.setSuccess(true);
		j.setMsg("投票成功");
		return j;
	}

	@RequestMapping(params = { "goVoteCalculate" })
	public ModelAndView goVoteCalculate(WeixinVoteEntity weixinVote,
			HttpServletRequest request) {
		String accountid = request.getParameter("accountid");
		if (StringUtil.isEmpty(accountid)) {
			accountid = ResourceUtil.getQianTaiAccountId();
		}
		weixinVote = (WeixinVoteEntity) this.weixinVoteService.get(
				WeixinVoteEntity.class, weixinVote.getId());
		request.setAttribute("weixinVote", weixinVote);
		request.setAttribute("accountid", accountid);
		return new ModelAndView("weixin/idea/vote/front/vote-calculate");
	}

	@RequestMapping(params = { "getCalculateData" })
	@ResponseBody
	public AjaxJson getCalculateData(WeixinVoteEntity weixinVote,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (!StringUtil.isEmpty(weixinVote.getId())) {
			List optionlist = this.weixinVoteOptionService.findByProperty(
					WeixinVoteOptionEntity.class, "weixinVote.id",
					weixinVote.getId());
			j.setObj(optionlist);
		}
		return j;
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WeixinVoteEntity weixinVote,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinVote = (WeixinVoteEntity) this.systemService.getEntity(
				WeixinVoteEntity.class, weixinVote.getId());
		this.message = "微投票删除成功";
		try {
			this.weixinVoteService.delete(weixinVote);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微投票删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微投票删除成功";
		try {
			for (String id : ids.split(",")) {
				WeixinVoteEntity weixinVote = (WeixinVoteEntity) this.systemService
						.getEntity(WeixinVoteEntity.class, id);

				this.weixinVoteService.delete(weixinVote);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL,
						Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微投票删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WeixinVoteEntity weixinVote,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微投票添加成功";
		try {
			this.weixinVoteService.save(weixinVote);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微投票添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WeixinVoteEntity weixinVote,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "微投票更新成功";
		WeixinVoteEntity t = (WeixinVoteEntity) this.weixinVoteService.get(
				WeixinVoteEntity.class, weixinVote.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinVote, t);
			this.weixinVoteService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "微投票更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(WeixinVoteEntity weixinVote,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinVote.getId())) {
			weixinVote = (WeixinVoteEntity) this.weixinVoteService.getEntity(
					WeixinVoteEntity.class, weixinVote.getId());
			req.setAttribute("weixinVotePage", weixinVote);
		}
		return new ModelAndView("weixin/idea/vote/weixinVote-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WeixinVoteEntity weixinVote,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinVote.getId())) {
			weixinVote = (WeixinVoteEntity) this.weixinVoteService.getEntity(
					WeixinVoteEntity.class, weixinVote.getId());
			req.setAttribute("weixinVotePage", weixinVote);
		}
		return new ModelAndView("weixin/idea/vote/weixinVote-add");
	}

	@RequestMapping(params = { "upload" })
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin/idea/vote/weixinVoteUpload");
	}

	@RequestMapping(params = { "exportXls" })
	public void exportXls(WeixinVoteEntity weixinVote,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微投票";

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
			CriteriaQuery cq = new CriteriaQuery(WeixinVoteEntity.class,
					dataGrid);
			HqlGenerateUtil.installHql(cq, weixinVote,
					request.getParameterMap());

			List weixinVotes = this.weixinVoteService.getListByCriteriaQuery(
					cq, Boolean.valueOf(false));
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微投票列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinVoteEntity.class, weixinVotes);

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
	public void exportXlsByT(WeixinVoteEntity weixinVote,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微投票";

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
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("微投票列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinVoteEntity.class, null);

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
				List<WeixinVoteEntity> listWeixinVoteEntitys = (List) ExcelImportUtil
						.importExcelByIs(file.getInputStream(),
								WeixinVoteEntity.class, params);

				for (WeixinVoteEntity weixinVote : listWeixinVoteEntitys) {
					this.weixinVoteService.save(weixinVote);
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