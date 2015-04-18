package weixin.idea.qrcode.service;

import java.io.Serializable;
import org.jeecgframework.core.common.service.CommonService;
import weixin.idea.qrcode.entity.WeixinQrcodeScanRecord;

public abstract interface WeixinQrcodeScanRecordServiceI extends CommonService
{
  public abstract <T> void delete(T paramT);

  public abstract <T> Serializable save(T paramT);

  public abstract <T> void saveOrUpdate(T paramT);

  public abstract boolean doAddSql(WeixinQrcodeScanRecord paramWeixinQrcodeScanRecord);

  public abstract boolean doUpdateSql(WeixinQrcodeScanRecord paramWeixinQrcodeScanRecord);

  public abstract boolean doDelSql(WeixinQrcodeScanRecord paramWeixinQrcodeScanRecord);
}