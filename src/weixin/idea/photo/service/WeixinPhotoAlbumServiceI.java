package weixin.idea.photo.service;

import org.jeecgframework.core.common.service.CommonService;
import org.jeecgframework.web.system.pojo.base.TSAttachment;
import weixin.idea.photo.entity.WeixinPhotoAlbumEntity;

public abstract interface WeixinPhotoAlbumServiceI extends CommonService
{
  public abstract void deleteFile(TSAttachment paramTSAttachment);

  public abstract void deleteFiles(WeixinPhotoAlbumEntity paramWeixinPhotoAlbumEntity);
}