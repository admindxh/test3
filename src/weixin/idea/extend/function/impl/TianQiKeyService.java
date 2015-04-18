package weixin.idea.extend.function.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.jeecgframework.core.util.LogUtil;
import weixin.guanjia.core.entity.message.resp.Article;
import weixin.guanjia.core.entity.message.resp.NewsMessageResp;
import weixin.guanjia.core.entity.message.resp.TextMessageResp;
import weixin.guanjia.core.util.MessageUtil;
import weixin.guanjia.core.util.weather.Weather;
import weixin.idea.extend.function.KeyServiceI;

public class TianQiKeyService
  implements KeyServiceI
{
  public String getKey()
  {
    return "天气,7";
  }

  public String excute(String content, TextMessageResp defaultMessage, HttpServletRequest request)
  {
    String respMessage = null;
    String keyWord = content.replaceAll("天气", "").trim();
    if (("".equals(keyWord)) || ("7".equals(keyWord))) {
      StringBuffer buffer = new StringBuffer();

      buffer.append("发送天气+城市，例如'天气广州'").append("\n");
      defaultMessage.setContent(buffer.toString());
      respMessage = MessageUtil.textMessageToXml(defaultMessage);
    } else {
      Map map = new HashMap();
      Map map2 = new HashMap();
      try {
        String filepach = request.getSession().getServletContext().getRealPath("/WEB-INF/classes/weixin");

        Weather util = new Weather();
        map = util.report(keyWord, filepach);
        map2 = util.report2(keyWord, filepach);
      } catch (Exception e) {
        e.printStackTrace();
        StringBuffer buffer = new StringBuffer();

        buffer.append("发送天气+城市，例如'天气广州'").append("\n");
        defaultMessage.setContent(buffer.toString());
        return MessageUtil.textMessageToXml(defaultMessage);
      }

      List articleList = new ArrayList();

      NewsMessageResp newsMessage = new NewsMessageResp();
      newsMessage.setToUserName(defaultMessage.getToUserName());
      newsMessage.setFromUserName(defaultMessage.getFromUserName());
      newsMessage.setCreateTime(new Date().getTime());
      newsMessage.setMsgType("news");

      Article article1 = new Article();
      article1.setTitle("【" + content.substring(2) + "】天气实况 气温:" + map2.get("temp") + "度  风速:" + map2.get("WD") + " " + map2.get("WS") + " 湿度:" + map2.get("SD"));

      article1.setDescription("");
      article1.setPicUrl("");
      article1.setUrl("");

      Article article2 = new Article();
      article2.setTitle("建议：" + map.get("index_d"));
      article2.setDescription("");
      article2.setPicUrl("");
      article2.setUrl("");

      Article article3 = new Article();
      article3.setTitle(map.get("mydate1") + "  " + map.get("myweek1") + "  " + map.get("temp1") + "  " + map.get("weather1") + "  " + map.get("wind1") + " " + map.get("fl1"));

      article3.setDescription("");
      article3.setPicUrl("http://m.weather.com.cn/img/b" + map.get("img1") + ".gif");

      article3.setUrl("");

      Article article4 = new Article();
      article4.setTitle(map.get("mydate2") + "  " + map.get("myweek2") + "  " + map.get("temp2") + "  " + map.get("weather2") + "  " + map.get("wind2") + " " + map.get("fl2"));

      article4.setDescription("");
      article4.setPicUrl("http://m.weather.com.cn/img/b" + map.get("img2") + ".gif");

      article4.setUrl("");

      Article article5 = new Article();
      article5.setTitle(map.get("mydate3") + "  " + map.get("myweek3") + "  " + map.get("temp3") + "  " + map.get("weather3") + "  " + map.get("wind3") + " " + map.get("fl3"));

      article5.setDescription("");
      article5.setPicUrl("http://m.weather.com.cn/img/b" + map.get("img3") + ".gif");

      article5.setUrl("");

      articleList.add(article1);
      articleList.add(article2);
      articleList.add(article3);
      articleList.add(article4);
      articleList.add(article5);
      newsMessage.setArticleCount(articleList.size());
      newsMessage.setArticles(articleList);
      respMessage = MessageUtil.newsMessageToXml(newsMessage);
    }
    return respMessage;
  }

  public static void main(String[] args) {
    LogUtil.info(ClassLoader.getSystemResource(""));
  }
}