package weixin.guanjia.core.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.core.service.impl.WechatService;
import weixin.guanjia.core.util.SignUtil;

@Controller
@RequestMapping({ "/wechatController" })
public class WechatController {

	@Autowired
	private WechatService wechatService;

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	@RequestMapping(params = { "wechat" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public void wechatGet(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("signature") String signature, @RequestParam("timestamp") String timestamp,
			@RequestParam("nonce") String nonce, @RequestParam("echostr") String echostr) {
		List<WeixinAccountEntity> weixinAccountEntities = this.weixinAccountService.getList(WeixinAccountEntity.class);
		for (WeixinAccountEntity account : weixinAccountEntities) {
			if (SignUtil.checkSignature(account.getAccounttoken(), signature, timestamp, nonce)) {
				try {
					response.getWriter().print(echostr);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	@RequestMapping(params = { "wechat" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public void wechatPost(HttpServletResponse response, HttpServletRequest request) throws IOException {
		String respMessage = this.wechatService.coreService(request);
		PrintWriter out = response.getWriter();
		out.print(respMessage);
		out.close();
	}
}