package weixin.idea.extend.function.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.ResourceBundle;
import javax.servlet.http.HttpServletRequest;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.jeecgframework.core.util.StringUtil;
import org.springframework.context.ApplicationContext;
import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.entity.message.resp.Article;
import weixin.guanjia.core.entity.message.resp.NewsMessageResp;
import weixin.guanjia.core.entity.message.resp.TextMessageResp;
import weixin.guanjia.core.util.MessageUtil;
import weixin.idea.extend.function.KeyServiceI;
import weixin.idea.votepk.entity.WeixinVotePKConfig;
import weixin.idea.votepk.service.WeixinVotePKConfigService;

public class VotePKService
  implements KeyServiceI
{
  public String getKey()
  {
    return "投票PK,投票活动";
  }

  public String excute(String content, TextMessageResp defaultMessage, HttpServletRequest request)
  {
    WeixinAccountServiceI weixinAccountService = (WeixinAccountServiceI)ApplicationContextUtil.getContext().getBean("weixinAccountService");
    WeixinVotePKConfigService weixinVotePKConfigService = (WeixinVotePKConfigService)ApplicationContextUtil.getContext().getBean("weixinVotePKConfigService");
    String accountid = weixinAccountService.findByToUsername(defaultMessage.getFromUserName()).getId();
    String hdjs = weixinVotePKConfigService.getByName("活动介绍URL", accountid).getConfigValue();
    String hdgz = weixinVotePKConfigService.getByName("活动规则URL", accountid).getConfigValue();
    String tpgl = weixinVotePKConfigService.getByName("投票攻略URL", accountid).getConfigValue();
    request.setAttribute("hdjs", "#");
    request.setAttribute("hdgz", "#");
    request.setAttribute("tpgl", "#");
    if (!StringUtil.isEmpty(hdjs)) {
      request.setAttribute("hdjs", hdjs);
    }
    if (!StringUtil.isEmpty(tpgl)) {
      request.setAttribute("tpgl", tpgl);
    }
    if (!StringUtil.isEmpty(hdgz)) {
      request.setAttribute("hdgz", hdgz);
    }
    ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");
    List articleList = new ArrayList();
    Article contentarticle = new Article();
    contentarticle.setTitle("活动介绍");

    contentarticle.setUrl(hdjs);
    contentarticle.setDescription("");
    contentarticle.setPicUrl(bundler.getString("domain") + "/plug-in/weixin/vote/image/d-01.jpg");
    articleList.add(contentarticle);
    Article rulearticle = new Article();
    rulearticle.setTitle("活动规则");
    rulearticle.setUrl(hdgz);

    rulearticle.setDescription("");
    rulearticle.setPicUrl(bundler.getString("domain") + "/plug-in/weixin/vote/image/d-01.jpg");
    articleList.add(rulearticle);
    Article article = new Article();
    article.setTitle("我要报名/个人信息");
    article.setDescription("");
    article.setPicUrl(bundler.getString("domain") + "/plug-in/weixin/vote/image/d-01.jpg");

    article.setUrl(bundler.getString("domain") + "/weixinVotePKController.do?goVotePK&accountid=" + accountid + "&openid=" + defaultMessage.getToUserName() + "&voteopenid=" + defaultMessage.getToUserName());
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
}