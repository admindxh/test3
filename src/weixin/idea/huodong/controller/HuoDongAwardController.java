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
import weixin.idea.huodong.entity.HuoDongAwardEntity;
import weixin.idea.huodong.service.HuoDongAwardServiceI;

@Scope("prototype")
@Controller
@RequestMapping({"/huoDongAwardController"})
public class HuoDongAwardController extends BaseController
{
  private static final Logger logger = Logger.getLogger(HuoDongAwardController.class);

  @Autowired
  private HuoDongAwardServiceI huoDongAwardService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"huoDongAward"})
  public ModelAndView huoDongAward(HttpServletRequest request)
  {
    return new ModelAndView("weixin/idea/huodong/huodong/huoDongAwardList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(HuoDongAwardEntity huoDongAward, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(HuoDongAwardEntity.class, dataGrid);

    HqlGenerateUtil.installHql(cq, huoDongAward, request.getParameterMap());
    this.huoDongAwardService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(HuoDongAwardEntity huoDongAward, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    huoDongAward = (HuoDongAwardEntity)this.systemService.getEntity(HuoDongAwardEntity.class, huoDongAward.getId());
    this.message = "活动和关系表删除成功";
    this.huoDongAwardService.delete(huoDongAward);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(HuoDongAwardEntity huoDongAward, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(huoDongAward.getId())) {
      this.message = "活动和关系表更新成功";
      HuoDongAwardEntity t = (HuoDongAwardEntity)this.huoDongAwardService.get(HuoDongAwardEntity.class, huoDongAward.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(huoDongAward, t);
        this.huoDongAwardService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "活动和关系表更新失败";
      }
    } else {
      this.message = "活动和关系表添加成功";
      this.huoDongAwardService.save(huoDongAward);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(HuoDongAwardEntity huoDongAward, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(huoDongAward.getId())) {
      huoDongAward = (HuoDongAwardEntity)this.huoDongAwardService.getEntity(HuoDongAwardEntity.class, huoDongAward.getId());
      req.setAttribute("huoDongAwardPage", huoDongAward);
    }
    return new ModelAndView("weixin/idea/huodong/huodong/huoDongAward");
  }
}