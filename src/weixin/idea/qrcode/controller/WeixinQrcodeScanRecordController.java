package weixin.idea.qrcode.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import weixin.guanjia.account.service.WeixinAccountServiceI;
import weixin.idea.qrcode.entity.WeixinQrcodeScanRecord;
import weixin.idea.qrcode.service.WeixinQrcodeScanRecordServiceI;

@Scope("prototype")
@Controller
@RequestMapping({"/weixinQrcodeScanRecordController"})
public class WeixinQrcodeScanRecordController extends BaseController
{
  private static final Logger logger = Logger.getLogger(WeixinQrcodeScanRecordController.class);

  @Autowired
  private WeixinQrcodeScanRecordServiceI weixinQrcodeScanRecordService;

  @Autowired
  private SystemService systemService;

  @Autowired
  private WeixinAccountServiceI weixinAccountService;
  private String message;

  public String getMessage() { return this.message; }

  public void setMessage(String message)
  {
    this.message = message;
  }

  @RequestMapping(params={"weixinQrcodeScanRecord"})
  public ModelAndView weixinQrcodeScene(HttpServletRequest request) {
    return new ModelAndView("weixin/idea/qrcode/weixinQrcodeScanRecordList");
  }
  @RequestMapping(params={"datagrid"})
  public void datagrid(WeixinQrcodeScanRecord weixinQrcode, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
    CriteriaQuery cq = new CriteriaQuery(WeixinQrcodeScanRecord.class, dataGrid);

    HqlGenerateUtil.installHql(cq, weixinQrcode, request.getParameterMap());
    try
    {
      cq.eq("accountid", ResourceUtil.getShangJiaAccountId());
    } catch (Exception e) {
      throw new BusinessException(e.getMessage());
    }
    cq.add();
    this.weixinQrcodeScanRecordService.getDataGridReturn(cq, true);
    TagUtil.datagrid(response, dataGrid);
  }
}