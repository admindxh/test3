package weixin.guanjia.core.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.jeecgframework.core.util.LogUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.web.cgform.engine.FreemarkerHelper;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.base.entity.Subscribe;
import weixin.guanjia.base.entity.UnknownResponse;
import weixin.guanjia.base.entity.WeixinExpandconfigEntity;
import weixin.guanjia.base.service.SubscribeServiceI;
import weixin.guanjia.base.service.WeixinExpandconfigServiceI;
import weixin.guanjia.core.entity.message.resp.Article;
import weixin.guanjia.core.entity.message.resp.NewsMessageResp;
import weixin.guanjia.core.entity.message.resp.TextMessageResp;
import weixin.guanjia.core.util.MessageUtil;
import weixin.guanjia.gzuserinfo.entity.GzUserInfoYw;
import weixin.guanjia.gzuserinfo.service.GzUserInfoService;
import weixin.guanjia.location.entity.LocationEntity;
import weixin.guanjia.menu.entity.MenuEntity;
import weixin.guanjia.message.dao.TextTemplateDao;
import weixin.guanjia.message.entity.AutoResponse;
import weixin.guanjia.message.entity.NewsItem;
import weixin.guanjia.message.entity.NewsTemplate;
import weixin.guanjia.message.entity.ReceiveEvent;
import weixin.guanjia.message.entity.ReceiveText;
import weixin.guanjia.message.entity.TextTemplate;
import weixin.guanjia.message.service.AutoResponseServiceI;
import weixin.guanjia.message.service.NewsItemServiceI;
import weixin.guanjia.message.service.NewsTemplateServiceI;
import weixin.guanjia.message.service.ReceiveTextServiceI;
import weixin.guanjia.message.service.TextTemplateServiceI;
import weixin.idea.extend.function.KeyServiceI;
import weixin.idea.qrcode.entity.WeixinQrcodeEntity;
import weixin.idea.qrcode.entity.WeixinQrcodeScanRecord;
import weixin.idea.qrcode.entity.WeixinQrcodeSceneEntity;
import weixin.idea.qrcode.service.WeixinQrcodeScanRecordServiceI;
import weixin.idea.qrcode.service.WeixinQrcodeSceneServiceI;
import weixin.idea.qrcode.service.WeixinQrcodeServiceI;
import weixin.idea.votepk.service.WeixinVotePKService;
import weixin.util.DateUtils;

@Service("wechatService")
public class WechatService {

	@Autowired
	private TextTemplateDao textTemplateDao;

	@Autowired
	private AutoResponseServiceI autoResponseService;

	@Autowired
	private TextTemplateServiceI textTemplateService;

	@Autowired
	private NewsTemplateServiceI newsTemplateService;

	@Autowired
	private ReceiveTextServiceI receiveTextService;

	@Autowired
	private NewsItemServiceI newsItemService;

	@Autowired
	private SystemService systemService;

	@Autowired
	private SubscribeServiceI subscribeService;

	@Autowired
	private WeixinExpandconfigServiceI weixinExpandconfigService;

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	@Autowired
	private WeixinQrcodeServiceI weixinQrcodeService;

	@Autowired
	private WeixinQrcodeSceneServiceI weixinQrcodeSceneService;

	@Autowired
	private WeixinQrcodeScanRecordServiceI weixinQrcodeScanRecordService;

	@Autowired
	private GzUserInfoService gzUserInfoService;

	@Autowired
	private WeixinVotePKService weixinVotePKService;

	public String coreService(HttpServletRequest request) {
		String respMessage = null;
		try {
			String respContent = "请求处理异常，请稍候尝试！";

			Map<String, String> requestMap = MessageUtil.parseXml(request);

			String fromUserName = (String) requestMap.get("FromUserName");

			String toUserName = (String) requestMap.get("ToUserName");

			String msgType = (String) requestMap.get("MsgType");
			String msgId = (String) requestMap.get("MsgId");

			String content = (String) requestMap.get("Content");
			LogUtil.info("------------微信客户端发送请求---------------------   |   fromUserName:" + fromUserName
					+ "   |   ToUserName:" + toUserName + "   |   msgType:" + msgType + "   |   msgId:" + msgId
					+ "   |   content:" + content);

			LogUtil.info("-toUserName--------" + toUserName);
			LogUtil.info("-findByToUsername--------" + this.weixinAccountService.findByToUsername(toUserName));
			String sys_accountId = this.weixinAccountService.findByToUsername(toUserName).getId();
		
			LogUtil.info("-sys_accountId--------" + sys_accountId);
			ResourceBundle bundler = ResourceBundle.getBundle("sysConfig");

			TextMessageResp textMessage = new TextMessageResp();
			textMessage.setToUserName(fromUserName);
			textMessage.setFromUserName(toUserName);
			textMessage.setCreateTime(new Date().getTime());
			textMessage.setMsgType("text");
			textMessage.setContent(getMainMenu());

			respMessage = MessageUtil.textMessageToXml(textMessage);

			if (msgType.equals("text")) {
				LogUtil.info("------------微信客户端发送请求------------------【微信触发类型】文本消息---");
				respMessage = doTextResponse(content, toUserName, textMessage, bundler, sys_accountId, respMessage,
						fromUserName, request, msgId, msgType);
			} else if (msgType.equals("image")) {
				//respContent = "您发送的是图片消息！";
				content = "";
				respMessage = doTextResponse(content, toUserName, textMessage, bundler, sys_accountId, respMessage, fromUserName, request, msgId, msgType);
			} else if (msgType.equals("location")) {
				//respContent = "您发送的是地理位置消息！";
				content = "";
				respMessage = doTextResponse(content, toUserName, textMessage, bundler, sys_accountId, respMessage, fromUserName, request, msgId, msgType);
			} else if (msgType.equals("link")) {
				//respContent = "您发送的是链接消息！";
				content = "";
				respMessage = doTextResponse(content, toUserName, textMessage, bundler, sys_accountId, respMessage, fromUserName, request, msgId, msgType);
			} else if (msgType.equals("voice")) {
				if (requestMap.containsKey("Recognition")) {
					content = (String) requestMap.get("Recognition");
					respMessage = doTextResponse(content, toUserName, textMessage, bundler, sys_accountId, respMessage,
							fromUserName, request, msgId, msgType);
				} else {
					//respContent = "您发送的是音频消息！";
					content = "";
					respMessage = doTextResponse(content, toUserName, textMessage, bundler, sys_accountId, respMessage, fromUserName, request, msgId, msgType);
				}

			} else if (msgType.equals("event")) {
				String sql = "select count(*) from weixin_receiveevent where fromusername=? and createtime=?";
				long count = systemService.getCountForJdbcParam(sql, new Object[]{requestMap.get("FromUserName"), requestMap.get("CreateTime")});
				if (count > 0) return "";
				ReceiveEvent receiveEvent = new ReceiveEvent();
				receiveEvent.setAccountId(sys_accountId);
				receiveEvent.setCreateTime(requestMap.get("CreateTime"));
				receiveEvent.setEvent(requestMap.get("Event"));
				receiveEvent.setEventKey(requestMap.get("EventKey"));
				receiveEvent.setFromUserName(requestMap.get("FromUserName"));
				receiveEvent.setLatitude(requestMap.get("Latitude"));
				receiveEvent.setLongitude(requestMap.get("Longitude"));
				receiveEvent.setMsgType(msgType);
				receiveEvent.setPrecision(requestMap.get("Precision"));
				receiveEvent.setReceiveTime(new Date());
				receiveEvent.setTicket(requestMap.get("Ticket"));
				receiveEvent.setToUserName(toUserName);
				systemService.save(receiveEvent);
				LogUtil.info("------------微信客户端发送请求------------------【微信触发类型】事件推送---");

				String eventType = (String) requestMap.get("Event");

				if (eventType.equals("subscribe")) {
					respMessage = doDingYueEventResponse(requestMap, textMessage, bundler, respMessage, toUserName,
							fromUserName, respContent, sys_accountId);
				} else if (eventType.equals("SCAN")) {
					respMessage = doScanEventResponse(requestMap, textMessage, bundler, respMessage, toUserName,
							fromUserName, respContent, sys_accountId);
				} else if (eventType.equals("unsubscribe")) {
					GzUserInfoYw yw = this.gzUserInfoService.getLocalUserinfo(fromUserName, this.weixinAccountService
							.findByToUsername(toUserName).getId());

					yw.setSubscribe("0");
					this.systemService.updateEntitie(yw);
				} else if (eventType.equals("LOCATION")) {
					LocationEntity location = (LocationEntity) this.systemService.findUniqueByProperty(
							LocationEntity.class, "openid", fromUserName);
					String latitude = (String) requestMap.get("Latitude");
					String longitude = (String) requestMap.get("Longitude");
					Date nowTime = new Date();
					if (location == null) {
						location = new LocationEntity();
						String precision = (String) requestMap.get("Precision");
						System.out.println("....precision..." + precision);
						location.setAccountid(toUserName);
						location.setOpenid(fromUserName);
						location.setLatitude(latitude);
						location.setLongitude(longitude);

						location.setPrecision(precision);
						location.setAddtime(nowTime);
						this.systemService.save(location);
					} else {
						location.setLongitude(longitude);
						location.setLatitude(latitude);
						location.setAddtime(nowTime);
						this.systemService.updateEntitie(location);
					}

				} else if (eventType.equals("CLICK")|| "scancode_waitmsg".equals(eventType) || "scancode_push".equals(eventType) || 
						"pic_sysphoto".equals(eventType) || "pic_photo_or_album".equals(eventType)  || "pic_weixin".equals(eventType)
						 || "location_select".equals(eventType)) {
					respMessage = doMyMenuEvent(requestMap, textMessage, bundler, respMessage, toUserName,
							fromUserName, respContent, sys_accountId, request);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("...respMessage..." + respMessage);
		return respMessage;
	}

	public static String getTranslateUsage() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("微译使用指南").append("\n\n");
		buffer.append("微译为用户提供专业的多语言翻译服务，目前支持以下翻译方向：").append("\n");
		buffer.append("    中 -> 英").append("\n");
		buffer.append("    英 -> 中").append("\n");
		buffer.append("    日 -> 中").append("\n\n");
		buffer.append("使用示例：").append("\n");
		buffer.append("    翻译我是中国人").append("\n");
		buffer.append("    翻译dream").append("\n");
		buffer.append("    翻译さようなら").append("\n\n");
		buffer.append("回复“?”显示主菜单");
		return buffer.toString();
	}

	private AutoResponse findKey(String content, String toUsername) {
		LogUtil.info("---------sys_accountId--------" + toUsername + "|");

		String sys_accountId = this.weixinAccountService.findByToUsername(toUsername).getId();
		LogUtil.info("---------sys_accountId--------" + sys_accountId);

		List<AutoResponse> autoResponses = this.autoResponseService.findByProperty(AutoResponse.class, "accountId",
				sys_accountId);
		LogUtil.info(Integer.valueOf("---------sys_accountId----关键字查询结果条数：----" + autoResponses != null ? autoResponses
				.size() : 0));
		for (AutoResponse r : autoResponses) {
			String kw = r.getKeyWord();
			String[] allkw = kw.split(",");
			for (String k : allkw) {
				if (k.equals(content)) {
					LogUtil.info("---------sys_accountId----查询结果----" + r);
					return r;
				}
			}
		}
		return null;
	}

	private String doTextResponse(String content, String toUserName, TextMessageResp textMessage, ResourceBundle bundler,
			String sys_accountId, String respMessage, String fromUserName, HttpServletRequest request, String msgId,
			String msgType) throws Exception {
		if (StringUtils.isNotBlank(msgId)) {
			long count = receiveTextService.getCountForJdbcParam("select count(*) from weixin_receivetext where msgid=?", new Object[]{msgId});
			if (count > 0) return "";
		}
		ReceiveText receiveText = new ReceiveText();
		receiveText.setContent(content);
		Timestamp temp = Timestamp.valueOf(DateUtils.getDate("yyyy-MM-dd HH:mm:ss"));

		receiveText.setCreateTime(temp);
		receiveText.setFromUserName(fromUserName);
		WeixinAccountEntity weixinAccount = (WeixinAccountEntity) this.systemService.findUniqueByProperty(
				WeixinAccountEntity.class, "weixinaccountid", toUserName);
		if (weixinAccount != null) {
			String accountType = weixinAccount.getAccounttype();
			if ("1".equals(accountType)) {
				List<GzUserInfoYw> userInfoList = this.systemService.findByProperty(GzUserInfoYw.class, "openid",
						fromUserName);
				if (userInfoList.size() > 0) {
					String nickName = ((GzUserInfoYw) userInfoList.get(0)).getNickname();
					receiveText.setNickName(nickName);
				}
			}
		}
		receiveText.setToUserName(toUserName);
		receiveText.setMsgId(msgId);
		receiveText.setMsgType(msgType);
		receiveText.setResponse("0");
		receiveText.setAccountId(toUserName);
		this.receiveTextService.save(receiveText);

		LogUtil.info("------------微信客户端发送请求--------------Step.1 判断关键字信息中是否管理该文本内容。有的话优先采用数据库中的回复---");
		AutoResponse autoResponse = findKey(content, toUserName);

		if (autoResponse != null) {
			String resMsgType = autoResponse.getMsgType();
			if ("text".equals(resMsgType)) {
				TextTemplate textTemplate = this.textTemplateDao.getTextTemplate(sys_accountId,
						autoResponse.getTemplateName());
				textMessage.setContent(textTemplate.getContent());
				respMessage = MessageUtil.textMessageToXml(textMessage);
			} else if ("news".equals(resMsgType)) {
				List<NewsTemplate> newsTemplates = newsTemplateService.findHql("select o from NewsTemplate o where o.accountId=?1 and o.templateName=?2", sys_accountId, autoResponse.getTemplateName());
				NewsTemplate newsTemplate = newsTemplates.get(0);
				List<NewsItem> newsList = this.newsItemService.findByProperty(NewsItem.class, "newsTemplate.id",
						newsTemplate.getId());
				List<Article> articleList = new ArrayList<Article>();
				for (NewsItem news : newsList) {
					Article article = new Article();
					article.setTitle(news.getTitle());
					article.setPicUrl(bundler.getString("domain") + "/" + news.getImagePath());
					String url = "";
					if (oConvertUtils.isEmpty(news.getUrl())) {
						url = bundler.getString("domain") + "/newsItemController.do?goContent&id=" + news.getId();
					} else {
						url = news.getUrl();
					}
					article.setUrl(url);
					//图文消息不显示描述，不支持富文本
					//article.setDescription(news.getDescription());
					articleList.add(article);
				}
				NewsMessageResp newsResp = new NewsMessageResp();
				newsResp.setCreateTime(new Date().getTime());
				newsResp.setFromUserName(toUserName);
				newsResp.setToUserName(fromUserName);
				newsResp.setMsgType("news");
				newsResp.setArticleCount(newsList.size());
				newsResp.setArticles(articleList);
				respMessage = MessageUtil.newsMessageToXml(newsResp);
			}
		} else {
			LogUtil.info("------------微信客户端发送请求--------------Step.2  通过微信扩展接口（支持二次开发，例如：翻译，天气）---");
			List<WeixinExpandconfigEntity> weixinExpandconfigEntityLst = this.weixinExpandconfigService
					.findByQueryString("FROM WeixinExpandconfigEntity");
			if (null != weixinExpandconfigEntityLst && weixinExpandconfigEntityLst.size() > 0) {
				boolean findflag = false;
				for (WeixinExpandconfigEntity wec : weixinExpandconfigEntityLst) {
					if (findflag) {
						break;
					}
					String[] keys = wec.getKeyword().split(",");
					for (String k : keys) {
						if (content.indexOf(k) != -1) {
							String className = wec.getClassname();
							KeyServiceI keyService = (KeyServiceI) Class.forName(className).newInstance();
							respMessage = keyService.excute(content, textMessage, request);
							findflag = true;
							break;
						}
					}
				}
				if (!findflag) {
					LogUtil.info("------------微信客户端发送请求--------------Step.3  未知回复---");
					respMessage = doUnknownResponse(content, toUserName, textMessage, bundler, sys_accountId, respMessage, fromUserName, request, msgId, msgType);
				}
			} else {
				LogUtil.info("------------微信客户端发送请求--------------Step.3  未知回复---");
				respMessage = doUnknownResponse(content, toUserName, textMessage, bundler, sys_accountId, respMessage, fromUserName, request, msgId, msgType);
			}
		}

		return respMessage;
	}

	private String doUnknownResponse(String content, String toUserName, TextMessageResp textMessage, ResourceBundle bundler,
			String sys_accountId, String respMessage, String fromUserName, HttpServletRequest request, String msgId,
			String msgType) throws Exception {
		List<UnknownResponse> lst = this.systemService.findByProperty(UnknownResponse.class, "accountId", sys_accountId);
		if (lst.size() != 0) {
			UnknownResponse unknownResponse = lst.get(0);
			String type = unknownResponse.getMsgType();
			if ("text".equals(type)) {
				TextTemplate textTemplate = this.textTemplateService.get(TextTemplate.class, unknownResponse.getTemplateId());

				content = textTemplate.getContent();
				textMessage.setContent(content);
				respMessage = MessageUtil.textMessageToXml(textMessage);
			} else if ("news".equals(type)) {
				List<NewsItem> newsList = this.newsItemService.findByProperty(NewsItem.class, "newsTemplate.id",
						unknownResponse.getTemplateId());
				List<Article> articleList = new ArrayList<Article>();
				NewsTemplate newsTemplate = this.newsTemplateService.get(NewsTemplate.class,
						unknownResponse.getTemplateId());
				for (NewsItem news : newsList) {
					Article article = new Article();
					article.setTitle(news.getTitle());
					article.setPicUrl(bundler.getString("domain") + "/" + news.getImagePath());
					String url = "";
					if ("common".equals(newsTemplate.getType()))
						url = bundler.getString("domain") + "/newsItemController.do?goContent&id=" + news.getId();
					else {
						url = news.getContent();
					}
					article.setUrl(url);
					//图文消息不显示描述，不支持富文本
					//article.setDescription(news.getDescription());
					articleList.add(article);
				}
				NewsMessageResp newsResp = new NewsMessageResp();
				newsResp.setCreateTime(new Date().getTime());
				newsResp.setFromUserName(toUserName);
				newsResp.setToUserName(fromUserName);
				newsResp.setMsgType("news");
				newsResp.setArticleCount(newsList.size());
				newsResp.setArticles(articleList);
				respMessage = MessageUtil.newsMessageToXml(newsResp);
			}
		}
		return respMessage;
	}
	
	private String doDingYueEventResponse(Map<String, String> requestMap, TextMessageResp textMessage, ResourceBundle bundler,
			String respMessage, String toUserName, String fromUserName, String respContent, String sys_accountId) {
		this.gzUserInfoService.saveGzUserInfoByOpenId(fromUserName, toUserName);
		respContent = "谢谢您的关注！回复\"?\"进入主菜单。";
		List<Subscribe> lst = this.subscribeService.findByProperty(Subscribe.class, "accountid", sys_accountId);
		if (lst.size() != 0) {
			Subscribe subscribe = lst.get(0);
			String type = subscribe.getMsgType();
			if ("text".equals(type)) {
				TextTemplate textTemplate = this.textTemplateService.get(TextTemplate.class, subscribe.getTemplateId());

				String content = textTemplate.getContent();
				textMessage.setContent(content);
				respMessage = MessageUtil.textMessageToXml(textMessage);
			} else if ("news".equals(type)) {
				List<NewsItem> newsList = this.newsItemService.findByProperty(NewsItem.class, "newsTemplate.id",
						subscribe.getTemplateId());
				List<Article> articleList = new ArrayList<Article>();
				NewsTemplate newsTemplate = this.newsTemplateService.get(NewsTemplate.class,
						subscribe.getTemplateId());
				for (NewsItem news : newsList) {
					Article article = new Article();
					article.setTitle(news.getTitle());
					article.setPicUrl(bundler.getString("domain") + "/" + news.getImagePath());
					String url = "";
					if ("common".equals(newsTemplate.getType()))
						url = bundler.getString("domain") + "/newsItemController.do?goContent&id=" + news.getId();
					else {
						url = news.getContent();
					}
					article.setUrl(url);
					//图文消息不显示描述，不支持富文本
					//article.setDescription(news.getDescription());
					articleList.add(article);
				}
				NewsMessageResp newsResp = new NewsMessageResp();
				newsResp.setCreateTime(new Date().getTime());
				newsResp.setFromUserName(toUserName);
				newsResp.setToUserName(fromUserName);
				newsResp.setMsgType("news");
				newsResp.setArticleCount(newsList.size());
				newsResp.setArticles(articleList);
				respMessage = MessageUtil.newsMessageToXml(newsResp);
			}
		}

		if (requestMap.containsKey("Ticket")) {
			String sceneid = ((String) requestMap.get("EventKey")).split("_")[1];
			List<WeixinQrcodeEntity> weixinQrcodeList = this.weixinQrcodeService.findByProperty(
					WeixinQrcodeEntity.class, "sceneId", Integer.valueOf(Integer.parseInt(sceneid)));
			if (weixinQrcodeList.size() != 0) {
				List<WeixinQrcodeSceneEntity> weixinQrcodeScenelist = this.weixinQrcodeSceneService.findByProperty(
						WeixinQrcodeSceneEntity.class, "scenekey", Integer.valueOf(Integer.parseInt(sceneid)));
				WeixinQrcodeScanRecord weixinQrcodeScanRecord = new WeixinQrcodeScanRecord();
				weixinQrcodeScanRecord.setImageurl(((WeixinQrcodeEntity) weixinQrcodeList.get(0)).getImageurl());
				weixinQrcodeScanRecord.setNickname("");
				weixinQrcodeScanRecord.setOpenid(fromUserName);
				weixinQrcodeScanRecord.setScantime(new Date());
				weixinQrcodeScanRecord.setScenekey(((WeixinQrcodeEntity) weixinQrcodeList.get(0)).getSceneId()
						.toString());
				if (weixinQrcodeScenelist.size() != 0) {
					weixinQrcodeScanRecord.setScenevalue(((WeixinQrcodeSceneEntity) weixinQrcodeScenelist.get(0))
							.getScenevalue());
				}
				weixinQrcodeScanRecord.setAccountid(this.weixinAccountService.findByToUsername(toUserName).getId());
				this.weixinQrcodeScanRecordService.save(weixinQrcodeScanRecord);
			}

			this.weixinVotePKService.updateVoteCount(Integer.parseInt(sceneid), sys_accountId, fromUserName, "2", 1);
		}

		this.weixinVotePKService.toSuccessUnsubscribeVoteCount(sys_accountId, fromUserName);
		return respMessage;
	}

	private String doMyMenuEvent(Map<String, String> requestMap, TextMessageResp textMessage, ResourceBundle bundler,
			String respMessage, String toUserName, String fromUserName, String respContent, String sys_accountId,
			HttpServletRequest request) throws Exception {
		String key = (String) requestMap.get("EventKey");

		MenuEntity menuEntity = (MenuEntity) this.systemService.findUniqueByProperty(MenuEntity.class, "menuKey", key);
		if ((menuEntity != null) && (oConvertUtils.isNotEmpty(menuEntity.getTemplateId()))) {
			String type = menuEntity.getMsgType();
			if ("text".equals(type)) {
				TextTemplate textTemplate = (TextTemplate) this.textTemplateService.getEntity(TextTemplate.class,
						menuEntity.getTemplateId());
				String content = textTemplate.getContent();
				textMessage.setContent(content);
				respMessage = MessageUtil.textMessageToXml(textMessage);
			} else if ("news".equals(type)) {
				List<NewsItem> newsList = this.newsItemService.findByProperty(NewsItem.class, "newsTemplate.id",
						menuEntity.getTemplateId());
				List<Article> articleList = new ArrayList<Article>();
				NewsTemplate newsTemplate = (NewsTemplate) this.newsTemplateService.getEntity(NewsTemplate.class,
						menuEntity.getTemplateId());
				for (NewsItem news : newsList) {
					Article article = new Article();
					article.setTitle(news.getTitle());
					article.setPicUrl(bundler.getString("domain") + "/" + news.getImagePath());
					String url = "";
					if ("common".equals(newsTemplate.getType()))
						url = bundler.getString("domain") + "/newsItemController.do?goContent&id=" + news.getId();
					else {
						url = news.getContent();
					}
					article.setUrl(url);
					////图文消息不显示描述，不支持富文本
					//article.setDescription(news.getDescription());
					articleList.add(article);
				}
				NewsMessageResp newsResp = new NewsMessageResp();
				newsResp.setCreateTime(new Date().getTime());
				newsResp.setFromUserName(toUserName);
				newsResp.setToUserName(fromUserName);
				newsResp.setMsgType("news");
				newsResp.setArticleCount(newsList.size());
				newsResp.setArticles(articleList);
				respMessage = MessageUtil.newsMessageToXml(newsResp);
			} else if ("expand".equals(type)) {
				WeixinExpandconfigEntity expandconfigEntity = (WeixinExpandconfigEntity) this.weixinExpandconfigService
						.getEntity(WeixinExpandconfigEntity.class, menuEntity.getTemplateId());
				String className = expandconfigEntity.getClassname();
				KeyServiceI keyService = (KeyServiceI) Class.forName(className).newInstance();
				respMessage = keyService.excute("", textMessage, request);
			}
		}

		return respMessage;
	}

	private String doScanEventResponse(Map<String, String> requestMap, TextMessageResp textMessage,
			ResourceBundle bundler, String respMessage, String toUserName, String fromUserName, String respContent,
			String sys_accountId) {
		String sceneid = (String) requestMap.get("EventKey");
		List<WeixinQrcodeEntity> weixinQrcodeList = this.weixinQrcodeService.findByProperty(WeixinQrcodeEntity.class,
				"sceneId", Integer.valueOf(Integer.parseInt(sceneid)));
		if (weixinQrcodeList.size() != 0) {
			List<WeixinQrcodeSceneEntity> weixinQrcodeScenelist = this.weixinQrcodeSceneService.findByProperty(
					WeixinQrcodeSceneEntity.class, "scenekey", Integer.valueOf(Integer.parseInt(sceneid)));
			WeixinQrcodeScanRecord weixinQrcodeScanRecord = new WeixinQrcodeScanRecord();
			weixinQrcodeScanRecord.setImageurl(((WeixinQrcodeEntity) weixinQrcodeList.get(0)).getImageurl());
			weixinQrcodeScanRecord.setNickname("");
			weixinQrcodeScanRecord.setOpenid(fromUserName);
			weixinQrcodeScanRecord.setScantime(new Date());
			weixinQrcodeScanRecord.setScenekey(((WeixinQrcodeEntity) weixinQrcodeList.get(0)).getSceneId().toString());
			if (weixinQrcodeScenelist.size() != 0) {
				weixinQrcodeScanRecord.setScenevalue(((WeixinQrcodeSceneEntity) weixinQrcodeScenelist.get(0))
						.getScenevalue());
			}
			weixinQrcodeScanRecord.setAccountid(this.weixinAccountService.findByToUsername(toUserName).getId());
			this.weixinQrcodeScanRecordService.save(weixinQrcodeScanRecord);

			String content = "您扫描的二维码场景是：" + weixinQrcodeScanRecord.getScenevalue();
			textMessage.setContent(content);
			respMessage = MessageUtil.textMessageToXml(textMessage);
		}

		this.weixinVotePKService.updateVoteCount(Integer.parseInt(sceneid), sys_accountId, fromUserName, "2", 1);
		return respMessage;
	}

	public static String getMainMenu() {
		String html = new FreemarkerHelper().parseTemplate("/weixin/welcome.ftl", null);
		return html;
	}
}