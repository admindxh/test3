package weixin.cms.controller;

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
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.cms.entity.WeixinLeaveMsgEntity;
import weixin.cms.entity.WeixinLeaveMsgReplyEntity;
import weixin.cms.service.WeixinLeaveMsgServiceI;

@Scope("prototype")
@Controller
@RequestMapping({"/weixinLeaveMsgController"})
public class WeixinLeaveMsgController extends BaseController
{
  private static final Logger logger = Logger.getLogger(WeixinLeaveMsgController.class);

  @Autowired
  private WeixinLeaveMsgServiceI weixinLeaveMsgService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinLeaveMsg"})
  public ModelAndView weixinLeaveMsg(HttpServletRequest request)
  {
    return new ModelAndView("weixin/cms/leavemsg/weixinLeaveMsgList");
  }

  @RequestMapping(params={"goReplyMsg"})
  public ModelAndView goReplyMsg(WeixinLeaveMsgEntity weixinLeaveMsg, HttpServletRequest request)
  {
    if (StringUtil.isNotEmpty(weixinLeaveMsg.getId())) {
      weixinLeaveMsg = (WeixinLeaveMsgEntity)this.weixinLeaveMsgService.getEntity(WeixinLeaveMsgEntity.class, weixinLeaveMsg.getId());
      request.setAttribute("weixinLeaveMsgPage", weixinLeaveMsg);
      request.setAttribute("id", weixinLeaveMsg.getId());
    }
    return new ModelAndView("weixin/cms/leavemsg/replyMsg");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinLeaveMsgEntity weixinLeaveMsg, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinLeaveMsgEntity.class, dataGrid);
    cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
    cq.addOrder("createDate", SortDirection.desc);

    HqlGenerateUtil.installHql(cq, weixinLeaveMsg, request.getParameterMap());
    this.weixinLeaveMsgService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(WeixinLeaveMsgEntity weixinLeaveMsg, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinLeaveMsg = (WeixinLeaveMsgEntity)this.systemService.getEntity(WeixinLeaveMsgEntity.class, weixinLeaveMsg.getId());
    this.message = "留言信息删除成功";
    this.weixinLeaveMsgService.delete(weixinLeaveMsg);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(WeixinLeaveMsgEntity weixinLeaveMsg, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(weixinLeaveMsg.getId())) {
      this.message = "留言信息更新成功";
      WeixinLeaveMsgEntity t = (WeixinLeaveMsgEntity)this.weixinLeaveMsgService.get(WeixinLeaveMsgEntity.class, weixinLeaveMsg.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(weixinLeaveMsg, t);
        this.weixinLeaveMsgService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "留言信息更新失败";
      }
    } else {
      this.message = "留言信息添加成功";
      String accountId = ResourceUtil.getShangJiaAccountId();
      weixinLeaveMsg.setAccountid(accountId);
      this.weixinLeaveMsgService.save(weixinLeaveMsg);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(WeixinLeaveMsgEntity weixinLeaveMsg, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinLeaveMsg.getId())) {
      weixinLeaveMsg = (WeixinLeaveMsgEntity)this.weixinLeaveMsgService.getEntity(WeixinLeaveMsgEntity.class, weixinLeaveMsg.getId());
      req.setAttribute("weixinLeaveMsgPage", weixinLeaveMsg);
    }
    return new ModelAndView("weixin/cms/leavemsg/weixinLeaveMsg");
  }
  @RequestMapping(params={"replyMsg"})
  @ResponseBody
  public AjaxJson replyMsg(WeixinLeaveMsgReplyEntity weixinLeaveMsgReplyEntity, HttpServletRequest request) {
    AjaxJson j = new AjaxJson();
    this.message = "回复留言成功";
    this.weixinLeaveMsgService.save(weixinLeaveMsgReplyEntity);
    this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"datagridReply"})
  public void datagridReply(WeixinLeaveMsgReplyEntity weixinLeaveMsgReply, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinLeaveMsgReplyEntity.class, dataGrid);
    cq.eq("msgId", weixinLeaveMsgReply.getMsgId());
    cq.addOrder("createDate", SortDirection.desc);

    HqlGenerateUtil.installHql(cq, weixinLeaveMsgReply, request.getParameterMap());
    this.weixinLeaveMsgService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"delReply"})
  @ResponseBody
  public AjaxJson delReply(WeixinLeaveMsgReplyEntity weixinLeaveMsgReply, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinLeaveMsgReply = (WeixinLeaveMsgReplyEntity)this.systemService.getEntity(WeixinLeaveMsgReplyEntity.class, weixinLeaveMsgReply.getId());
    this.message = "留言回复删除成功";
    this.weixinLeaveMsgService.delete(weixinLeaveMsgReply);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }
}