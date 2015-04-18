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
import weixin.idea.huodong.entity.WeixinAwardsAwardEntity;
import weixin.idea.huodong.service.WeixinAwardsAwardServiceI;

@Scope("prototype")
@Controller
@RequestMapping({"/weixinAwardsAwardController"})
public class WeixinAwardsAwardController extends BaseController
{
  private static final Logger logger = Logger.getLogger(WeixinAwardsAwardController.class);

  @Autowired
  private WeixinAwardsAwardServiceI weixinAwardsAwardService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinAwardsAward"})
  public ModelAndView weixinAwardsAward(HttpServletRequest request)
  {
    return new ModelAndView("com/weixin/awards/weixinAwardsAwardList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinAwardsAwardEntity weixinAwardsAward, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinAwardsAwardEntity.class, dataGrid);

    HqlGenerateUtil.installHql(cq, weixinAwardsAward, request.getParameterMap());
    this.weixinAwardsAwardService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(WeixinAwardsAwardEntity weixinAwardsAward, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinAwardsAward = (WeixinAwardsAwardEntity)this.systemService.getEntity(WeixinAwardsAwardEntity.class, weixinAwardsAward.getId());
    this.message = "奖项表删除成功";
    this.weixinAwardsAwardService.delete(weixinAwardsAward);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(WeixinAwardsAwardEntity weixinAwardsAward, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(weixinAwardsAward.getId())) {
      this.message = "奖项表更新成功";
      WeixinAwardsAwardEntity t = (WeixinAwardsAwardEntity)this.weixinAwardsAwardService.get(WeixinAwardsAwardEntity.class, weixinAwardsAward.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(weixinAwardsAward, t);
        this.weixinAwardsAwardService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "奖项表更新失败";
      }
    } else {
      this.message = "奖项表添加成功";
      this.weixinAwardsAwardService.save(weixinAwardsAward);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(WeixinAwardsAwardEntity weixinAwardsAward, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinAwardsAward.getId())) {
      weixinAwardsAward = (WeixinAwardsAwardEntity)this.weixinAwardsAwardService.getEntity(WeixinAwardsAwardEntity.class, weixinAwardsAward.getId());
      req.setAttribute("weixinAwardsAwardPage", weixinAwardsAward);
    }
    return new ModelAndView("com/weixin/awards/weixinAwardsAward");
  }
}