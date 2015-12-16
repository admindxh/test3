package weixin.shop.util;

import freemarker.template.Configuration;
import freemarker.template.Template;

import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Map;

public class WeixinShopFreemarkerHelper
{
  private static Configuration _tplConfig = new Configuration();

  public WeixinShopFreemarkerHelper(String dir) throws Exception {
    try {
    	System.out.println("_tplConfig===="+_tplConfig+"tplName:-------"+dir+"======new File(dir)==");
      _tplConfig.setDirectoryForTemplateLoading(new File(dir));
    }
    catch (IOException e) {
      e.printStackTrace();
    }
  }
  final static void showAllFiles(File dir) throws Exception{
	  File[] fs = dir.listFiles();
	  for(int i=0; i<fs.length; i++){
	   if(fs[i].isDirectory()){
	    try{
	    	System.out.println("wjj"+fs[i].getName());
	        showAllFiles(fs[i]);
	    }catch(Exception e){}
	   }
	  }
	}

  public String parseTemplate(String tplName, String encoding, Map<String, Object> paras)
  {
    try
    {
      StringWriter swriter = new StringWriter();
      Template mytpl = null;
      System.out.println("tplName:-------"+tplName);
      mytpl = _tplConfig.getTemplate(tplName, encoding);
      mytpl.process(paras, swriter);
      return swriter.toString();
    } catch (Exception e) {
      e.printStackTrace();
      return e.toString();
    }
  }

  public String parseTemplate(String tplName, Map<String, Object> paras)
  {
	  
    return parseTemplate(tplName, "utf-8", paras);
  }
}