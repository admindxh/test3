package weixin.idea.qrcode.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;

public abstract interface WeixinQrcodeSceneServiceI extends CommonService
{
  public abstract <T> void delete(T paramT);

  public abstract <T> Serializable save(T paramT);

  public abstract <T> void saveOrUpdate(T paramT);
}