package weixin.idea.extend.function;

import javax.servlet.http.HttpServletRequest;
import weixin.guanjia.core.entity.message.resp.TextMessageResp;

public abstract interface KeyServiceI
{
  public abstract String getKey();

  public abstract String excute(String paramString, TextMessageResp paramTextMessageResp, HttpServletRequest paramHttpServletRequest);
}