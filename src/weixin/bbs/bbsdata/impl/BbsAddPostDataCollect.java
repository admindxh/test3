package weixin.bbs.bbsdata.impl;

import java.util.Map;
import weixin.bbs.bbsdata.DataCollectI;
import weixin.bbs.common.BbsConstant;
import weixin.bbs.common.BbsDataContent;

public class BbsAddPostDataCollect
  implements DataCollectI, BbsConstant
{
  public void collect(Map<String, String> params)
  {
    String res = "template/bbs/" + (String)params.get("styleName");

    BbsDataContent.put("base", res);
  }
}