package weixin.guanjia.message.dao;

import org.jeecgframework.minidao.annotation.Arguments;
import org.jeecgframework.minidao.annotation.MiniDao;
import org.jeecgframework.minidao.annotation.Sql;
import weixin.guanjia.message.entity.TextTemplate;

@MiniDao
public abstract interface TextTemplateDao {
	@Sql("select * from weixin_texttemplate where accountid=:accountid and templateName=:templateName")
	@Arguments({ "accountid", "templateName" })
	public abstract TextTemplate getTextTemplate(String paramString1, String paramString2);
}