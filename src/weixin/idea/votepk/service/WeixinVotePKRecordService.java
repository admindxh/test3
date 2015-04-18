package weixin.idea.votepk.service;

import java.util.List;
import org.jeecgframework.core.common.service.CommonService;
import weixin.idea.votepk.entity.WeixinVotePKRecord;

public abstract interface WeixinVotePKRecordService extends CommonService
{
  public abstract List<WeixinVotePKRecord> getVotePkRecordList(String paramString1, String paramString2);

  public abstract List<WeixinVotePKRecord> getSelfVotePkRecordList(String paramString1, String paramString2);

  public abstract boolean checkVote(String paramString1, String paramString2, String paramString3);

  public abstract void sendMsg(String paramString1, String paramString2, String paramString3, String paramString4);
}