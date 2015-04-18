package weixin.idea.qrcode.service.impl;

import java.io.Serializable;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.idea.qrcode.entity.WeixinQrcodeScanRecord;
import weixin.idea.qrcode.service.WeixinQrcodeScanRecordServiceI;

@Service("weixinQrcodeScanRecordService")
@Transactional
public class WeixinQrcodeScanRecordServiceImpl extends CommonServiceImpl
  implements WeixinQrcodeScanRecordServiceI
{
  public <T> void delete(T entity)
  {
    super.delete(entity);

    doDelSql((WeixinQrcodeScanRecord)entity);
  }

  public <T> Serializable save(T entity) {
    Serializable t = super.save(entity);

    doAddSql((WeixinQrcodeScanRecord)entity);
    return t;
  }

  public <T> void saveOrUpdate(T entity) {
    super.saveOrUpdate(entity);

    doUpdateSql((WeixinQrcodeScanRecord)entity);
  }

  public boolean doAddSql(WeixinQrcodeScanRecord t)
  {
    return true;
  }

  public boolean doUpdateSql(WeixinQrcodeScanRecord t)
  {
    return true;
  }

  public boolean doDelSql(WeixinQrcodeScanRecord t)
  {
    return true;
  }

  public String replaceVal(String sql, WeixinQrcodeScanRecord t)
  {
    return sql;
  }
}