package weixin.cms.cmsdata.impl;

import java.util.List;
import java.util.Map;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.springframework.context.ApplicationContext;
import weixin.cms.cmsdata.CmsDataCollectI;
import weixin.cms.common.CmsDataContent;
import weixin.idea.photo.entity.WeixinPhotoAlbumEntity;
import weixin.idea.photo.service.WeixinPhotoAlbumServiceI;

public class CmsPhotoDataCollect
  implements CmsDataCollectI
{
  public void collect(Map<String, String> params)
  {
    WeixinPhotoAlbumServiceI weixinPhotoAlbumService = (WeixinPhotoAlbumServiceI)ApplicationContextUtil.getContext().getBean("weixinPhotoAlbumService");
    String id = (String)params.get("id");
    WeixinPhotoAlbumEntity weixinPhotoAlbum = (WeixinPhotoAlbumEntity)weixinPhotoAlbumService.getEntity(WeixinPhotoAlbumEntity.class, id);
    List photos = weixinPhotoAlbum.getPhotos();

    CmsDataContent.put("photoList", photos);

    String res = "template/cms/" + (String)params.get("styleName");

    CmsDataContent.put("base", res);
  }
}