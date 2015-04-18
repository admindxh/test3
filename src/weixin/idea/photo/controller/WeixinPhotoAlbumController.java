package weixin.idea.photo.controller;

import java.util.HashMap;
import java.util.List;
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
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.idea.photo.entity.WeixinPhotoAlbumEntity;
import weixin.idea.photo.entity.WeixinPhotoEntity;
import weixin.idea.photo.service.WeixinPhotoAlbumServiceI;

@Scope("prototype")
@Controller
@RequestMapping({"/weixinPhotoAlbumController"})
public class WeixinPhotoAlbumController extends BaseController
{
  private static final Logger logger = Logger.getLogger(WeixinPhotoAlbumController.class);

  @Autowired
  private WeixinPhotoAlbumServiceI weixinPhotoAlbumService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinPhotoAlbum"})
  public ModelAndView weixinPhotoAlbum(HttpServletRequest request, WeixinPhotoAlbumEntity weixinPhotoAlbum)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinPhotoAlbumEntity.class);

    cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
    cq.add();
    HqlGenerateUtil.installHql(cq, weixinPhotoAlbum, request.getParameterMap());
    List albums = this.weixinPhotoAlbumService.getListByCriteriaQuery(cq, Boolean.valueOf(false));
    request.setAttribute("albums", albums);
    return new ModelAndView("weixin/idea/photo/weixinPhotoAlbumList");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinPhotoAlbumEntity weixinPhotoAlbum, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinPhotoAlbumEntity.class, dataGrid);

    cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
    cq.add();
    HqlGenerateUtil.installHql(cq, weixinPhotoAlbum, request.getParameterMap());
    this.weixinPhotoAlbumService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(WeixinPhotoAlbumEntity weixinPhotoAlbum, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    String id = request.getParameter("id");
    weixinPhotoAlbum = (WeixinPhotoAlbumEntity)this.systemService.getEntity(WeixinPhotoAlbumEntity.class, id);

    this.weixinPhotoAlbumService.deleteFiles(weixinPhotoAlbum);

    this.message = "微相册删除成功";
    this.weixinPhotoAlbumService.delete(weixinPhotoAlbum);

    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"delPhoto"})
  @ResponseBody
  public AjaxJson delPhoto(WeixinPhotoEntity weixinPhoto, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinPhoto = (WeixinPhotoEntity)this.systemService.getEntity(WeixinPhotoEntity.class, weixinPhoto.getId());

    this.weixinPhotoAlbumService.deleteFile(weixinPhoto);

    this.message = "相片删除成功";

    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(WeixinPhotoAlbumEntity weixinPhotoAlbum, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    String albumId = null;
    if (StringUtil.isNotEmpty(weixinPhotoAlbum.getId())) {
      this.message = "微相册更新成功";
      albumId = weixinPhotoAlbum.getId();
      WeixinPhotoAlbumEntity t = (WeixinPhotoAlbumEntity)this.weixinPhotoAlbumService.get(WeixinPhotoAlbumEntity.class, weixinPhotoAlbum.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(weixinPhotoAlbum, t);
        this.weixinPhotoAlbumService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "微相册更新失败";
      }
    } else {
      String accountId = ResourceUtil.getShangJiaAccountId();
      weixinPhotoAlbum.setAccountid(accountId);
      this.message = "微相册添加成功";
      albumId = (String)this.weixinPhotoAlbumService.save(weixinPhotoAlbum);
      this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    }
    j.setMsg(this.message);
    Map attributes = new HashMap();
    attributes.put("albumId", albumId);
    j.setAttributes(attributes);
    return j;
  }
  @RequestMapping(params={"savePhoto"})
  @ResponseBody
  public AjaxJson savePhoto(WeixinPhotoEntity weixinPhoto, HttpServletRequest request) {
    AjaxJson j = new AjaxJson();
    if (StringUtil.isNotEmpty(weixinPhoto.getId())) {
      this.message = "相片更新成功";
      WeixinPhotoEntity t = (WeixinPhotoEntity)this.systemService.get(WeixinPhotoEntity.class, weixinPhoto.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(weixinPhoto, t);
        this.weixinPhotoAlbumService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "相片更新失败";
      }
    }
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(WeixinPhotoAlbumEntity weixinPhotoAlbum, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinPhotoAlbum.getId())) {
      weixinPhotoAlbum = (WeixinPhotoAlbumEntity)this.weixinPhotoAlbumService.getEntity(WeixinPhotoAlbumEntity.class, weixinPhotoAlbum.getId());
      req.setAttribute("weixinPhotoAlbumPage", weixinPhotoAlbum);
    }
    return new ModelAndView("weixin/idea/photo/weixinPhotoAlbum");
  }

  @RequestMapping(params={"goEditPhoto"})
  public ModelAndView goEditPhoto(WeixinPhotoEntity weixinPhoto, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinPhoto.getId())) {
      weixinPhoto = (WeixinPhotoEntity)this.weixinPhotoAlbumService.getEntity(WeixinPhotoEntity.class, weixinPhoto.getId());
      req.setAttribute("weixinPhoto", weixinPhoto);
    }
    return new ModelAndView("weixin/idea/photo/weixinPhoto");
  }

  @RequestMapping(params={"uploadPhotoInit"})
  public ModelAndView uploadPhotoInit(HttpServletRequest request)
  {
    request.setAttribute("albumId", request.getParameter("albumId"));
    return new ModelAndView("weixin/idea/photo/uploadPhoto");
  }

  @RequestMapping(params={"viewPhotos"})
  public ModelAndView viewPhotos(HttpServletRequest request)
  {
    String id = request.getParameter("id");
    request.setAttribute("id", id);
    WeixinPhotoAlbumEntity weixinPhotoAlbum = (WeixinPhotoAlbumEntity)this.weixinPhotoAlbumService.getEntity(WeixinPhotoAlbumEntity.class, id);
    List photos = weixinPhotoAlbum.getPhotos();
    if (weixinPhotoAlbum.getPhoto() != null)
      request.setAttribute("photoId", weixinPhotoAlbum.getPhoto().getId());
    else {
      request.setAttribute("photoId", "");
    }

    request.setAttribute("photos", photos);
    return new ModelAndView("weixin/idea/photo/viewPhotos");
  }

  @RequestMapping(params={"saveFiles"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  @ResponseBody
  public AjaxJson saveFiles(HttpServletRequest request, HttpServletResponse response, WeixinPhotoEntity photo)
  {
    AjaxJson j = new AjaxJson();
    Map attributes = new HashMap();
    String fileKey = oConvertUtils.getString(request.getParameter("fileKey"));

    String albumId = oConvertUtils.getString(request.getParameter("albumId"));

    if (StringUtil.isNotEmpty(fileKey)) {
      photo.setId(fileKey);
      photo = (WeixinPhotoEntity)this.systemService.getEntity(WeixinPhotoEntity.class, fileKey);
    }

    WeixinPhotoAlbumEntity album = (WeixinPhotoAlbumEntity)this.systemService.getEntity(WeixinPhotoAlbumEntity.class, albumId);
    photo.setAlbum(album);
    photo.setName("未命名");
    UploadFile uploadFile = new UploadFile(request, photo);
    uploadFile.setCusPath("files");
    uploadFile.setSwfpath("swfpath");
    uploadFile.setByteField(null);
    photo = (WeixinPhotoEntity)this.systemService.uploadFile(uploadFile);
    attributes.put("fileKey", photo.getId());
    attributes.put("viewhref", "commonController.do?objfileList&fileKey=" + photo.getId());
    attributes.put("delurl", "commonController.do?delObjFile&fileKey=" + photo.getId());
    j.setMsg("文件添加成功");
    j.setAttributes(attributes);

    return j;
  }

  @RequestMapping(params={"setAlbumFace"})
  @ResponseBody
  public AjaxJson setAlbumFace(WeixinPhotoAlbumEntity weixinPhotoAlbum, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    String photoId = request.getParameter("photoId");
    WeixinPhotoEntity photo = (WeixinPhotoEntity)this.systemService.get(WeixinPhotoEntity.class, photoId);
    WeixinPhotoAlbumEntity t = (WeixinPhotoAlbumEntity)this.weixinPhotoAlbumService.get(WeixinPhotoAlbumEntity.class, weixinPhotoAlbum.getId());
    t.setPhoto(photo);
    this.weixinPhotoAlbumService.saveOrUpdate(t);
    this.message = "成功设置封面";
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"cancelAlbumFace"})
  @ResponseBody
  public AjaxJson cancelAlbumFace(WeixinPhotoAlbumEntity weixinPhotoAlbum, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    WeixinPhotoAlbumEntity t = (WeixinPhotoAlbumEntity)this.weixinPhotoAlbumService.get(WeixinPhotoAlbumEntity.class, weixinPhotoAlbum.getId());
    t.setPhoto(null);
    this.weixinPhotoAlbumService.saveOrUpdate(t);
    this.message = "成功取消封面";
    j.setMsg(this.message);
    return j;
  }
}