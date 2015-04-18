package weixin.idea.photo.service.impl;

import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.jeecgframework.core.common.dao.ICommonDao;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.ContextHolderUtils;
import org.jeecgframework.core.util.FileUtils;
import org.jeecgframework.web.system.pojo.base.TSAttachment;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.idea.photo.entity.WeixinPhotoAlbumEntity;
import weixin.idea.photo.entity.WeixinPhotoEntity;
import weixin.idea.photo.service.WeixinPhotoAlbumServiceI;

@Service("weixinPhotoAlbumService")
@Transactional
public class WeixinPhotoAlbumServiceImpl extends CommonServiceImpl implements
		WeixinPhotoAlbumServiceI {
	public void deleteFile(TSAttachment file) {
		String sql = "select * from t_s_attachment where id = ?";
		Map attachmentMap = this.commonDao.findOneForJdbc(sql,
				new Object[] { file.getId() });

		String realpath = (String) attachmentMap.get("realpath");
		String fileName = FileUtils.getFilePrefix2(realpath);

		String realPath = ContextHolderUtils.getSession().getServletContext()
				.getRealPath("/");
		FileUtils.delete(realPath + realpath);
		FileUtils.delete(realPath + fileName + ".pdf");
		FileUtils.delete(realPath + fileName + ".swf");

		this.commonDao.delete(file);
	}

	public void deleteFiles(WeixinPhotoAlbumEntity weixinPhotoAlbum) {
		List<WeixinPhotoEntity> photos = weixinPhotoAlbum.getPhotos();
		String sql = "select * from t_s_attachment where id = ?";
		for (WeixinPhotoEntity photo : photos) {
			Map attachmentMap = this.commonDao.findOneForJdbc(sql,
					new Object[] { photo.getId() });

			String realpath = (String) attachmentMap.get("realpath");
			String fileName = FileUtils.getFilePrefix2(realpath);

			String realPath = ContextHolderUtils.getSession()
					.getServletContext().getRealPath("/");
			FileUtils.delete(realPath + realpath);
			FileUtils.delete(realPath + fileName + ".pdf");
			FileUtils.delete(realPath + fileName + ".swf");
		}

		String dsql = "delete from weixin_photo where photo_album_id = '"
				+ weixinPhotoAlbum.getId() + "'";
		this.commonDao.updateBySqlString(dsql);
	}
}