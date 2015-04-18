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
import org.jeecgframework.core.util.LogUtil;
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
import weixin.idea.huodong.entity.PrizeRecordEntity;
import weixin.idea.huodong.service.PrizeRecordServiceI;

@Controller
@RequestMapping({"/prizeRecordController"})
public class PrizeRecordController extends BaseController
{
  private static final Logger logger = Logger.getLogger(PrizeRecordController.class);

  @Autowired
  private PrizeRecordServiceI prizeRecordService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"goPrizeRecord"})
  public ModelAndView goPrizeRecord(HttpServletRequest request)
  {
    String hdId = request.getParameter("hdId");
    request.setAttribute("hdId", hdId);
    return new ModelAndView("weixin/idea/huodong/prizerecord/prizeRecordList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(PrizeRecordEntity prizeRecord, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    String hdid = request.getParameter("hdid");
    LogUtil.info(".....openwin...." + hdid);
    CriteriaQuery cq = new CriteriaQuery(PrizeRecordEntity.class, dataGrid);
    cq.eq("hdid", hdid);
    cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
    cq.add();

    HqlGenerateUtil.installHql(cq, prizeRecord, request.getParameterMap());
    this.prizeRecordService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(PrizeRecordEntity prizeRecord, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    prizeRecord = (PrizeRecordEntity)this.systemService.getEntity(PrizeRecordEntity.class, prizeRecord.getId());
    this.message = "中奖纪录删除成功";
    this.prizeRecordService.delete(prizeRecord);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(PrizeRecordEntity prizeRecord, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(prizeRecord.getId())) {
      this.message = "中奖纪录更新成功";
      PrizeRecordEntity t = (PrizeRecordEntity)this.prizeRecordService.get(PrizeRecordEntity.class, prizeRecord.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(prizeRecord, t);
        this.prizeRecordService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "中奖纪录更新失败";
      }
    } else {
      this.message = "中奖纪录添加成功";
      this.prizeRecordService.save(prizeRecord);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addOrUpdate"})
  public ModelAndView addOrUpdate(PrizeRecordEntity prizeRecord, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(prizeRecord.getId())) {
      prizeRecord = (PrizeRecordEntity)this.prizeRecordService.getEntity(PrizeRecordEntity.class, prizeRecord.getId());
      req.setAttribute("prizeRecordPage", prizeRecord);
    }
    return new ModelAndView("weixin/idea/huodong/prizerecord/prizeRecord");
  }
}