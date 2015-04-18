package weixin.idea.qrcode.service.impl;

import java.util.List;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.idea.qrcode.entity.WeixinQrcodeSceneSeq;
import weixin.idea.qrcode.service.WeixinQrcodeSceneSeqServiceI;

@Service("weixinQrcodeSceneSeqService")
@Transactional
public class WeixinQrcodeSceneSeqServiceImpl extends CommonServiceImpl
  implements WeixinQrcodeSceneSeqServiceI
{
  public WeixinQrcodeSceneSeq getQrcodeSceneseq(String accountid)
  {
    List seqlist = findByProperty(WeixinQrcodeSceneSeq.class, "accountid", accountid);
    if (seqlist.size() != 0) {
      WeixinQrcodeSceneSeq seq = (WeixinQrcodeSceneSeq)seqlist.get(0);
      seq.setCount(Integer.valueOf(seq.getCount().intValue() + 1));
      updateEntitie(seq);
      return (WeixinQrcodeSceneSeq)seqlist.get(0);
    }
    WeixinQrcodeSceneSeq seq = new WeixinQrcodeSceneSeq();
    seq.setCount(Integer.valueOf(0));
    seq.setAccountid(accountid);
    save(seq);
    return seq;
  }
}