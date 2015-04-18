package weixin.shop.base.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.BrowserUtils;
import org.jeecgframework.core.util.ExceptionUtil;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.entity.ExcelTitle;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import weixin.shop.base.entity.WeixinShopAddressEntity;
import weixin.shop.base.service.WeixinShopAddressServiceI;

@Scope("prototype")
@Controller
@RequestMapping({ "/weixinShopAddressController" })
public class WeixinShopAddressController extends BaseController {
	private static final Logger logger = Logger
			.getLogger(WeixinShopAddressController.class);

	@Autowired
	private WeixinShopAddressServiceI weixinShopAddressService;

	@Autowired
	private SystemService systemService;
	private String message;

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@RequestMapping(params = { "weixinShopAddress" })
	public ModelAndView weixinShopAddress(HttpServletRequest request) {
		return new ModelAndView("weixin//shop/base//weixinShopAddressList");
	}

	@RequestMapping(params = { "datagrid" })
	public void datagrid(WeixinShopAddressEntity weixinShopAddress,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(WeixinShopAddressEntity.class,
				dataGrid);

		HqlGenerateUtil.installHql(cq, weixinShopAddress,
				request.getParameterMap());

		cq.add();
		this.weixinShopAddressService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	@RequestMapping(params = { "doDel" })
	@ResponseBody
	public AjaxJson doDel(WeixinShopAddressEntity weixinShopAddress,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		weixinShopAddress = (WeixinShopAddressEntity) this.systemService
				.getEntity(WeixinShopAddressEntity.class,
						weixinShopAddress.getId());

		this.message = "商城地址信息删除成功";
		try {
			this.weixinShopAddressService.delete(weixinShopAddress);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "商城地址信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doDefault" })
	@ResponseBody
	public AjaxJson doDefault(WeixinShopAddressEntity weixinShopAddress,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.weixinShopAddressService.executeSql(
				"update weixin_shop_address set defaultflag=0 where userid = '"
						+ ResourceUtil.getSessionUserName().getId() + "'",
				new Object[0]);
		weixinShopAddress = (WeixinShopAddressEntity) this.systemService
				.getEntity(WeixinShopAddressEntity.class,
						weixinShopAddress.getId());

		weixinShopAddress.setDefaultflag(1);
		this.message = "设定成功";
		try {
			this.weixinShopAddressService.updateEntitie(weixinShopAddress);
			this.systemService.addLog(this.message, Globals.Log_Type_DEL,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "设定失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doBatchDel" })
	@ResponseBody
	public AjaxJson doBatchDel(String ids, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "商城地址信息删除成功";
		try {
			for (String id : ids.split(",")) {
				WeixinShopAddressEntity weixinShopAddress = (WeixinShopAddressEntity) this.systemService
						.getEntity(WeixinShopAddressEntity.class, id);

				this.weixinShopAddressService.delete(weixinShopAddress);
				this.systemService.addLog(this.message, Globals.Log_Type_DEL,
						Globals.Log_Leavel_INFO);
			}
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "商城地址信息删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doAdd" })
	@ResponseBody
	public AjaxJson doAdd(WeixinShopAddressEntity weixinShopAddress,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "商城地址信息添加成功";
		try {
			weixinShopAddress.setUserid(ResourceUtil.getSessionUserName()
					.getId());

			weixinShopAddress.setOpenid(ResourceUtil.getSessionUserName()
					.getId());

			weixinShopAddress.setDefaultflag(0);
			String address = weixinShopAddress.getProvince()
					+ weixinShopAddress.getCity() + weixinShopAddress.getArea()
					+ weixinShopAddress.getAddress()
					+ weixinShopAddress.getRealname()
					+ weixinShopAddress.getTel();

			weixinShopAddress.setAlladdress(address);
			this.weixinShopAddressService.save(weixinShopAddress);
			this.systemService.addLog(this.message, Globals.Log_Type_INSERT,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "地址信息添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "doUpdate" })
	@ResponseBody
	public AjaxJson doUpdate(WeixinShopAddressEntity weixinShopAddress,
			HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		this.message = "商城地址信息更新成功";
		WeixinShopAddressEntity t = (WeixinShopAddressEntity) this.weixinShopAddressService
				.get(WeixinShopAddressEntity.class, weixinShopAddress.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(weixinShopAddress, t);
			this.weixinShopAddressService.saveOrUpdate(t);
			this.systemService.addLog(this.message, Globals.Log_Type_UPDATE,
					Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			this.message = "商城地址信息更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(this.message);
		return j;
	}

	@RequestMapping(params = { "goAdd" })
	public ModelAndView goAdd(WeixinShopAddressEntity weixinShopAddress,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinShopAddress.getId())) {
			weixinShopAddress = (WeixinShopAddressEntity) this.weixinShopAddressService
					.getEntity(WeixinShopAddressEntity.class,
							weixinShopAddress.getId());

			req.setAttribute("weixinShopAddressPage", weixinShopAddress);
		}
		return new ModelAndView("weixin//shop/base//weixinShopAddress-add");
	}

	@RequestMapping(params = { "goUpdate" })
	public ModelAndView goUpdate(WeixinShopAddressEntity weixinShopAddress,
			HttpServletRequest req) {
		if (StringUtil.isNotEmpty(weixinShopAddress.getId())) {
			weixinShopAddress = (WeixinShopAddressEntity) this.weixinShopAddressService
					.getEntity(WeixinShopAddressEntity.class,
							weixinShopAddress.getId());

			req.setAttribute("weixinShopAddressPage", weixinShopAddress);
		}
		return new ModelAndView("weixin//shop/base//weixinShopAddress-update");
	}

	@RequestMapping(params = { "upload" })
	public ModelAndView upload(HttpServletRequest req) {
		return new ModelAndView("weixin//shop/base//weixinShopAddressUpload");
	}

	@RequestMapping(params = { "exportXls" })
	public void exportXls(WeixinShopAddressEntity weixinShopAddress,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "商城地址信息";

			if (BrowserUtils.isIE(request)) {
				response.setHeader(
						"content-disposition",
						"attachment;filename="
								+ URLEncoder.encode(codedFileName, "UTF-8")
								+ ".xls");
			} else {
				String newtitle = new String(codedFileName.getBytes("UTF-8"),
						"ISO8859-1");

				response.setHeader("content-disposition",
						"attachment;filename=" + newtitle + ".xls");
			}

			HSSFWorkbook workbook = null;
			CriteriaQuery cq = new CriteriaQuery(WeixinShopAddressEntity.class,
					dataGrid);

			HqlGenerateUtil.installHql(cq, weixinShopAddress,
					request.getParameterMap());

			List weixinShopAddresss = this.weixinShopAddressService
					.getListByCriteriaQuery(cq, Boolean.valueOf(false));

			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("商城地址信息列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinShopAddressEntity.class, weixinShopAddresss);

			fOut = response.getOutputStream();
			workbook.write(fOut);
		} catch (Exception e) {
		} finally {
			try {
				fOut.flush();
				fOut.close();
			} catch (IOException e) {
			}
		}
	}

	@RequestMapping(params = { "exportXlsByT" })
	public void exportXlsByT(WeixinShopAddressEntity weixinShopAddress,
			HttpServletRequest request, HttpServletResponse response,
			DataGrid dataGrid) {
		response.setContentType("application/vnd.ms-excel");
		String codedFileName = null;
		OutputStream fOut = null;
		try {
			codedFileName = "商城地址信息";

			if (BrowserUtils.isIE(request)) {
				response.setHeader(
						"content-disposition",
						"attachment;filename="
								+ URLEncoder.encode(codedFileName, "UTF-8")
								+ ".xls");
			} else {
				String newtitle = new String(codedFileName.getBytes("UTF-8"),
						"ISO8859-1");

				response.setHeader("content-disposition",
						"attachment;filename=" + newtitle + ".xls");
			}

			HSSFWorkbook workbook = null;
			workbook = ExcelExportUtil.exportExcel(new ExcelTitle("商城地址信息列表",
					"导出人:" + ResourceUtil.getSessionUserName().getRealName(),
					"导出信息"), WeixinShopAddressEntity.class, null);

			fOut = response.getOutputStream();
			workbook.write(fOut);
		} catch (Exception e) {
		} finally {
			try {
				fOut.flush();
				fOut.close();
			} catch (IOException e) {
			}
		}
	}

	@RequestMapping(params = { "importExcel" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	@ResponseBody
	public AjaxJson importExcel(HttpServletRequest request,
			HttpServletResponse response) {
		AjaxJson j = new AjaxJson();

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
		for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
			MultipartFile file = (MultipartFile) entity.getValue();
			ImportParams params = new ImportParams();
			params.setTitleRows(2);
			params.setSecondTitleRows(1);
			params.setNeedSave(true);
			try {
				List<WeixinShopAddressEntity> listWeixinShopAddressEntitys = (List) ExcelImportUtil
						.importExcelByIs(file.getInputStream(),
								WeixinShopAddressEntity.class, params);

				for (WeixinShopAddressEntity weixinShopAddress : listWeixinShopAddressEntitys) {
					this.weixinShopAddressService.save(weixinShopAddress);
				}
				j.setMsg("文件导入成功！");
			} catch (Exception e) {
				j.setMsg("文件导入失败！");
				logger.error(ExceptionUtil.getExceptionMessage(e));
			} finally {
				try {
					file.getInputStream().close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return j;
	}
}