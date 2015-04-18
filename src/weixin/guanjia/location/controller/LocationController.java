package weixin.guanjia.location.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import weixin.guanjia.around.entity.AroundEntity;
import weixin.guanjia.around.service.AroundServiceI;
import weixin.guanjia.location.entity.LocationEntity;
import weixin.guanjia.location.service.LocationServiceI;

@Controller
@RequestMapping({ "/locationController" })
public class LocationController extends BaseController {
	private static final Logger logger = Logger.getLogger(LocationController.class);

	@Autowired
	private LocationServiceI locationEntityService;

	@Autowired
	private AroundServiceI aroundService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "goLocationAround" })
	public ModelAndView goLocationAround(LocationEntity locationEntity, HttpServletRequest req) {
		String openId = req.getParameter("openId");
		String accountid = req.getParameter("accountid");
		locationEntity = this.locationEntityService.findUniqueByProperty(LocationEntity.class,
				"openid", openId);
		String hql = "from AroundEntity where accountid='" + accountid + "' and iswork='1'";
		List aroundList = this.aroundService.findByQueryString(hql);
		if (locationEntity != null) {
			String latitude = locationEntity.getLatitude();

			String longitude = locationEntity.getLongitude();
			req.setAttribute("latitude", latitude);
			req.setAttribute("longitude", longitude);
			if (aroundList.size() > 0) {
				AroundEntity aroundEntity = (AroundEntity) aroundList.get(0);
				req.setAttribute("radius", aroundEntity.getRadius());
				req.setAttribute("query", aroundEntity.getKeyword());
			} else {
				req.setAttribute("radius", "1000");
				req.setAttribute("query", "团购");
			}
		}

		return new ModelAndView("weixin/guanjia/location/goLocationAround");
	}
}