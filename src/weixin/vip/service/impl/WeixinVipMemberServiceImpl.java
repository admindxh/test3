package weixin.vip.service.impl;

import java.util.Date;
import java.util.List;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import weixin.vip.entity.WeixinVipInfoEntity;
import weixin.vip.entity.WeixinVipMemberEntity;
import weixin.vip.service.WeixinVipInfoServiceI;
import weixin.vip.service.WeixinVipMemberServiceI;

@Service("weixinVipMemberService")
@Transactional
public class WeixinVipMemberServiceImpl extends CommonServiceImpl
  implements WeixinVipMemberServiceI
{

  @Autowired
  private WeixinVipInfoServiceI weixinVipInfoService;

  public void saveMemberByVip(TSUser user)
  {
    WeixinVipMemberEntity member = new WeixinVipMemberEntity();
    WeixinVipInfoEntity vipinfo = (WeixinVipInfoEntity)this.weixinVipInfoService.get(WeixinVipInfoEntity.class, "402881e5479afd0101479b7d792e002f");
    member.setTsuer(user);
    member.setVipInfo(vipinfo);
    member.setCreateTime(new Date());
    member.setMemberName(user.getUserName());
    super.save(member);
  }

  public Boolean updateMemberIntegral(String userid, String accountid, Integer integral) {
    Boolean flag = Boolean.valueOf(false);
    try
    {
      List<WeixinVipInfoEntity> list = this.weixinVipInfoService.findByQueryString("from WeixinVipInfoEntity vipinfo where vipinfo.accountid='" + accountid + "' order by vipinfo.levelId asc");

      String ids = "";
      for (WeixinVipInfoEntity v : list) {
        ids = ids + "'" + v.getId() + "',";
      }
      ids = ids.substring(0, ids.length() - 1);

      List memberlist = findByQueryString("from WeixinVipMemberEntity m where m.vipInfo in (" + ids + ") and m.tsuer = '" + userid + "'");

      if ((memberlist != null) && (memberlist.size() > 0)) {
        WeixinVipMemberEntity membervip = (WeixinVipMemberEntity)memberlist.get(0);

        if (integral.intValue() > 0) {
          membervip.setMemberIntegral(Integer.valueOf(membervip.getMemberIntegral().intValue() + integral.intValue()));
        }
        else if (membervip.getMemberIntegral().intValue() + integral.intValue() >= 0) {
          membervip.setMemberIntegral(Integer.valueOf(membervip.getMemberIntegral().intValue() + integral.intValue()));
        }

        saveOrUpdate(membervip);
        flag = Boolean.valueOf(true);
      }
    } catch (Exception e) {
      flag = Boolean.valueOf(false);
    }
    return flag;
  }
}