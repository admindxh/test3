package weixin.idea.qrcode.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.idea.qrcode.entity.WeixinQrcodeSceneSeq;

public abstract interface WeixinQrcodeSceneSeqServiceI extends CommonService
{
  public abstract <T> void delete(T paramT);

  public abstract <T> Serializable save(T paramT);

  public abstract <T> void saveOrUpdate(T paramT);

  public abstract WeixinQrcodeSceneSeq getQrcodeSceneseq(String paramString);
}