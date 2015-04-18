package weixin.cms.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.cms.entity.WeixinLeaveMsgEntity;
import weixin.cms.service.WeixinLeaveMsgServiceI;
import weixin.util.DateUtils;

@Scope("prototype")
@Controller
@RequestMapping({"/cmsFrontController"})
public class CmsFrontController extends BaseController
{
  private static final Logger logger = Logger.getLogger(CmsFrontController.class);

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

  @RequestMapping(params={"leaveMsg"})
  @ResponseBody
  public AjaxJson leaveMsg(WeixinLeaveMsgEntity weixinLeaveMsg, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    String id = null;
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
      weixinLeaveMsg.setCreateDate(new Date());
      id = (String)this.weixinLeaveMsgService.save(weixinLeaveMsg);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    Map att = new HashMap();
    att.put("id", id);
    att.put("nickName", weixinLeaveMsg.getNickName());
    att.put("content", weixinLeaveMsg.getContent());
    att.put("createDate", DateUtils.formatTime(weixinLeaveMsg.getCreateDate()));
    j.setAttributes(att);
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
}