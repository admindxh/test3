package weixin.guanjia.menu.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.util.PropertyFilter;

import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.ComboTree;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.common.model.json.TreeGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.LogUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.tag.vo.datatable.SortDirection;
import org.jeecgframework.tag.vo.easyui.TreeGridModel;
import org.jeecgframework.web.system.service.SystemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.base.entity.WeixinExpandconfigEntity;
import weixin.guanjia.base.service.WeixinExpandconfigServiceI;
import weixin.guanjia.core.entity.common.Button;
import weixin.guanjia.core.entity.common.CommonButton;
import weixin.guanjia.core.entity.common.ComplexButton;
import weixin.guanjia.core.entity.common.Menu;
import weixin.guanjia.core.entity.common.ViewButton;
import weixin.guanjia.core.util.WeixinUtil;
import weixin.guanjia.menu.entity.MenuEntity;
import weixin.guanjia.menu.service.WeixinMenuServiceI;
import weixin.guanjia.message.entity.NewsTemplate;
import weixin.guanjia.message.entity.TextTemplate;
import weixin.guanjia.message.service.NewsTemplateServiceI;
import weixin.guanjia.message.service.TextTemplateServiceI;

@Scope("prototype")
@Controller
@RequestMapping({ "/menuManagerController" })
public class MenuManagerController {

	private static Logger LOG =  LoggerFactory.getLogger(MenuManagerController.class);
	
	@Autowired
	private SystemService systemService;

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	@Autowired
	private WeixinMenuServiceI weixinMenuService;

	@Autowired
	private WeixinExpandconfigServiceI weixinExpandconfigService;
	@Autowired
	private NewsTemplateServiceI newsTemplateService;
	@Autowired
	private TextTemplateServiceI textTemplateService;
	private String message;

	@RequestMapping(params = { "list" })
	public ModelAndView list() {
		return new ModelAndView("weixin/guanjia/menu/menulist");
	}

	@RequestMapping(params = { "getSubMenu" })
	public void getSubMenu(HttpServletRequest request, HttpServletResponse response) {
		String accountid = ResourceUtil.getShangJiaAccountId();
//		String msgType = request.getParameter("msgType");
		String resMsg = "";
		JsonConfig config = new JsonConfig();
		config.setJsonPropertyFilter(new PropertyFilter() {
			public boolean apply(Object source, String name, Object value) {
				if (name.equals("menuList")) {
					return true;
				}
				return false;
			}
		});
		List<MenuEntity> textList = this.weixinMenuService.findByProperty(MenuEntity.class, "accountId", accountid);

		JSONArray json = JSONArray.fromObject(textList, config);
		resMsg = json.toString();
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter writer = response.getWriter();
			writer.write(resMsg);
			writer.flush();
			writer.close();
		} catch (IOException e) {
			LOG.error(e.getMessage(), e);
		}
	}

	@RequestMapping(params = { "gettemplate" })
	public void gettemplate(HttpServletRequest request, HttpServletResponse response) {
		String accountid = ResourceUtil.getShangJiaAccountId();
		String msgType = request.getParameter("msgType");
		String resMsg = "";
		if ("text".equals(msgType)) {
			List<TextTemplate> textList = this.textTemplateService.findByProperty(TextTemplate.class, "accountId", accountid);

			JSONArray json = JSONArray.fromObject(textList);
			resMsg = json.toString();
		} else if ("news".equals(msgType)) {
			JsonConfig jsonConfig = new JsonConfig();
			jsonConfig.setExcludes(new String[] { "newsItemList" });
			List<NewsTemplate> newsList = this.newsTemplateService.findByProperty(NewsTemplate.class, "accountId", accountid);

			JSONArray json = JSONArray.fromObject(newsList, jsonConfig);
			resMsg = json.toString();
		} else if ("expand".equals(msgType)) {
			JsonConfig jsonConfig = new JsonConfig();
			jsonConfig.setExcludes(new String[] { "newsItemList" });
			List<WeixinExpandconfigEntity> weixinExpandconfigEntities = this.weixinExpandconfigService.findByProperty(WeixinExpandconfigEntity.class, "accountId", accountid);

			JSONArray json = JSONArray.fromObject(weixinExpandconfigEntities, jsonConfig);
			resMsg = json.toString();
		}
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter writer = response.getWriter();
			writer.write(resMsg);
			writer.flush();
			writer.close();
		} catch (IOException e) {
			LOG.error(e.getMessage(), e);
		}
	}

	@RequestMapping(params = { "datagrid" })
	@ResponseBody
	public List<TreeGrid> datagrid(TreeGrid treegrid, HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(MenuEntity.class);
		cq.eq("accountId", ResourceUtil.getShangJiaAccountId());
		if (treegrid.getId() != null) {
			cq.eq("menuEntity.id", treegrid.getId());
		} else {
			cq.isNull("menuEntity");
		}

		cq.addOrder("orders", SortDirection.asc);
		cq.add();

		List menuList = this.systemService.getListByCriteriaQuery(cq, Boolean.valueOf(false));

		List<TreeGrid> treeGrids = new ArrayList<TreeGrid>();
		TreeGridModel treeGridModel = new TreeGridModel();

		treeGridModel.setTextField("name");
		treeGridModel.setParentText("url");
		treeGridModel.setOrder("orders");
		treeGridModel.setSrc("type");
		treeGridModel.setIdField("id");
		treeGridModel.setChildList("menuList");

		treeGrids = this.systemService.treegrid(menuList, treeGridModel);
		return treeGrids;
	}

	@RequestMapping(params = { "jumpSuView" })
	public ModelAndView jumpSuView(MenuEntity menuEntity, HttpServletRequest req) {
		LogUtil.info("...menuEntity.getId()..." + menuEntity.getId());
		if (StringUtil.isNotEmpty(menuEntity.getId())) {
			menuEntity = (MenuEntity) this.systemService.getEntity(MenuEntity.class, menuEntity.getId());

			if ((menuEntity.getMenuEntity() != null) && (menuEntity.getMenuEntity().getId() != null)) {
				req.setAttribute("fatherId", menuEntity.getMenuEntity().getId());

				req.setAttribute("fatherName", menuEntity.getMenuEntity().getName());
			}

			req.setAttribute("name", menuEntity.getName());
			req.setAttribute("type", menuEntity.getType());
			req.setAttribute("menuKey", menuEntity.getMenuKey());
			req.setAttribute("url", menuEntity.getUrl());
			req.setAttribute("orders", menuEntity.getOrders());
			req.setAttribute("templateId", menuEntity.getTemplateId());
			req.setAttribute("msgType", menuEntity.getMsgType());
		}
		String fatherId = req.getParameter("fatherId");
		if (StringUtil.isNotEmpty(fatherId)) {
			MenuEntity fatherMenuEntity = (MenuEntity) this.systemService.getEntity(MenuEntity.class, fatherId);

			req.setAttribute("fatherId", fatherId);
			req.setAttribute("fatherName", fatherMenuEntity.getName());
			LogUtil.info(".....fatherName...." + fatherMenuEntity.getName());
		}

		return new ModelAndView("weixin/guanjia/menu/menuinfo");
	}

	@RequestMapping(params = { "su" })
	@ResponseBody
	public AjaxJson su(MenuEntity menuEntity, HttpServletRequest req, String fatherId, String fatherName) {
		AjaxJson j = new AjaxJson();
//		String id = oConvertUtils.getString(req.getParameter("id"));

		if (StringUtil.isNotEmpty(menuEntity.getId())) {
			MenuEntity tempMenu = (MenuEntity) this.systemService.getEntity(MenuEntity.class, menuEntity.getId());

			MenuEntity menuTemp = new MenuEntity();
			if (StringUtil.isNotEmpty(fatherName)) {
				menuTemp.setId(fatherName);
				tempMenu.setMenuEntity(menuTemp);
			}

			this.message = ("更新" + tempMenu.getName() + "的菜单信息信息成功！");
			try {
				MyBeanUtils.copyBeanNotNull2Bean(menuEntity, tempMenu);
				this.weixinMenuService.saveOrUpdate(tempMenu);
				this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				this.message = ("更新" + tempMenu.getName() + "的菜单信息信息失败！");
				this.systemService.addLog(this.message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);

				e.printStackTrace();
			}
		} else {
			this.message = ("添加" + menuEntity.getName() + "的信息成功！");

			if (StringUtil.isNotEmpty(fatherId)) {
				MenuEntity tempMenu = (MenuEntity) this.systemService.getEntity(MenuEntity.class, fatherId);

				menuEntity.setMenuEntity(tempMenu);
			}
			String accountId = ResourceUtil.getShangJiaAccountId();
			if (!"-1".equals(accountId)) {
				menuEntity.setAccountId(accountId);
				this.weixinMenuService.save(menuEntity);
			} else {
				j.setSuccess(false);
				j.setMsg("请添加一个公众帐号。");
			}
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}

		return j;
	}

	@RequestMapping(params = { "jumpselect" })
	public ModelAndView jumpselect() {
		return new ModelAndView("");
	}

	@RequestMapping(params = { "del" })
	@ResponseBody
	public AjaxJson del(MenuEntity menuEntity, HttpServletRequest req) {
		AjaxJson j = new AjaxJson();
		menuEntity = (MenuEntity) this.systemService.getEntity(MenuEntity.class, menuEntity.getId());

		this.systemService.delete(menuEntity);

		this.message = ("删除" + menuEntity.getName() + "菜单信息数据");
		this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "sameMenu" })
	@ResponseBody
	public AjaxJson sameMenu(MenuEntity menuEntity, HttpServletRequest req) {
		AjaxJson j = new AjaxJson();
		String hql = "from MenuEntity where fatherid is null and accountId = '" + ResourceUtil.getShangJiaAccountId()
				+ "'  order by  orders asc";

		List menuList = this.systemService.findByQueryString(hql);
		LogUtil.info(".....一级菜单的个数是....." + menuList.size());
		Menu menu = new Menu();
		Button[] firstArr = new Button[menuList.size()];
		for (int a = 0; a < menuList.size(); a++) {
			MenuEntity entity = (MenuEntity) menuList.get(a);
			String hqls = "from MenuEntity where fatherid = '" + entity.getId() + "' and accountId = '"
					+ ResourceUtil.getShangJiaAccountId() + "'  order by  orders asc";

			List childList = this.systemService.findByQueryString(hqls);

			if (childList.size() == 0) {
				String type = entity.getType();
				if ("view".equals(type)) {
					ViewButton viewButton = new ViewButton();
					viewButton.setName(entity.getName());
					viewButton.setType(entity.getType());
					viewButton.setUrl(entity.getUrl());
					firstArr[a] = viewButton;
				} else if (isNotViewEven(type)) {
					CommonButton cb = new CommonButton();
					cb.setKey(entity.getMenuKey());
					cb.setName(entity.getName());
					cb.setType(entity.getType());
					firstArr[a] = cb;
				}
			} else {
				ComplexButton complexButton = new ComplexButton();
				complexButton.setName(entity.getName());

				Button[] secondARR = new Button[childList.size()];
				for (int i = 0; i < childList.size(); i++) {
					MenuEntity children = (MenuEntity) childList.get(i);
					String type = children.getType();
					if ("view".equals(type)) {
						ViewButton viewButton = new ViewButton();
						viewButton.setName(children.getName());
						viewButton.setType(children.getType());
						viewButton.setUrl(children.getUrl());
						secondARR[i] = viewButton;
					} else if (isNotViewEven(type)) {
						CommonButton cb1 = new CommonButton();
						cb1.setName(children.getName());
						cb1.setType(children.getType());
						cb1.setKey(children.getMenuKey());
						secondARR[i] = cb1;
					}

				}

				complexButton.setSub_button(secondARR);
				firstArr[a] = complexButton;
			}
		}
		menu.setButton(firstArr);
		JSONObject jsonMenu = JSONObject.fromObject(menu);
		String accessToken = this.weixinAccountService.getAccessToken();
		String url = WeixinUtil.menu_create_url.replace("ACCESS_TOKEN", accessToken);

		LogUtil.info("....url....." + url);
		LogUtil.info("....jsonMenu.toString()....." + jsonMenu.toString());
		JSONObject jsonObject = new JSONObject();
		try {
			jsonObject = WeixinUtil.httpRequest(url, "POST", jsonMenu.toString());
			LogUtil.info(jsonObject);
			if (jsonObject != null) {
				if (0 == jsonObject.getInt("errcode")) {
					this.message = "同步菜单信息数据成功！";
				} else {
					WeixinAccountEntity account = (WeixinAccountEntity) this.systemService.get(
							WeixinAccountEntity.class, ResourceUtil.getShangJiaAccountId());

					String requestUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET"
							.replace("APPID", account.getAccountappid()).replace("APPSECRET",
									account.getAccountappsecret());

					jsonObject = WeixinUtil.httpRequest(requestUrl, "GET", null);

					accessToken = "";
					String wrongMessage;
					if (null != jsonObject) {
						try {
							accessToken = jsonObject.getString("access_token");

							account.setAccountaccesstoken(accessToken);

							account.setAddtoekntime(new Date());
							this.systemService.saveOrUpdate(account);
						} catch (Exception e) {
							accessToken = null;

							wrongMessage = "获取token失败 errcode:{} errmsg:{}" + jsonObject.getInt("errcode")
									+ jsonObject.getString("errmsg");
							LogUtil.error(wrongMessage, e);
						}

					}

					url = WeixinUtil.menu_create_url.replace("ACCESS_TOKEN", accessToken);

					jsonObject = WeixinUtil.httpRequest(url, "POST", jsonMenu.toString());

					if (0 == jsonObject.getInt("errcode")) {
						this.message = "同步菜单信息数据成功！";
					} else {
						this.message = ("同步菜单信息数据失败！错误码为：" + jsonObject.getInt("errcode") + "错误信息为：" + jsonObject
								.getString("errmsg"));
					}
				}
			} else
				this.message = "同步菜单信息数据失败！同步自定义菜单URL地址不正确。";
		} catch (Exception e) {
			this.message = "同步菜单信息数据失败！";
		} finally {
			this.systemService.addLog(this.message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);

			j.setMsg(this.message);
		}
		return j;
	}

	private boolean isNotViewEven(String type) {
		return "click".equals(type) || "scancode_waitmsg".equals(type) || "scancode_push".equals(type) || 
				"pic_sysphoto".equals(type) || "pic_photo_or_album".equals(type)  || "pic_weixin".equals(type)
				 || "location_select".equals(type);
	}

	@RequestMapping(params = { "treeMenu" })
	@ResponseBody
	public List<TreeGrid> treeMenu(HttpServletRequest request, ComboTree comboTree) {
		CriteriaQuery cq = new CriteriaQuery(MenuEntity.class);
		if (StringUtil.isNotEmpty(comboTree.getId())) {
			cq.eq("menuEntity.id", comboTree.getId());
		}
		if (StringUtil.isEmpty(comboTree.getId())) {
			cq.isNull("menuEntity.id");
		}
		cq.eq("accountId", ResourceUtil.getShangJiaAccountId());
		cq.add();
		List menuList = this.weixinMenuService.getListByCriteriaQuery(cq, Boolean.valueOf(false));

		List treeGrids = new ArrayList();
		TreeGridModel treeGridModel = new TreeGridModel();
		treeGridModel.setTextField("name");
		treeGridModel.setParentText("menuEntity_name");
		treeGridModel.setParentId("menuEntity_id");
		treeGridModel.setSrc("url");
		treeGridModel.setIdField("id");
		treeGridModel.setChildList("menuList");
		treeGrids = this.systemService.treegrid(menuList, treeGridModel);
		return treeGrids;
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}