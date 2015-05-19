package org.jeecgframework.core.common.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.jeecgframework.core.common.service.CommonService;
import org.jeecgframework.core.interceptors.DateConvertEditor;
import org.jeecgframework.core.util.LogUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.ServletConfigAware;


/**
 * 基础控制器，其他控制器需集成此控制器获得initBinder自动转换的功能
 * @author  张代浩
 * 
 */
public class BaseController  implements ServletConfigAware{
	
	
	private  ServletConfig  myServConfig ;
	
	public static final  String ACCOUNTID="accountid";

	/**
	 * 将前台传递过来的日期格式的字符串，自动转化为Date类型
	 * 
	 * @param binder
	 */
	@InitBinder
	public void initBinder(ServletRequestDataBinder binder) {
//		SimpleDateFormat dateFormat = new SimpleDateFormat(
//				"yyyy-MM-dd hh:mm:ss");
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(
//				dateFormat, true));
		binder.registerCustomEditor(Date.class, new DateConvertEditor());
	}

	/**
	 * 分页公共方法(非easyui)
	 * 
	 * @author Alexander
	 * @date 20131022
	 */
	public List<?> pageBaseMethod(HttpServletRequest request,
			DetachedCriteria dc, CommonService commonService, int pageRow) {
		// 当前页
		// 总条数
		// 总页数

		int currentPage = 1;

		int totalRow = 0;
		int totalPage = 0;
		// 获取当前页
		String str_currentPage = request.getParameter("str_currentPage");
		currentPage = str_currentPage == null || "".equals(str_currentPage) ? 1
				: Integer.parseInt(str_currentPage);
		// 获取每页的条数
		String str_pageRow = request.getParameter("str_pageRow");
		pageRow = str_pageRow == null || "".equals(str_pageRow) ? pageRow
				: Integer.parseInt(str_pageRow);

		// 统计的总行数
		dc.setProjection(Projections.rowCount());

		totalRow = Integer.parseInt(commonService.findByDetached(dc).get(0)
				.toString());
		totalPage = (totalRow + pageRow - 1) / pageRow;

		currentPage = currentPage < 1 ? 1 : currentPage;
		currentPage = currentPage > totalPage ? totalPage : currentPage;
		// 清空统计函数
		dc.setProjection(null);
		// dc.setResultTransformer(dc.DISTINCT_ROOT_ENTITY);
		List<?> list = commonService.pageList(dc, (currentPage - 1) * pageRow,
				pageRow);

		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pageRow", pageRow);
		request.setAttribute("totalRow", totalRow);
		request.setAttribute("totalPage", totalPage);
		return list;
	}

	@Override
	public void setServletConfig(ServletConfig arg0) {
		// TODO Auto-generated method stub
		myServConfig =  arg0;
	}
	public String getMyRootUrl(String url)
	  {  
	  LogUtil.info(myServConfig+"---------myServconfig");
	  LogUtil.info(myServConfig+"---------myServconfig");
	  LogUtil.info(myServConfig.getServletContext().getRealPath("/")+"---------myServConfig.getServletContext().getRealPath");
	  String   rootUrl =                myServConfig.getServletContext().getRealPath("/")+url;
	    //为了兼容多个应用项目 获取方式
	    return rootUrl;
	  }     

	public ServletConfig getMyServConfig() {
		return myServConfig;
	}

	public void setMyServConfig(ServletConfig myServConfig) {
		this.myServConfig = myServConfig;
	}
	
}
