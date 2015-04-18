package weixin.idea.qrcode.service;

import java.io.Serializable;
import javax.servlet.http.HttpServletRequest;
import org.jeecgframework.core.common.service.CommonService;
import weixin.idea.qrcode.entity.WeixinQrcodeEntity;

public abstract interface WeixinQrcodeServiceI extends CommonService
{
  public abstract <T> void delete(T paramT);

  public abstract <T> Serializable save(T paramT);

  public abstract <T> void saveOrUpdate(T paramT);

  public abstract boolean doAddSql(WeixinQrcodeEntity paramWeixinQrcodeEntity);

  public abstract boolean doUpdateSql(WeixinQrcodeEntity paramWeixinQrcodeEntity);

  public abstract boolean doDelSql(WeixinQrcodeEntity paramWeixinQrcodeEntity);

  public abstract String getQrcodeImgurl(WeixinQrcodeEntity paramWeixinQrcodeEntity, HttpServletRequest paramHttpServletRequest);
}