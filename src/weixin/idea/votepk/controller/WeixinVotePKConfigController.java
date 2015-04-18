package weixin.idea.votepk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.exception.BusinessException;
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
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.idea.votepk.entity.WeixinVotePKConfig;
import weixin.idea.votepk.service.WeixinVotePKConfigService;

@Scope("prototype")
@Controller
@RequestMapping({"/weixinVotePKConfigController"})
public class WeixinVotePKConfigController
{
  private static final Logger logger = Logger.getLogger(WeixinVotePKConfigController.class);

  @Autowired
  private WeixinVotePKConfigService weixinVotePKConfigService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinVotePKConfig"})
  public ModelAndView weixinVotePKConfigPK(HttpServletRequest request)
  {
    return new ModelAndView("weixin/idea/votepk/weixinVotePKConfigList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinVotePKConfig weixinVotePKConfig, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinVotePKConfig.class, dataGrid);

    HqlGenerateUtil.installHql(cq, weixinVotePKConfig, request.getParameterMap());
    try {
      cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
    }
    catch (Exception e) {
      throw new BusinessException(e.getMessage());
    }
    cq.add();
    this.weixinVotePKConfigService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }
  @RequestMapping(params={"doDel"})
  @ResponseBody
  public AjaxJson doDel(WeixinVotePKConfig weixinVotePKConfig, HttpServletRequest request) { AjaxJson j = new AjaxJson();
    weixinVotePKConfig = (WeixinVotePKConfig)this.weixinVotePKConfigService.getEntity(WeixinVotePKConfig.class, weixinVotePKConfig.getId());
    this.message = "投票活动参数删除成功";
    try {
      this.weixinVotePKConfigService.delete(weixinVotePKConfig);
      this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
    } catch (Exception e) {
      e.printStackTrace();
      this.message = "投票活动参数删除失败";
      throw new BusinessException(e.getMessage());
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"doBatchDel"})
  @ResponseBody
  public AjaxJson doBatchDel(String ids, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    this.message = "投票活动参数删除成功";
    try {
      for (String id : ids.split(",")) {
        WeixinVotePKConfig weixinVotePKConfig = (WeixinVotePKConfig)this.systemService.getEntity(WeixinVotePKConfig.class, id);

        this.weixinVotePKConfigService.delete(weixinVotePKConfig);
        this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
      }
    } catch (Exception e) {
      e.printStackTrace();
      this.message = "投票活动参数删除失败";
      throw new BusinessException(e.getMessage());
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"doAdd"})
  @ResponseBody
  public AjaxJson doAdd(WeixinVotePKConfig weixinVotePKConfig, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    this.message = "投票活动参数添加成功";
    try {
      if (!StringUtil.isEmpty(weixinVotePKConfig.getId()))
        this.weixinVotePKConfigService.updateEntitie(weixinVotePKConfig);
      else {
        this.weixinVotePKConfigService.save(weixinVotePKConfig);
      }
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    } catch (Exception e) {
      e.printStackTrace();
      this.message = "投票活动参数添加失败";
      throw new BusinessException(e.getMessage());
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"doUpdate"})
  @ResponseBody
  public AjaxJson doUpdate(WeixinVotePKConfig weixinVotePKConfig, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    this.message = "投票活动参数更新成功";
    WeixinVotePKConfig t = (WeixinVotePKConfig)this.weixinVotePKConfigService.get(WeixinVotePKConfig.class, weixinVotePKConfig.getId());
    try {
      MyBeanUtils.copyBeanNotNull2Bean(weixinVotePKConfig, t);
      this.weixinVotePKConfigService.saveOrUpdate(t);
      this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
    } catch (Exception e) {
      e.printStackTrace();
      this.message = "投票活动参数更新失败";
      throw new BusinessException(e.getMessage());
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"goAdd"})
  public ModelAndView goAdd(WeixinVotePKConfig weixinVotePKConfig, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinVotePKConfig.getId())) {
      weixinVotePKConfig = (WeixinVotePKConfig)this.weixinVotePKConfigService.getEntity(WeixinVotePKConfig.class, weixinVotePKConfig.getId());
      req.setAttribute("weixinVotePKConfigPage", weixinVotePKConfig);
    }
    return new ModelAndView("weixin/idea/votepk/weixinVotePKConfig-add");
  }

  @RequestMapping(params={"goUpdate"})
  public ModelAndView goUpdate(WeixinVotePKConfig weixinVotePKConfig, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinVotePKConfig.getId())) {
      weixinVotePKConfig = (WeixinVotePKConfig)this.weixinVotePKConfigService.getEntity(WeixinVotePKConfig.class, weixinVotePKConfig.getId());
      req.setAttribute("weixinVotePKConfigPage", weixinVotePKConfig);
    }
    return new ModelAndView("weixin/idea/votepk/weixinVotePKConfig-add");
  }
}