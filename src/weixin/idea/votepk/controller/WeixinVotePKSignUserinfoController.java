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
import weixin.idea.votepk.entity.WeixinVotePKSignUserinfo;
import weixin.idea.votepk.service.WeixinVotePKSignUserinfoService;

@Scope("prototype")
@Controller
@RequestMapping({"/weixinVotePKSignUserinfoController"})
public class WeixinVotePKSignUserinfoController
{
  private static final Logger logger = Logger.getLogger(WeixinVotePKSignUserinfoController.class);

  @Autowired
  private WeixinVotePKSignUserinfoService weixinVotePKSignUserinfoService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinVotePKSignUserinfo"})
  public ModelAndView weixinVotePKSignUserinfo(HttpServletRequest request) {
    return new ModelAndView("weixin/idea/votepk/weixinVotePKSignUserinfoList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinVotePKSignUserinfo weixinVotePKSignUserinfo, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
    CriteriaQuery cq = new CriteriaQuery(WeixinVotePKSignUserinfo.class, dataGrid);

    HqlGenerateUtil.installHql(cq, weixinVotePKSignUserinfo, request.getParameterMap());
    try {
      cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
    }
    catch (Exception e) {
      throw new BusinessException(e.getMessage());
    }
    cq.add();
    this.weixinVotePKSignUserinfoService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }
}