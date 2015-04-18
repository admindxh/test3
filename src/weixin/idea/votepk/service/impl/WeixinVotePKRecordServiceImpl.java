package weixin.idea.votepk.service.impl;

import java.util.List;
import net.sf.json.JSONObject;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import weixin.guanjia.core.util.WeixinUtil;
import weixin.guanjia.gzuserinfo.entity.GzUserInfoYw;
import weixin.guanjia.gzuserinfo.service.GzUserInfoService;
import weixin.guanjia.message.model.TextItem;
import weixin.guanjia.message.model.TextMessageKf;
import weixin.guanjia.message.service.CustomerMessageService;
import weixin.idea.votepk.entity.WeixinVotePKRecord;
import weixin.idea.votepk.service.WeixinVotePKRecordService;

@Service("weixinVotePKRecordService")
public class WeixinVotePKRecordServiceImpl extends CommonServiceImpl
  implements WeixinVotePKRecordService
{

  @Autowired
  private GzUserInfoService gzUserInfoService;

  @Autowired
  private CustomerMessageService customerMessageService;

  public List<WeixinVotePKRecord> getVotePkRecordList(String openid, String accountid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinVotePKRecord.class);
    try
    {
      cq.eq("accountid", accountid);
      cq.eq("openid", openid);
      cq.eq("subscribe", "1");
    }
    catch (Exception e) {
      throw new BusinessException(e.getMessage());
    }
    cq.add();
    List recordlist = getListByCriteriaQuery(cq, Boolean.valueOf(false));
    return recordlist;
  }

  public List<WeixinVotePKRecord> getSelfVotePkRecordList(String openid, String accountid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinVotePKRecord.class);
    try
    {
      cq.eq("accountid", accountid);
      cq.eq("voteopenid", openid);
    }
    catch (Exception e) {
      throw new BusinessException(e.getMessage());
    }
    cq.add();
    List recordlist = getListByCriteriaQuery(cq, Boolean.valueOf(false));
    return recordlist;
  }

  public boolean checkVote(String openid, String voteopenid, String accountid)
  {
    CriteriaQuery cq = new CriteriaQuery(WeixinVotePKRecord.class);
    try
    {
      cq.eq("accountid", accountid);
      cq.eq("openid", openid);
      cq.eq("voteopenid", voteopenid);
    }
    catch (Exception e) {
      throw new BusinessException(e.getMessage());
    }
    cq.add();
    List recordlist = getListByCriteriaQuery(cq, Boolean.valueOf(false));
    if (recordlist.size() != 0) {
      return true;
    }
    return false;
  }

  public void sendMsg(String openid, String voteopenid, String accountid, String type)
  {
    GzUserInfoYw beivoteuser = this.gzUserInfoService.getLocalUserinfo(openid, accountid);
    GzUserInfoYw voteuser = this.gzUserInfoService.getLocalUserinfo(voteopenid, accountid);
    String content = "投票成功";
    String content2 = "投票成功";
    if ("1".equals(type)) {
      if (beivoteuser != null) {
        content = "您好，微信用户：" + new String(WeixinUtil.decode(voteuser.getNickname())) + "通过网页端，为您投了一票。";
      }
      if (voteuser != null)
        content2 = "您好，您成功为微信用户：" + new String(WeixinUtil.decode(beivoteuser.getNickname())) + "投了一票。";
    }
    else if ("2".equals(type)) {
      if (beivoteuser != null) {
        content = "您好，微信用户：" + new String(WeixinUtil.decode(voteuser.getNickname())) + "通过二维码扫描，为您投了一票。";
      }
      if (voteuser != null)
        content2 = "您好，您成功为微信用户：" + new String(WeixinUtil.decode(beivoteuser.getNickname())) + "通过二维码扫描投了一票。";
    }
    else if ("3".equals(type)) {
      if (beivoteuser != null) {
        content = "您好，微信用户：" + new String(WeixinUtil.decode(voteuser.getNickname())) + "通过分享朋友圈，为您增加了更多票数。";
      }
      if (voteuser != null) {
        content2 = "您好，您成功为微信用户：" + new String(WeixinUtil.decode(beivoteuser.getNickname())) + "通过分享朋友圈投票。";
      }
    }
    TextMessageKf customMessage = new TextMessageKf();
    customMessage.setMsgtype("text");
    TextItem textItem = new TextItem();
    textItem.setContent(content);
    customMessage.setText(textItem);
    customMessage.setTouser(beivoteuser.getOpenid());
    JSONObject jsonObj = JSONObject.fromObject(customMessage);
    this.customerMessageService.sendMessage(jsonObj.toString(), accountid);
    customMessage.setTouser(voteuser.getOpenid());
    textItem.setContent(content2);
    jsonObj = JSONObject.fromObject(customMessage);
    this.customerMessageService.sendMessage(jsonObj.toString(), accountid);
  }
}