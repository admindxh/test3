package weixin.guanjia.core.util.weather;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import net.sf.json.JSONObject;
import org.jeecgframework.core.util.LogUtil;

public class Weather {
	public Map<String, Object> report(String name, String filepach) {
		String placeId = MapUtil.getPlaceIdByName(name, filepach);
		Map<String, Object> map = new HashMap<String, Object>();
		String url = "http://m.weather.com.cn/data/" + placeId + ".html";
		String content = UrlUtil.getURLContent(url);

		map = setData(content);
		return map;
	}

	public Map<String, Object> report2(String name, String filepach) {
		String placeId = MapUtil.getPlaceIdByName(name, filepach);
		Map<String, Object> map = new HashMap<String, Object>();
		String url = "http://www.weather.com.cn/data/sk/" + placeId + ".html";
		String content = UrlUtil.getURLContent(url);

		map = setData2(content);
		return map;
	}

	private Map<String, Object> setData(String datas) {
		if (!datas.startsWith("{")) {
			LogUtil.info("数据获取失败");
			return null;
		}

		Map<String, Object> map = new HashMap<String, Object>();

		JSONObject data = JSONObject.fromObject(datas);
		JSONObject info = data.getJSONObject("weatherinfo");
		LogUtil.info(info);
		for (int i = 1; i <= 6; i++) {
			Calendar cal = Calendar.getInstance();
			cal.add(6, i - 1);
			Date date = cal.getTime();
			SimpleDateFormat sf = new SimpleDateFormat("MM月dd日");
			map.put("mydate" + i, sf.format(date));
			map.put("myweek" + i, getWeek(cal.get(7)));
			map.put("weather" + i, info.getString("weather" + i));
			map.put("img" + i, info.getString("img" + i));
			map.put("img_title" + i, info.getString("img_title" + i));
			map.put("temp" + i, info.getString("temp" + i));
			map.put("wind" + i, info.getString("wind" + i));
			map.put("fl" + i, info.getString("fl" + i));
		}
		map.put("city", info.getString("city"));
		map.put("city_en", info.getString("city_en"));
		map.put("date_y", info.getString("date_y"));
		map.put("date", info.getString("date"));
		map.put("week", info.getString("week"));
		map.put("fchh", info.getString("fchh"));
		map.put("cityid", info.getString("cityid"));

		map.put("index_d", info.getString("index_d"));

		return map;
	}

	private Map<String, Object> setData2(String datas) {
		if (!datas.startsWith("{")) {
			LogUtil.info("数据获取失败");
			return null;
		}

		Map<String, Object> map = new HashMap<String, Object>();

		JSONObject data = JSONObject.fromObject(datas);
		JSONObject info = data.getJSONObject("weatherinfo");
		LogUtil.info(info);
		map.put("city", info.getString("city"));
		map.put("cityid", info.getString("cityid"));
		map.put("temp", info.getString("temp"));
		map.put("WD", info.getString("WD"));
		map.put("WS", info.getString("WS"));
		map.put("SD", info.getString("SD"));
		map.put("WSE", info.getString("WSE"));
		map.put("time", info.getString("time"));
		map.put("isRadar", info.getString("isRadar"));
		map.put("Radar", info.getString("Radar"));

		return map;
	}

	public String getWeek(int iw) {
		String weekStr = "";
		switch (iw) {
		case 1:
			weekStr = "星期天";
			break;
		case 2:
			weekStr = "星期一";
			break;
		case 3:
			weekStr = "星期二";
			break;
		case 4:
			weekStr = "星期三";
			break;
		case 5:
			weekStr = "星期四";
			break;
		case 6:
			weekStr = "星期五";
			break;
		case 7:
			weekStr = "星期六";
			break;
		}

		return weekStr;
	}
}