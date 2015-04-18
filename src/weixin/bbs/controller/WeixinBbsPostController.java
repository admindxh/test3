package weixin.bbs.controller;

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
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.bbs.entity.WeixinBbsEntity;
import weixin.bbs.entity.WeixinBbsPostCommentEntity;
import weixin.bbs.entity.WeixinBbsPostEntity;
import weixin.bbs.entity.WeixinBbsPostImgEntity;
import weixin.bbs.service.WeixinBbsPostServiceI;
import weixin.idea.photo.service.WeixinPhotoAlbumServiceI;

@Scope("prototype")
@Controller
@RequestMapping({"/weixinBbsPostController"})
public class WeixinBbsPostController extends BaseController
{
  private static final Logger logger = Logger.getLogger(WeixinBbsPostController.class);

  @Autowired
  private WeixinPhotoAlbumServiceI weixinPhotoAlbumService;

  @Autowired
  private WeixinBbsPostServiceI weixinBbsPostService;

  @Autowired
  private SystemService systemService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinBbsPost"})
  public ModelAndView weixinBbsPost(HttpServletRequest request)
  {
    return new ModelAndView("weixin/bbs/weixinBbsPostList");
  }

  @RequestMapping(params={"uploadPhotoInit"})
  public ModelAndView uploadPhotoInit(HttpServletRequest request)
  {
    String uuid = request.getParameter("uuid");
    request.setAttribute("uuid", uuid);
    return new ModelAndView("weixin/bbs/uploadPostPhoto");
  }

  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinBbsPostEntity weixinBbsPost, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinBbsPostEntity.class, dataGrid);

    HqlGenerateUtil.installHql(cq, weixinBbsPost, request.getParameterMap());
    this.weixinBbsPostService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"del"})
  @ResponseBody
  public AjaxJson del(WeixinBbsPostEntity weixinBbsPost, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinBbsPost = (WeixinBbsPostEntity)this.systemService.getEntity(WeixinBbsPostEntity.class, weixinBbsPost.getId());
    this.message = "微社区帖子删除成功";
    this.weixinBbsPostService.delete(weixinBbsPost);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"save"})
  @ResponseBody
  public AjaxJson save(WeixinBbsPostEntity weixinBbsPost, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    String postId = null;
    if (StringUtil.isNotEmpty(weixinBbsPost.getId())) {
      this.message = "微社区帖子更新成功";
      WeixinBbsPostEntity t = (WeixinBbsPostEntity)this.weixinBbsPostService.get(WeixinBbsPostEntity.class, weixinBbsPost.getId());
      try {
        MyBeanUtils.copyBeanNotNull2Bean(weixinBbsPost, t);
        postId = weixinBbsPost.getId();
        this.weixinBbsPostService.saveOrUpdate(t);
        this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
      } catch (Exception e) {
        e.printStackTrace();
        this.message = "微社区帖子更新失败";
      }
    } else {
      this.message = "微社区帖子添加成功";

      List bbs = this.weixinBbsPostService.findByProperty(WeixinBbsEntity.class, "accountid", ResourceUtil.getShangJiaAccountId());
      if ((null == bbs) || (bbs.size() == 0)) {
        this.message = "微社区帖子新增失败";
      } else {
        weixinBbsPost.setPostPerson(((WeixinBbsEntity)bbs.get(0)).getNickName());
        weixinBbsPost.setStatus("1");
        weixinBbsPost.setCommentCount(Integer.valueOf(0));
        weixinBbsPost.setPraiseCount(Integer.valueOf(0));
        postId = (String)this.weixinBbsPostService.save(weixinBbsPost);
        this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
      }
    }
    Map attr = new HashMap();
    attr.put("postId", postId);
    j.setAttributes(attr);
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"addorupdate"})
  public ModelAndView addorupdate(WeixinBbsPostEntity weixinBbsPost, HttpServletRequest req)
  {
    if (StringUtil.isNotEmpty(weixinBbsPost.getId())) {
      weixinBbsPost = (WeixinBbsPostEntity)this.weixinBbsPostService.getEntity(WeixinBbsPostEntity.class, weixinBbsPost.getId());
      req.setAttribute("weixinBbsPostPage", weixinBbsPost);
    }
    return new ModelAndView("weixin/bbs/weixinBbsPost");
  }

  @RequestMapping(params={"uploadPostImg"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  @ResponseBody
  public AjaxJson uploadPostImg(HttpServletRequest request, HttpServletResponse response, WeixinBbsPostImgEntity postImg)
  {
    AjaxJson j = new AjaxJson();
    Map attributes = new HashMap();
    String fileKey = oConvertUtils.getString(request.getParameter("fileKey"));

    if (StringUtil.isNotEmpty(fileKey)) {
      postImg.setId(fileKey);
      postImg = (WeixinBbsPostImgEntity)this.systemService.getEntity(WeixinBbsPostImgEntity.class, fileKey);
    }

    String postId = request.getParameter("postId");
    WeixinBbsPostEntity post = (WeixinBbsPostEntity)this.weixinBbsPostService.get(WeixinBbsPostEntity.class, postId);
    postImg.setPost(post);
    UploadFile uploadFile = new UploadFile(request, postImg);
    uploadFile.setCusPath("files");

    uploadFile.setByteField(null);
    postImg = (WeixinBbsPostImgEntity)this.systemService.uploadFile(uploadFile);
    attributes.put("fileKey", postImg.getId());
    attributes.put("viewhref", "commonController.do?objfileList&fileKey=" + postImg.getId());
    attributes.put("delurl", "commonController.do?delObjFile&fileKey=" + postImg.getId());

    return j;
  }

  @RequestMapping(params={"delImg"})
  @ResponseBody
  public AjaxJson delImg(WeixinBbsPostImgEntity postImg, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    String id = request.getParameter("id");
    postImg = (WeixinBbsPostImgEntity)this.systemService.getEntity(WeixinBbsPostImgEntity.class, id);
    String postId = postImg.getPost().getId();

    this.weixinPhotoAlbumService.deleteFile(postImg);

    this.message = "图片删除成功";

    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
    Map attr = new HashMap();
    attr.put("postId", postId);
    j.setAttributes(attr);
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"goComment"})
  public ModelAndView goComment(WeixinBbsPostEntity bbsPost, HttpServletRequest request)
  {
    if (StringUtil.isNotEmpty(bbsPost.getId())) {
      bbsPost = (WeixinBbsPostEntity)this.weixinBbsPostService.getEntity(WeixinBbsPostEntity.class, bbsPost.getId());
      request.setAttribute("bbsPost", bbsPost);
      request.setAttribute("id", bbsPost.getId());
    }
    return new ModelAndView("weixin/bbs/postComment");
  }

  @RequestMapping(params={"postComment"})
  @ResponseBody
  public AjaxJson postComment(WeixinBbsPostCommentEntity weixinBbsPostCommentEntity, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    this.message = "帖子评论成功";
    String postId = request.getParameter("postId");
    List bbs = this.weixinBbsPostService.findByProperty(WeixinBbsEntity.class, "accountid", ResourceUtil.getShangJiaAccountId());
    weixinBbsPostCommentEntity.setCommentPerson(((WeixinBbsEntity)bbs.get(0)).getNickName());
    this.weixinBbsPostService.postComment(weixinBbsPostCommentEntity, postId);
    this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"datagridComment"})
  public void datagridComment(WeixinBbsPostCommentEntity weixinBbsPostCommentEntity, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinBbsPostCommentEntity.class, dataGrid);
    String postId = request.getParameter("postId");
    WeixinBbsPostEntity bbsPost = (WeixinBbsPostEntity)this.weixinBbsPostService.getEntity(WeixinBbsPostEntity.class, postId);
    cq.eq("post", bbsPost);
    cq.addOrder("createDate", SortDirection.desc);

    HqlGenerateUtil.installHql(cq, weixinBbsPostCommentEntity, request.getParameterMap());
    this.weixinBbsPostService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }

  @RequestMapping(params={"delComment"})
  @ResponseBody
  public AjaxJson delComment(WeixinBbsPostCommentEntity weixinBbsPostCommentEntity, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinBbsPostCommentEntity = (WeixinBbsPostCommentEntity)this.systemService.getEntity(WeixinBbsPostCommentEntity.class, weixinBbsPostCommentEntity.getId());
    this.message = "评论删除成功";
    this.weixinBbsPostService.delete(weixinBbsPostCommentEntity);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

    j.setMsg(this.message);
    return j;
  }

  @RequestMapping(params={"postTop"})
  @ResponseBody
  public AjaxJson postTop(WeixinBbsPostEntity weixinBbsPostEntity, HttpServletRequest request)
  {
    AjaxJson j = new AjaxJson();
    weixinBbsPostEntity = (WeixinBbsPostEntity)this.weixinBbsPostService.getEntity(WeixinBbsPostEntity.class, weixinBbsPostEntity.getId());
    this.message = "帖子置顶成功";
    this.weixinBbsPostService.postTop(weixinBbsPostEntity);
    this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
    j.setMsg(this.message);
    return j;
  }
}