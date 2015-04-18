package weixin.bbs.common;

import java.util.HashMap;
import java.util.Map;

public class BbsDataContent {
	public static final String BBS_CONTENT_KEY = "bbsData";
	private static final Map<String, Object> bbsContent = new HashMap<String, Object>();
	private static final Map<String, Object> bbsData = new HashMap<String, Object>();

	public static void put(String key, Object object) {
		bbsData.put(key, object);
	}

	public static Object get(String key) {
		return bbsData.get(key);
	}

	public static Map<String, Object> loadContent() {
		bbsContent.put("bbsData", bbsData);
		return bbsContent;
	}
}