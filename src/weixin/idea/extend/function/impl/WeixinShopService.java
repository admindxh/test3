package weixin.idea.extend.function.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.ResourceBundle;
import javax.servlet.http.HttpServletRequest;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.springframework.context.ApplicationContext;
import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.entity.message.resp.Article;
import weixin.guanjia.core.entity.message.resp.NewsMessageResp;
import weixin.guanjia.core.entity.message.resp.TextMessageResp;
import weixin.guanjia.core.util.MessageUtil;
import weixin.idea.extend.function.KeyServiceI;

public class WeixinShopService
  implements KeyServiceI
{
  public String excute(String content, TextMessageResp defaultMessage, HttpServletRequest request)
  {
    WeixinAccountServiceI weixinAccountService = (WeixinAccountServiceI)ApplicationContextUtil.getContext().getBean("weixinAccountService");
    WeixinAccountEntity account = (WeixinAccountEntity)weixinAccountService.getEntity(WeixinAccountEntity.class, defaultMessage.getFromUserName());

    String accountid = weixinAccountService.findByToUsername(defaultMessage.getFromUserName()).getId();
    String sellerid = "";
    if (account != null) {
      sellerid = account.getUserName();
    }
    ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");
    List articleList = new ArrayList();
    Article article = new Article();
    article.setTitle("微商城");
    article.setDescription("");
    article.setPicUrl(bundler.getString("domain") + "/template/shop/default/images/logo.jpg");

    article.setUrl(bundler.getString("domain") + "/weixinShopController.do?goPage&page=index&accountid=" + accountid + "&openid=" + defaultMessage.getToUserName() + "&sellerId=" + sellerid);

    articleList.add(article);
    NewsMessageResp newsMessage = new NewsMessageResp();
    newsMessage.setToUserName(defaultMessage.getToUserName());
    newsMessage.setFromUserName(defaultMessage.getFromUserName());
    newsMessage.setCreateTime(new Date().getTime());
    newsMessage.setMsgType("news");
    newsMessage.setArticleCount(articleList.size());
    newsMessage.setArticles(articleList);
    return MessageUtil.newsMessageToXml(newsMessage);
  }

  public String getKey()
  {
    return "微信商城,商城";
  }
}