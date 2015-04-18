package weixin.guanjia.core.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import weixin.guanjia.account.entity.WeixinAccountEntity;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.guanjia.account.service.impl.WeixinAccountServiceImpl;
import weixin.guanjia.core.service.impl.WechatService;
import weixin.guanjia.core.util.SignUtil;

public class WeixinServlet extends HttpServlet {
	private static final long serialVersionUID = 4440739483644821986L;

	@Autowired
	private WeixinAccountServiceI weixinAccountService;

	public void init() throws ServletException {
		this.weixinAccountService = new WeixinAccountServiceImpl();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String signature = request.getParameter("signature");

		String timestamp = request.getParameter("timestamp");

		String nonce = request.getParameter("nonce");

		String echostr = request.getParameter("echostr");

		PrintWriter out = response.getWriter();
		List<WeixinAccountEntity> weixinAccountEntities = this.weixinAccountService.getList(WeixinAccountEntity.class);

		for (WeixinAccountEntity account : weixinAccountEntities) {
			if (SignUtil.checkSignature(account.getAccounttoken(), signature, timestamp, nonce)) {
				out.print(echostr);
			}
		}
		out.close();
		out = null;
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		WechatService wechatService = new WechatService();

		String respMessage = wechatService.coreService(request);

		PrintWriter out = response.getWriter();
		out.print(respMessage);
		out.close();
	}
}