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
import weixin.idea.huodong.entity.AwardsLevelEntity;
import weixin.idea.huodong.service.AwardsLevelServiceI;

@Scope("prototype")
@Controller
@RequestMapping({"/awardsLevelController"})
public class AwardsLevelController extends BaseController
{
  private static final Logger logger = Logger.getLogger(AwardsLevelController.class);

  @Autowired
  private AwardsLevelServiceI awardsLevelService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"awardsLevel"})
  public ModelAndView awardsLevel(HttpServletRequest request)
  {
    return new ModelAndView("weixin/idea/huodong/huodong/awardsLevelList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(AwardsLevelEntity awardsLevel, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(AwardsLevelEntity.class, dataGrid);

    HqlGenerateUtil.installHql(cq, awardsLevel, request.getParameterMap());
    this.awardsLevelService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(AwardsLevelEntity awardsLevel, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    awardsLevel = (AwardsLevelEntity)this.systemService.getEntity(AwardsLevelEntity.class, awardsLevel.getId());
    this.message = "奖项表删除成功";
    this.awardsLevelService.delete(awardsLevel);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(AwardsLevelEntity awardsLevel, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(awardsLevel.getId())) {
      this.message = "奖项表更新成功";
      AwardsLevelEntity t = (AwardsLevelEntity)this.awardsLevelService.get(AwardsLevelEntity.class, awardsLevel.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(awardsLevel, t);
        this.awardsLevelService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "奖项表更新失败";
      }
    } else {
      this.message = "奖项表添加成功";
      this.awardsLevelService.save(awardsLevel);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(AwardsLevelEntity awardsLevel, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(awardsLevel.getId())) {
      awardsLevel = (AwardsLevelEntity)this.awardsLevelService.getEntity(AwardsLevelEntity.class, awardsLevel.getId());
      req.setAttribute("awardsLevelPage", awardsLevel);
    }
    return new ModelAndView("weixin/idea/huodong/huodong/awardsLevel");
  }
}