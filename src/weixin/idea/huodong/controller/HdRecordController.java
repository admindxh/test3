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
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.idea.huodong.entity.HdRecordEntity;
import weixin.idea.huodong.service.HdRecordServiceI;

@Controller
@RequestMapping({"/hdRecordController"})
public class HdRecordController extends BaseController
{
  private static final Logger logger = Logger.getLogger(HdRecordController.class);

  @Autowired
  private HdRecordServiceI hdRecordService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"hdRecord"})
  public ModelAndView hdRecord(HttpServletRequest request)
  {
    String hdId = request.getParameter("hdId");
    request.setAttribute("hdId", hdId);
    return new ModelAndView("weixin/idea/huodong/hdrecord/hdRecordList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(HdRecordEntity hdRecord, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    String hdId = request.getParameter("hdId");
    CriteriaQuery cq = new CriteriaQuery(HdRecordEntity.class, dataGrid);
    cq.eq("hdid", hdId);
    cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
    cq.add();

    HqlGenerateUtil.installHql(cq, hdRecord, request.getParameterMap());
    this.hdRecordService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(HdRecordEntity hdRecord, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    hdRecord = (HdRecordEntity)this.systemService.getEntity(HdRecordEntity.class, hdRecord.getId());
    this.message = "参加活动记录删除成功";
    this.hdRecordService.delete(hdRecord);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(HdRecordEntity hdRecord, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(hdRecord.getId())) {
      this.message = "参加活动记录更新成功";
      HdRecordEntity t = (HdRecordEntity)this.hdRecordService.get(HdRecordEntity.class, hdRecord.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(hdRecord, t);
        this.hdRecordService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "参加活动记录更新失败";
      }
    } else {
      this.message = "参加活动记录添加成功";
      this.hdRecordService.save(hdRecord);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorUpdate"})
  public ModelAndView addorUpdate(HdRecordEntity hdRecord, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(hdRecord.getId())) {
      hdRecord = (HdRecordEntity)this.hdRecordService.getEntity(HdRecordEntity.class, hdRecord.getId());
      req.setAttribute("hdRecordPage", hdRecord);
    }
    return new ModelAndView("weixin/idea/huodong/hdrecord/hdRecord");
  }
}