package weixin.idea.qrcode.service.impl;

import java.io.File;
import java.io.Serializable;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import net.sf.json.JSONObject;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.ResourceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.util.WeixinUtil;
import weixin.idea.qrcode.entity.WeixinQrcodeEntity;
import weixin.idea.qrcode.model.ActionInfo;
import weixin.idea.qrcode.model.QrCode;
import weixin.idea.qrcode.model.Scene;
import weixin.idea.qrcode.service.WeixinQrcodeSceneServiceI;
import weixin.idea.qrcode.service.WeixinQrcodeServiceI;

@Service("weixinQrcodeService")
@Transactional
public class WeixinQrcodeServiceImpl extends CommonServiceImpl
  implements WeixinQrcodeServiceI
{

  @Autowired
  private WeixinQrcodeSceneServiceI weixinQrcodeSceneService;

  @Autowired
  WeixinAccountServiceI weixinAccountService;

  public <T> void delete(T entity)
  {
    super.delete(entity);

    doDelSql((WeixinQrcodeEntity)entity);
  }

  public <T> Serializable save(T entity) {
    Serializable t = super.save(entity);

    doAddSql((WeixinQrcodeEntity)entity);
    return t;
  }

  public <T> void saveOrUpdate(T entity) {
    super.saveOrUpdate(entity);

    doUpdateSql((WeixinQrcodeEntity)entity);
  }

  public boolean doAddSql(WeixinQrcodeEntity t)
  {
    return true;
  }

  public boolean doUpdateSql(WeixinQrcodeEntity t)
  {
    return true;
  }

  public boolean doDelSql(WeixinQrcodeEntity t)
  {
    return true;
  }

  public String getQrcodeImgurl(WeixinQrcodeEntity weixinQrcode, HttpServletRequest request)
  {
    String imgurl = "";
    QrCode qrCode = new QrCode();
    Scene scene = new Scene();
    ActionInfo actionInfo = new ActionInfo();

    qrCode.setAction_name("QR_LIMIT_SCENE");
    scene.setScene_id(weixinQrcode.getSceneId().intValue());
    actionInfo.setScene(scene);

    qrCode.setAction_info(actionInfo);

    JSONObject jsonQrcode = JSONObject.fromObject(qrCode);

    String accesstoken = this.weixinAccountService.getAccessToken(weixinQrcode.getAccountid());

    String ticketurl = WeixinUtil.qrcode_ticket_url.replace("ACCESS_TOKEN", accesstoken);
    JSONObject ticketjson = WeixinUtil.httpRequest(ticketurl, "POST", jsonQrcode.toString());

    if (!ticketjson.containsKey("errcode"))
    {
      String ticket = ticketjson.getString("ticket");

      String qrcodeimgurl = WeixinUtil.get_qrcode_url.replace("TICKET", ticket);

      String filename = ResourceUtil.getShangJiaAccountId() + weixinQrcode.getSceneId() + ".jpg";

      String targetPath = request.getSession().getServletContext().getRealPath("upload/weixinqrcode") + "/" + filename;
      imgurl = "upload/weixinqrcode/" + filename;
      File target = new File(targetPath);
      WeixinUtil.saveHttpImage(qrcodeimgurl, "GET", "", target);
    }
    return imgurl;
  }

  public String replaceVal(String sql, WeixinQrcodeEntity t)
  {
    sql = sql.replace("#{id}", String.valueOf(t.getId()));
    sql = sql.replace("#{create_name}", String.valueOf(t.getCreateName()));
    sql = sql.replace("#{create_date}", String.valueOf(t.getCreateDate()));
    sql = sql.replace("#{update_name}", String.valueOf(t.getUpdateName()));
    sql = sql.replace("#{update_date}", String.valueOf(t.getUpdateDate()));
    sql = sql.replace("#{expire_seconds}", String.valueOf(t.getExpireSeconds()));
    sql = sql.replace("#{action_name}", String.valueOf(t.getActionName()));
    sql = sql.replace("#{action_info}", String.valueOf(t.getActionInfo()));
    sql = sql.replace("#{scene_id}", String.valueOf(t.getSceneId()));
    sql = sql.replace("#{accountid}", String.valueOf(t.getAccountid()));
    sql = sql.replace("#{UUID}", UUID.randomUUID().toString());
    return sql;
  }
}