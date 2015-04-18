package weixin.idea.huodong.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.util.LogUtil;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import weixin.idea.huodong.entity.AwardsLevelEntity;
import weixin.idea.huodong.entity.HdRecordEntity;
import weixin.idea.huodong.entity.HuoDongAwardEntity;
import weixin.idea.huodong.entity.HuodongEntity;
import weixin.idea.huodong.entity.PrizeRecordEntity;
import weixin.idea.huodong.entity.WeixinAwardsAwardEntity;
import weixin.idea.huodong.utils.HdUtils;

@Controller
@RequestMapping({ "/zpController" })
public class ZpController {
	private SystemService systemService;
	private String message;

	@Resource(name = "systemService")
	public void setSystemService(SystemService systemService) {
		this.systemService = systemService;
	}

	@RequestMapping(params = { "goGglNew" })
	public ModelAndView goGglNew(HttpServletRequest request) {
		String opendId = request.getParameter("openid");
		String accountid = findAccountId(request);

		List<HuodongEntity> hdlst = this.systemService
				.findByQueryString(" FROM HuodongEntity h WHERE h.accountid='"
						+ accountid + "' AND type=1");
		HuodongEntity huodongEntity = new HuodongEntity();
		if (hdlst.size() != 0) {
			huodongEntity = (HuodongEntity) hdlst.get(0);
		}
		if (huodongEntity != null) {
			String gl = huodongEntity.getGl();
			String[] glArr = gl.split("/");
			int randomNum = HdUtils.createPrice(Integer.parseInt(glArr[0]),
					Integer.parseInt(glArr[1]));

			request.setAttribute("prize", Integer.valueOf(randomNum));
			HttpSession session = request.getSession();
			session.setAttribute("hdId", huodongEntity.getId());
			session.setAttribute("accountid", accountid);
			session.setAttribute("opendId", opendId);
			session.setAttribute("prize", Integer.valueOf(randomNum));
			request.setAttribute("huodongEntity", huodongEntity);
			List<HuoDongAwardEntity> awardslist = huodongEntity.getAwardslist();
			Map<String, List<WeixinAwardsAwardEntity>> awardmap = new HashMap<String, List<WeixinAwardsAwardEntity>>();
			for (HuoDongAwardEntity awards : awardslist) {
				List<WeixinAwardsAwardEntity> awardlist = this.systemService
						.findByQueryString("from WeixinAwardsAwardEntity w where w.huodongmodel='"
								+ huodongEntity.getId()
								+ "' and "
								+ " w.awardslevle='"
								+ awards.getAwardslevle().getId() + "'");

				awardmap.put(awards.getId(), awardlist);
			}
			request.setAttribute("awardmap", awardmap);
			request.setAttribute("awardslist", awardslist);
			request.setAttribute("awardscount",
					Integer.valueOf(huodongEntity.getAwardslist().size()));
		}

		return new ModelAndView("weixin/idea/huodong/ggl/ggl");
	}

	@RequestMapping(params = { "doGgl" })
	@ResponseBody
	public AjaxJson doGgl(HttpServletRequest request) {
		Timestamp nowTime = new Timestamp(new Date().getTime());
		String message = "";
		AjaxJson j = new AjaxJson();
		HttpSession session = request.getSession();
		String hdId = session.getAttribute("hdId").toString();
		String openId = session.getAttribute("opendId").toString();
		String accountid = findAccountId(request);
		String hql = "from HdRecordEntity where hdid='" + hdId
				+ "' and opendid='" + openId + "'";
		if (StringUtil.isNotEmpty(accountid))
			hql = hql + " and accountid='" + accountid + "'";
		else {
			hql = hql + " and accountid='-'";
		}
		List<HdRecordEntity> hdRecrdList = this.systemService.findHql(hql, null);
		if (hdRecrdList.size() > 0) {
			HdRecordEntity hdRecord = (HdRecordEntity) hdRecrdList.get(0);
			int total = hdRecord.getTotal().intValue();
			LogUtil.info("....total...." + total);
			HuodongEntity huodongEntitiy = (HuodongEntity) this.systemService
					.getEntity(HuodongEntity.class, hdId);
			if (total < Integer.parseInt(huodongEntitiy.getCount())) {
				String hql1 = "from PrizeRecordEntity where hdid='" + hdId
						+ "' and openId='" + openId + "'";
				if (StringUtil.isNotEmpty(accountid))
					hql1 = hql1 + " and accountid='" + accountid + "'";
				else {
					hql1 = hql1 + " and accountid='-'";
				}
				List prizeList = this.systemService.findByQueryString(hql1);
				if (prizeList.size() > 0) {
					j.setSuccess(false);
					message = "对不起本次活动你已经中奖，不能在抽奖！";
				} else {
					j.setSuccess(true);
					hdRecord.setTotal(Integer.valueOf(total + 1));
					this.systemService.updateEntitie(hdRecord);
				}
			} else {
				j.setSuccess(false);
				message = "对不起您已经抽奖" + total + "次，不能在抽奖！";
			}
		} else {
			HdRecordEntity hdRecord = new HdRecordEntity();
			hdRecord.setAddtime(nowTime);
			hdRecord.setHdid(hdId);
			hdRecord.setOpendid(openId);
			hdRecord.setTotal(Integer.valueOf(1));
			hdRecord.setNickname("");
			hdRecord.setAccountid(accountid);
			this.systemService.save(hdRecord);
		}
		LogUtil.info(message);
		j.setMsg(message);
		return j;
	}

	@RequestMapping(params = { "saveRecord" })
	@ResponseBody
	public AjaxJson saveRecord(HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		HttpSession session = request.getSession();
		String mobile = request.getParameter("mobile");
		Object hdIdObj = session.getAttribute("hdId");
		Object opendIdObj = session.getAttribute("opendId");
		Object prizeObj = session.getAttribute("prize");
		String username = request.getParameter("username");
		String address = request.getParameter("address");
		String awardsid = request.getParameter("awardsid");

		String accountid = findAccountId(request);
		String prize = "";
		String hdId = "";
		String opendId = "";
		if (prizeObj != null) {
			prize = prizeObj.toString();
		}

		if (hdIdObj != null) {
			hdId = hdIdObj.toString();
		}

		if (opendIdObj != null) {
			opendId = opendIdObj.toString();
		}
		Timestamp nowTime = new Timestamp(new Date().getTime());
		LogUtil.info("....prize...." + prize);

		HuodongEntity huoduo = (HuodongEntity) this.systemService
				.findUniqueByProperty(HuodongEntity.class, "id", hdId);
		if (huoduo != null) {
			String hql = "from HdRecordEntity hd where hd.hdid='" + hdId
					+ "' and hd.opendid='" + opendId + "'";
			List hdList = this.systemService.findByQueryString(hql);
			if ((hdList != null)
					&& (((HdRecordEntity) hdList.get(0)).getTotal().intValue() <= Integer
							.parseInt(huoduo.getCount()))) {
				String hql1 = "from PrizeRecordEntity p where p.hdid='" + hdId
						+ "' and p.openId='" + opendId + "'";
				if (StringUtil.isNotEmpty(accountid))
					hql1 = hql1 + " and accountid='" + accountid + "'";
				else {
					hql1 = hql1 + " and accountid='-'";
				}
				List prizeList = this.systemService.findByQueryString(hql1);
				if ((prizeList != null) && (prizeList.size() > 0)) {
					j.setSuccess(false);
					j.setMsg("您已中奖");
				} else if (!"".equals(awardsid)) {
					PrizeRecordEntity prizeEntity = new PrizeRecordEntity();
					prizeEntity.setHdid(hdId);
					List asardslist = this.systemService.findByProperty(
							AwardsLevelEntity.class, "id", awardsid);
					if ((asardslist != null) && (asardslist.size() > 0)) {
						prizeEntity.setPrize((AwardsLevelEntity) asardslist
								.get(0));
					}
					prizeEntity.setMobile(mobile);
					prizeEntity.setAddtime(nowTime);
					prizeEntity.setOpenId(opendId);
					prizeEntity.setUsername(username);
					prizeEntity.setAddress(address);
					prizeEntity.setAccountid(accountid);
					this.systemService.save(prizeEntity);
				}
			} else {
				j.setSuccess(false);
				j.setMsg("您的抽奖次数已用完");
			}
		} else {
			j.setSuccess(false);
			j.setMsg("当前活动已关闭");
		}
		return j;
	}

	@RequestMapping(params = { "addRecord" })
	@ResponseBody
	public AjaxJson addRecord(HttpServletRequest request) {
		Timestamp nowTime = new Timestamp(new Date().getTime());
		AjaxJson j = new AjaxJson();
		HttpSession session = request.getSession();
		Object hdIdObj = session.getAttribute("hdId");
		Object opendIdObj = session.getAttribute("opendId");
		String accountid = findAccountId(request);
		String hdId = "";
		String opendId = "";
		if (hdIdObj != null) {
			hdId = hdIdObj.toString();
		}
		if (opendIdObj != null) {
			opendId = opendIdObj.toString();
		}

		String hql = "from HdRecordEntity hd where hd.hdid='" + hdId
				+ "' and hd.opendid='" + opendId + "'";
		List hdList = this.systemService.findByQueryString(hql);
		HdRecordEntity hd = new HdRecordEntity();
		if ((hdList != null) && (hdList.size() > 0)) {
			hd = (HdRecordEntity) hdList.get(0);
			hd.setTotal(Integer.valueOf(hd.getTotal().intValue() + 1));
		} else {
			hd.setOpendid(opendId);
			hd.setAddtime(nowTime);
			hd.setHdid(hdId);
			hd.setAccountid(accountid);
			if ((hd.getTotal() != null) && (!"".equals(hd.getTotal())))
				hd.setTotal(Integer.valueOf(hd.getTotal().intValue() + 1));
			else {
				hd.setTotal(Integer.valueOf(1));
			}
		}
		this.systemService.saveOrUpdate(hd);
		return j;
	}

	@RequestMapping(params = { "goZhuanpan" })
	public ModelAndView goZhuanpan(HttpServletRequest request) {
		String openId = request.getParameter("openId");
		String accountid = findAccountId(request);

		List hdlst = this.systemService
				.findByQueryString(" FROM HuodongEntity h WHERE h.accountid='"
						+ accountid + "' AND type=2");
		HuodongEntity hdEntity = new HuodongEntity();
		if (hdlst.size() != 0) {
			hdEntity = (HuodongEntity) hdlst.get(0);

			request.setAttribute("hdEntity", hdEntity);
			request.setAttribute("hdId", hdEntity.getId());
			request.setAttribute("openId", openId);
			request.setAttribute("accountid", accountid);
		}
		LogUtil.info("....hdid...." + hdEntity.getId() + "...openId.." + openId);
		return new ModelAndView("weixin/idea/huodong/zp/zhuanpan");
	}

	@RequestMapping(params = { "getZpPize" })
	@ResponseBody
	public AjaxJson doZpPize(HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		String hdId = request.getParameter("hdId");
		String openId = request.getParameter("openId");
		String accountid = findAccountId(request);
		Map params = new HashMap();
		if ((StringUtil.isNotEmpty(hdId)) && (StringUtil.isNotEmpty(openId))) {
			HuodongEntity hdEntity = (HuodongEntity) this.systemService
					.getEntity(HuodongEntity.class, hdId);

			String hql = "from HdRecordEntity where hdid='" + hdId
					+ "' and opendid='" + openId + "'";
			if (StringUtil.isNotEmpty(accountid))
				hql = hql + " and accountid='" + accountid + "'";
			else {
				hql = hql + " and accountid='-'";
			}
			List hdRecrdList = this.systemService.findHql(hql, null);
			Timestamp nowTime = new Timestamp(new Date().getTime());
			if (hdEntity != null) {
				String gl = hdEntity.getGl();
				String[] glArr = gl.split("/");
				int randomNum = HdUtils.createPrice(Integer.parseInt(glArr[0]),
						Integer.parseInt(glArr[1]));
				if ((randomNum == 1) || (randomNum == 2) || (randomNum == 3)) {
					params.put("prizetype", Integer.valueOf(randomNum));
					HttpSession session = request.getSession();

					session.setAttribute("hdId", hdId);
					session.setAttribute("openId", openId);
					session.setAttribute("prize", Integer.valueOf(randomNum));
					session.setAttribute("accountid", accountid);
				}
				if (hdRecrdList.size() > 0) {
					HdRecordEntity hdRecord = (HdRecordEntity) hdRecrdList
							.get(0);
					int total = hdRecord.getTotal().intValue();
					if (total < Integer.parseInt(hdEntity.getCount())) {
						String hql1 = "from PrizeRecordEntity where hdid='"
								+ hdId + "' and openId='" + openId + "'";
						if (StringUtil.isNotEmpty(accountid))
							hql1 = hql1 + " and accountid='" + accountid + "'";
						else {
							hql1 = hql1 + " and accountid='-'";
						}
						List prizeList = this.systemService
								.findByQueryString(hql1);
						if (prizeList.size() > 0) {
							j.setSuccess(false);
							params.put("error", "getsn");
							params.put("prizetype",
									((PrizeRecordEntity) prizeList.get(0))
											.getPrize());
						} else {
							hdRecord.setTotal(Integer.valueOf(total + 1));
							this.systemService.updateEntitie(hdRecord);
						}
					} else {
						j.setSuccess(false);
						params.put("error", "invalid");
						params.put("total", Integer.valueOf(total));
					}
				} else {
					HdRecordEntity hdRecord = new HdRecordEntity();
					hdRecord.setAddtime(nowTime);
					hdRecord.setHdid(hdId);
					hdRecord.setOpendid(openId);
					hdRecord.setTotal(Integer.valueOf(1));
					hdRecord.setNickname("");
					hdRecord.setAccountid(accountid);
					this.systemService.save(hdRecord);
				}
			}
		}
		j.setAttributes(params);
		return j;
	}

	@RequestMapping(params = { "saveZpPrize" })
	@ResponseBody
	public AjaxJson saveZpPrize(HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		String mobile = request.getParameter("mobile");
		HttpSession session = request.getSession();
		Object hdIdObj = session.getAttribute("hdId");
		Object openIdObj = session.getAttribute("openId");
		Object prizeObj = session.getAttribute("prize");
		String awardsid = request.getParameter("awardsid");
		String hdId = "";
		String openId = "";
		String prize = "";
		String accountid = "";
		accountid = findAccountId(request);
		if (hdIdObj != null) {
			hdId = hdIdObj.toString();
		}
		if (openIdObj != null) {
			openId = openIdObj.toString();
		}
		if (prizeObj != null) {
			prize = prizeObj.toString();
		}
		Timestamp nowTime = new Timestamp(new Date().getTime());
		PrizeRecordEntity prizeEntity = new PrizeRecordEntity();
		prizeEntity.setHdid(hdId);
		if (!"".equals(awardsid)) {
			List asardslist = this.systemService.findByProperty(
					AwardsLevelEntity.class, "id", awardsid);
			if ((asardslist != null) && (asardslist.size() > 0)) {
				prizeEntity.setPrize((AwardsLevelEntity) asardslist.get(0));
			}
			prizeEntity.setMobile(mobile);
			prizeEntity.setAddtime(nowTime);
			prizeEntity.setOpenId(openId);
			prizeEntity.setAccountid(accountid);
			this.systemService.save(prizeEntity);
		}
		return j;
	}

	private String findAccountId(HttpServletRequest request) {
		if (request == null) {
			return "";
		}

		String accountid = request.getParameter("accountid");
		if ((accountid != null) && (!"".equals(accountid))) {
			return accountid;
		}
		return ResourceUtil.getShangJiaAccountId();
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}