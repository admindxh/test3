package weixin.vip.controller;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.common.UploadFile;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.MyClassLoader;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSDocument;
import org.jeecgframework.web.system.pojo.base.TSType;
import org.jeecgframework.web.system.pojo.base.TSTypegroup;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import weixin.util.DateUtils;
import weixin.vip.common.WeixinVipEnum;
import weixin.vip.entity.WeixinVipInfoEntity;
import weixin.vip.service.WeixinVipInfoServiceI;
import weixin.vip.service.WeixinVipMemberServiceI;

@Controller
@RequestMapping({"/weixinVipInfoController"})
public class WeixinVipInfoController extends BaseController
{
  private static final Logger logger = Logger.getLogger(WeixinVipInfoController.class);

  @Autowired
  private WeixinVipInfoServiceI weixinVipInfoService;

  @Autowired
  private WeixinVipMemberServiceI weixinVipMemberService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinVipInfo"})
  public ModelAndView weixinVipInfo(HttpServletRequest request)
  {
    return new ModelAndView("weixin/vip/weixinVipInfoList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinVipInfoEntity weixinVipInfo, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinVipInfoEntity.class, dataGrid);
    cq.eq("accountid", ResourceUtil.getShangJiaAccountId());

    HqlGenerateUtil.installHql(cq, weixinVipInfo, request.getParameterMap());
    this.weixinVipInfoService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(WeixinVipInfoEntity weixinVipInfo, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinVipInfo = (WeixinVipInfoEntity)this.systemService.getEntity(WeixinVipInfoEntity.class, weixinVipInfo.getId());
    this.message = "微信会员卡表删除成功";
    this.weixinVipInfoService.delete(weixinVipInfo);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(WeixinVipInfoEntity weixinVipInfo, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(weixinVipInfo.getId())) {
      this.message = "微信会员卡表更新成功";
      WeixinVipInfoEntity t = (WeixinVipInfoEntity)this.weixinVipInfoService.get(WeixinVipInfoEntity.class, weixinVipInfo.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(weixinVipInfo, t);
        this.weixinVipInfoService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "微信会员卡表更新失败";
      }
    } else {
      this.message = "微信会员卡表添加成功";
      this.weixinVipInfoService.save(weixinVipInfo);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(WeixinVipInfoEntity weixinVipInfo, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinVipInfo.getId())) {
      weixinVipInfo = (WeixinVipInfoEntity)this.weixinVipInfoService.getEntity(WeixinVipInfoEntity.class, weixinVipInfo.getId());
      req.setAttribute("weixinVipInfoPage", weixinVipInfo);
    }
    req.setAttribute("LEVEL", WeixinVipEnum.values());
    return new ModelAndView("weixin/vip/weixinVipInfo");
  }

  @RequestMapping(params={"upload"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  @ResponseBody
  public AjaxJson upload(MultipartHttpServletRequest request, HttpServletResponse response)
  {
    AjaxJson j = new AjaxJson();
    Map attributes = new HashMap();
    TSTypegroup tsTypegroup = this.systemService.getTypeGroup("fieltype", "文档分类");
    TSType tsType = this.systemService.getType("files", "附件", tsTypegroup);
    String fileKey = oConvertUtils.getString(request.getParameter("fileKey"));
    String documentTitle = oConvertUtils.getString(request.getParameter("documentTitle"));
    TSDocument document = new TSDocument();
    if (StringUtil.isNotEmpty(fileKey)) {
      document.setId(fileKey);
      document = (TSDocument)this.systemService.getEntity(TSDocument.class, fileKey);
      document.setDocumentTitle(documentTitle);
    }

    document.setSubclassname(MyClassLoader.getPackPath(document));
    document.setCreatedate(DateUtils.gettimestamp());
    document.setTSType(tsType);
    UploadFile uploadFile = new UploadFile(request, document);
    uploadFile.setCusPath("files");
    uploadFile.setSwfpath("swfpath");
    document = (TSDocument)this.systemService.uploadFile(uploadFile);
    attributes.put("url", document.getRealpath());
    attributes.put("fileKey", document.getId());
    attributes.put("name", document.getAttachmenttitle());
    attributes.put("viewhref", "commonController.do?openViewFile&fileid=" + document.getId());
    attributes.put("delurl", "commonController.do?delObjFile&fileKey=" + document.getId());
    j.setMsg("ok");
    j.setAttributes(attributes);

    return j;
  }
}