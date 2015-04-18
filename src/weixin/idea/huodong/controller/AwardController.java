package weixin.idea.huodong.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.idea.huodong.entity.AwardEntity;
import weixin.idea.huodong.service.AwardServiceI;

@Scope("prototype")
@Controller
@RequestMapping({ "/awardController" })
public class AwardController extends BaseController {
	private static final Logger logger = Logger.getLogger(AwardController.class);

	@Autowired
	private AwardServiceI awardService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "award" })
	public ModelAndView award(HttpServletRequest request) {
		return new ModelAndView("weixin/idea/huodong/huodong/awardList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(AwardEntity award, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(AwardEntity.class, dataGrid);

		HqlGenerateUtil.installHql(cq, award, request.getParameterMap());
		this.awardService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "del" })
	@ResponseBody
	public AjaxJson del(AwardEntity award, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		award = (AwardEntity) this.systemService.getEntity(AwardEntity.class, award.getId());
		this.message = "奖品表删除成功";
		this.awardService.delete(award);
		this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "save" })
	@ResponseBody
	public AjaxJson save(AwardEntity award, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtil.isNotEmpty(award.getId())) {
			this.message = "奖品表更新成功";
			AwardEntity t = (AwardEntity) this.awardService.get(AwardEntity.class, award.getId());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(award, t);
				this.awardService.saveOrUpdate(t);
				this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				this.message = "奖品表更新失败";
			}
		} else {
			this.message = "奖品表添加成功";
			this.awardService.save(award);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "addorupdate" })
	public ModelAndView addorupdate(AwardEntity award, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(award.getId())) {
			award = (AwardEntity) this.awardService.getEntity(AwardEntity.class, award.getId());
			req.setAttribute("awardPage", award);
		}
		return new ModelAndView("weixin/idea/huodong/huodong/award");
	}
}