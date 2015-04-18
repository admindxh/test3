package weixin.bbs.bbsdata;

import java.util.Map;

public abstract interface DataCollectI
{
  public abstract void collect(Map<String, String> paramMap);
}