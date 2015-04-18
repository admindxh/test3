package weixin.idea.huodong.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.LogUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import weixin.idea.huodong.entity.AwardEntity;
import weixin.idea.huodong.entity.AwardsLevelEntity;
import weixin.idea.huodong.entity.HuoDongAwardEntity;
import weixin.idea.huodong.entity.HuodongEntity;
import weixin.idea.huodong.entity.WeixinAwardsAwardEntity;
import weixin.idea.huodong.service.AwardServiceI;
import weixin.idea.huodong.service.AwardsLevelServiceI;
import weixin.idea.huodong.service.HuodongServiceI;
import weixin.idea.huodong.utils.AwardInfoVO;

@Controller
@RequestMapping({ "/huodongController" })
public class HuodongController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(HuodongController.class);

	@Autowired
	private HuodongServiceI huodongService;

	@Autowired
	private AwardsLevelServiceI awardsLevelService;

	@Autowired
	private AwardServiceI awardService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "list" })
	public ModelAndView list(HttpServletRequest request) {
		String type = request.getParameter("type");
		request.setAttribute("type", type);
		return new ModelAndView("weixin/idea/huodong/huodong/huodongList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(HuodongEntity huodong, HttpServletRequest request,
			HttpServletResponse response, DataGrid dataGrid) {
		String type = request.getParameter("type");
		CriteriaQuery cq = new CriteriaQuery(HuodongEntity.class, dataGrid);
		cq.eq("type", type);
		cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
		cq.add();
		LogUtil.info(".....type....." + type);

		HqlGenerateUtil.installHql(cq, huodong, request.getParameterMap());
		this.huodongService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "del" })
	@ResponseBody
	public AjaxJson del(HuodongEntity huodong, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		huodong = (HuodongEntity) this.systemService.getEntity(
				HuodongEntity.class, huodong.getId());
		this.message = "活动删除成功";
		this.huodongService.delete(huodong);
		this.systemService.addLog(this.message, Globals.Log_Type_DEL,
				Globals.Log_Leavel_INFO);

		j.setMsg(this.message);
		return j;
	}
	@RequestMapping(params = { "dostatus" })
	@ResponseBody
	public AjaxJson dostatus(int flag, String id, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtils.isBlank(id) || flag < 1 || flag > 2) {
			j.setMsg("非法操作");
			return j;
		}
		id = StringUtils.trim(id);
		HuodongEntity huodong = this.systemService.getEntity(
				HuodongEntity.class, id);
		if (null == huodong) {
			j.setMsg("非法操作");
			return j;
		}
		systemService.executeSql("update weixin_huodong set hd_code=? where ID=?", String.valueOf(flag), id);
		switch(flag) {
		case 1  : this.message = "活动发布成功";break;
		case 2  : this.message = "活动关闭成功";break;
		default : this.message = "非法操作";break;
		}
		this.systemService.addLog(this.message, Globals.Log_Type_DEL,
				Globals.Log_Leavel_INFO);

		j.setMsg(this.message);
		return j;
	}
	@RequestMapping(params = { "save" })
	@ResponseBody
	public AjaxJson save(HuodongEntity huodong, HttpServletRequest request) {
		List<AwardInfoVO> awardInfolist = doAwardInfoVO(request);

		AjaxJson j = new AjaxJson();
		if (StringUtil.isNotEmpty(huodong.getId())) {
			this.message = "活动更新成功";
			HuodongEntity t =  this.huodongService.get(HuodongEntity.class, huodong.getId());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(huodong, t);
				
				this.huodongService.updateEntitie(t);
				// 未发布的活动才给改奖项
				if ("0".equals(t.getHdCode())) {
					systemService.deleteAllEntitie(systemService.findByProperty(WeixinAwardsAwardEntity.class, "huodongmodel", t));
					systemService.deleteAllEntitie(systemService.findByProperty(HuoDongAwardEntity.class, "huodongmodel", t));
					AwardsLevelEntity level;
					if ((awardInfolist != null) && (awardInfolist.size() > 0)) {
						for (AwardInfoVO model : awardInfolist) {
							if (logger.isInfoEnabled()) 
								logger.info("amount:" + model.getAmount() + ",awardsname" + model.getAwardsname() 
										+ ",awardsid:" + model.getAwardsid() + ",awardidlist:" + model.getAwardidlist()
										+ ",awardnamelist:" + model.getAwardnamelist());
							HuoDongAwardEntity hdawards = new HuoDongAwardEntity();
							hdawards.setHuodongmodel(huodong);
							List<AwardsLevelEntity> levellist = this.systemService.findByProperty(AwardsLevelEntity.class, "id", model.getAwardsid());
							if (levellist != null && levellist.size() > 0) {
								level = levellist.get(0);
								hdawards.setAwardslevle(level);
								hdawards.setAccountid(huodong.getAccountid());
								hdawards.setAmount(model.getAmount());
								this.systemService.save(hdawards);
								for (String id : model.getAwardidlist()) {
									
									WeixinAwardsAwardEntity awardmodel = new WeixinAwardsAwardEntity();
									awardmodel.setHuodongmodel(huodong);
									awardmodel.setAwardslevle(level);
									awardmodel.setHuoDongAwardEntity(hdawards);
									AwardEntity award;
									List<AwardEntity> awardlist = this.systemService.findByProperty(AwardEntity.class, "id", id);
									System.out.println(id+"======"+awardlist+"="+awardlist.size());
									if ((awardlist != null) && (awardlist.size() > 0)) {
										award = awardlist.get(0);
										awardmodel.setAwardmodel(award);
										awardmodel.setAccountid(huodong.getAccountid());
										this.systemService.saveOrUpdate(awardmodel);
									}
								}
							}
						}
					}
				}
				this.systemService.addLog(this.message,
						Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				logger.error(e.getMessage(), e);
				this.message = "活动更新失败";
			}
		} else {
			this.message = "活动添加成功";
			huodong.setHdCode("0");
			this.huodongService.save(huodong);
			AwardsLevelEntity level;
			if ((awardInfolist != null) && (awardInfolist.size() > 0))
				for (AwardInfoVO model : awardInfolist) {
					HuoDongAwardEntity hdawards = new HuoDongAwardEntity();
					hdawards.setHuodongmodel(huodong);
					level = new AwardsLevelEntity();
					List<AwardsLevelEntity> levellist = this.awardsLevelService.findByProperty(AwardsLevelEntity.class,
							"id", model.getAwardsid());
					if ((levellist != null) && (levellist.size() > 0)) {
						level = (AwardsLevelEntity) levellist.get(0);

						hdawards.setAwardslevle(level);
						hdawards.setAccountid(huodong.getAccountid());
						hdawards.setAmount(model.getAmount());
						this.systemService.save(hdawards);
						for (String id : model.getAwardidlist()) {
							WeixinAwardsAwardEntity awardmodel = new WeixinAwardsAwardEntity();
							awardmodel.setHuodongmodel(huodong);
							awardmodel.setAwardslevle(level);
							awardmodel.setHuoDongAwardEntity(hdawards);
							AwardEntity award = new AwardEntity();
							List<AwardEntity> awardlist = this.awardService.findByProperty(AwardEntity.class, "id", id);
							if ((awardlist != null) && (awardlist.size() > 0)) {
								award = (AwardEntity) awardlist.get(0);

								awardmodel.setAwardmodel(award);
								awardmodel.setAccountid(huodong.getAccountid());
								this.systemService.save(awardmodel);
							}
						}
					}
				}
			
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT,
					Globals.Log_Leavel_INFO);
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "addOrUpdate" })
	public ModelAndView addOrUpdate(HuodongEntity huodong,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(huodong.getId())) {
			huodong = (HuodongEntity) this.huodongService.getEntity(
					HuodongEntity.class, huodong.getId());
			req.setAttribute("huodongPage", huodong);
		}
		return new ModelAndView("weixin/idea/huodong/huodong/huodong");
	}

	private List<AwardInfoVO> doAwardInfoVO(HttpServletRequest request) {
		String jsonstr = request.getParameter("jsonstr");
		JSONArray jsonarray = JSONArray.fromObject(jsonstr);
		Object[] obj = jsonarray.toArray();
		List<AwardInfoVO> awardInfolist = new ArrayList<AwardInfoVO>();
		for (int i = 0; i < obj.length; i++) {
			JSONObject jsonobj = JSONObject.fromObject(obj[i]);
			String awardsid = jsonobj.get("awardsid").toString();
			String awardsname = jsonobj.get("awardsname").toString();
			String awardid = jsonobj.get("awardid").toString();
			String[] idarray = awardid.split(",");
			String awardname = jsonobj.get("awardname").toString();
			String[] namearray = awardname.split(",");
			String amountname = jsonobj.get("amountname").toString();
			AwardInfoVO info = new AwardInfoVO();
			info.setAwardsid(awardsid);
			info.setAwardsname(awardsname);
			List<String> idlist = new ArrayList<String>();
			for (int j = 0; j < idarray.length; j++) {
				idlist.add(idarray[j]);
			}
			info.setAwardidlist(idlist);
			List<String> namelist = new ArrayList<String>();
			for (int k = 0; k < awardid.split(",").length; k++) {
				namelist.add(namearray[k]);
			}
			info.setAwardnamelist(namelist);
			info.setAmount(Integer.valueOf(Integer.parseInt(amountname)));
			awardInfolist.add(info);
		}
		return awardInfolist;
	}

	public void doImage(HttpServletRequest request, HttpServletResponse response) {
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0L);
		Integer width = Integer.valueOf(180);
		Integer height = Integer.valueOf(40);
		String name = request.getParameter("awardsname");

		BufferedImage image = new BufferedImage(180, 40, 1);

		Graphics2D graphics = (Graphics2D) image.getGraphics();

		graphics.setColor(Color.WHITE);
		graphics.fillRect(0, 0, width.intValue(), height.intValue());

		graphics.drawRect(0, 0, width.intValue() - 1, height.intValue() - 1);

		String resultCode = name;
		for (int i = 0; i < resultCode.length(); i++) {
			graphics.setColor(Color.BLACK);

			graphics.setFont(new Font("Times New Roman", 1, 24));

			graphics.drawString(String.valueOf(resultCode.charAt(i)),
					23 * i + 8, 26);
		}

		graphics.dispose();
		try {
			ImageIO.write(image, "JPEG", response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}