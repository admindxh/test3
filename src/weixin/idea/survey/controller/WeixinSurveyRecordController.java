package weixin.idea.survey.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.BrowserUtils;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.web.system.pojo.base.TSBaseUser;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.jeecgframework.web.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import weixin.idea.survey.entity.WeixinSurveyEntity;
import weixin.idea.survey.entity.WeixinSurveyMainEntity;
import weixin.idea.survey.entity.WeixinSurveyRecordEntity;
import weixin.idea.survey.entity.WeixinSurveyRecordExportView;
import weixin.idea.survey.service.WeixinSurveyMainServiceI;
import weixin.idea.survey.service.WeixinSurveyRecordServiceI;
import weixin.idea.survey.service.WeixinSurveyServiceI;

@Scope("prototype")
@Controller
@RequestMapping({ "/weixinSurveyRecordController" })
public class WeixinSurveyRecordController extends BaseController {

	@Autowired
	private WeixinSurveyRecordServiceI weixinSurveyRecordService;

	@Autowired
	private WeixinSurveyMainServiceI weixinSurveyMainService;

	@Autowired
	private WeixinSurveyServiceI weixinSurveyService;

	@Autowired
	private UserService userService;

	@RequestMapping(params = { "exportXls" })
	public void exportXls(WeixinSurveyRecordEntity weixinSurveyRecord,
			HttpServletRequest request, HttpServletResponse response) {
		CriteriaQuery cq = new CriteriaQuery(WeixinSurveyRecordEntity.class);

		HqlGenerateUtil.installHql(cq, weixinSurveyRecord,
				request.getParameterMap());
		try {
			cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();

		List<WeixinSurveyRecordEntity> recordlist = this.weixinSurveyRecordService
				.getListByCriteriaQuery(cq, Boolean.valueOf(false));

		List viewlist = new ArrayList();

		List<WeixinSurveyMainEntity> weixinSurveyMainList = this.weixinSurveyMainService
				.findByProperty(WeixinSurveyMainEntity.class, "accountid",
						ResourceUtil.getShangJiaAccountId());

		List<WeixinSurveyEntity> surveylist = this.weixinSurveyService.findByProperty(
				WeixinSurveyEntity.class, "accountid",
				ResourceUtil.getShangJiaAccountId());

		List<TSBaseUser> userlist = this.userService.loadAll(TSBaseUser.class);
		for (WeixinSurveyRecordEntity r : recordlist) {
			WeixinSurveyRecordExportView exportView = new WeixinSurveyRecordExportView();
			exportView.setMainTitle("已删除问卷。");
			exportView.setAnswers(r.getAnswer());
			exportView.setSurveyDate(r.getCreateDate());
			exportView.setSurveyTitle("已删除题目");
			exportView.setUsername("匿名用户");

			for (WeixinSurveyMainEntity main : weixinSurveyMainList) {
				if (r.getMainid().equals(main.getId())) {
					exportView.setMainTitle(main.getSurveyTitle());
					break;
				}
			}
			for (WeixinSurveyEntity survey : surveylist) {
				if (r.getSurveyid().equals(survey.getId())) {
					exportView.setSurveyTitle(survey.getSurveyTitle());
					break;
				}
			}
			for (TSBaseUser u : userlist) {
				if ((r.getSurveyid().equals(u.getId()))
						&& (!StringUtil.isEmpty(u.getUserName()))) {
					exportView.setUsername(u.getUserName());
					break;
				}
			}
			viewlist.add(exportView);
		}
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "微调研回答记录 ";

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
					"导出信息"), WeixinSurveyRecordExportView.class, viewlist);

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
}