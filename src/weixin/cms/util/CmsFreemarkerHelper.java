package weixin.cms.util;

import freemarker.template.Configuration;
import freemarker.template.Template;

import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Map;

import org.jeecgframework.core.util.LogUtil;

public class CmsFreemarkerHelper
{
  private static Configuration _tplConfig = new Configuration();

  public CmsFreemarkerHelper(String dir) {
    try {
    	LogUtil.info("----CmsFreemarkerHelper--------"+dir);
      _tplConfig.setDirectoryForTemplateLoading(new File(dir));
    }
    catch (IOException e) {
    	LogUtil.info("----------摸版异常----"+e.toString());
      e.printStackTrace();
    }
  }

  public String parseTemplate(String tplName, String encoding, Map<String, Object> paras)
  {
    try
    {
    	LogUtil.info("----------parseTemplate----"+tplName);
      StringWriter swriter = new StringWriter();
      Template mytpl = null;
      mytpl = _tplConfig.getTemplate(tplName, encoding);
      LogUtil.info("----------mytpl----"+mytpl);
      mytpl.process(paras, swriter);
      return swriter.toString();
    } catch (Exception e) {
    	LogUtil.info(e.toString());
      e.printStackTrace();
      return e.toString();
    }
  }

  public String parseTemplate(String tplName, Map<String, Object> paras)
  {
    return parseTemplate(tplName, "utf-8", paras);
  }
}