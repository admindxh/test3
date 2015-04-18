package weixin.guanjia.core.util.weather;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.jeecgframework.core.util.LogUtil;

public class MapUtil {
	private static final Logger logger = Logger.getLogger(MapUtil.class);

	private static void iterateWholeXML(String filename, HashMap<String, String> map) {
		SAXReader saxReader = new SAXReader();
		try {
			LogUtil.info("filename=" + filename);
			Document document = saxReader.read(new File(filename));
			Element root = document.getRootElement();
			Iterator iterProvince = root.elementIterator();
			while (iterProvince.hasNext()) {
				Element province = (Element) iterProvince.next();
				Iterator iterCity = province.elementIterator();
				while (iterCity.hasNext()) {
					Element city = (Element) iterCity.next();
					Iterator iterCountry = city.elementIterator();
					while (iterCountry.hasNext()) {
						Element country = (Element) iterCountry.next();
						String name = country.attributeValue("name");
						String code = country.attributeValue("weatherCode");
						map.put(name, code);
					}
				}
			}
		} catch (DocumentException e) {
			e.printStackTrace();
		}
	}

	public static String getPlaceIdByName(String placeName, String filepach) {
		String placeId = "";
		if (placeName.matches("[0-9]*"))
			return placeName;
		try {
			HashMap map = new HashMap();
			iterateWholeXML(filepach + "/WeatherCode.xml", map);
			placeId = (String) map.get(placeName);
		} catch (Exception ex) {
			ex.printStackTrace();
			logger.error(ex);
		}
		return placeId;
	}
}