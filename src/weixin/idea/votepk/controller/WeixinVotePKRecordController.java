package weixin.idea.votepk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import weixin.idea.votepk.entity.WeixinVotePKRecord;
import weixin.idea.votepk.service.WeixinVotePKRecordService;

@Scope("prototype")
@Controller
@RequestMapping({"/weixinVotePKRecordController"})
public class WeixinVotePKRecordController
{
  private static final Logger logger = Logger.getLogger(WeixinVotePKRecordController.class);

  @Autowired
  private WeixinVotePKRecordService weixinVotePKRecordService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinVotePKRecord"})
  public ModelAndView weixinVotePKRecord(HttpServletRequest request) {
    return new ModelAndView("weixin/idea/votepk/weixinVotePKRecordList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinVotePKRecord weixinVotePKRecord, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
    CriteriaQuery cq = new CriteriaQuery(WeixinVotePKRecord.class, dataGrid);

    HqlGenerateUtil.installHql(cq, weixinVotePKRecord, request.getParameterMap());
    try {
      cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
      cq.eq("subscribe", "1");
    }
    catch (Exception e) {
      throw new BusinessException(e.getMessage());
    }
    cq.add();
    this.weixinVotePKRecordService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }
}