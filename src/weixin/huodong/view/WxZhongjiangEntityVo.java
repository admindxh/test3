package weixin.huodong.view;

import java.io.Serializable;
import org.jeecgframework.poi.excel.annotation.Excel;

public class WxZhongjiangEntityVo
  implements Serializable
{
  private static final long serialVersionUID = 1L;

  @Excel(exportName="社区平台名称")
  private String platformName;

  @Excel(exportName="活动名称")
  private String huoddongName;

  @Excel(exportName="奖品级别")
  private String jpLevel;

  @Excel(exportName="兑奖状态")
  private String jpFlag;

  @Excel(exportName="平台账号")
  private String userAccount;

  @Excel(exportName="奖品名称")
  private String jpName;

  @Excel(exportName="奖品代码")
  private String jpCode;

  @Excel(exportName="兑奖人姓名")
  private String userAnme;

  @Excel(exportName="联系方式")
  private String userTelphone;

  @Excel(exportName="收件地址")
  private String userAddress;

  @Excel(exportName="备注")
  private String content;

  @Excel(exportName="身份证正面", exportType=2, exportFieldHeight=15, exportFieldWidth=20)
  private String idcardAFile;

  @Excel(exportName="身份证反面", exportType=2, exportFieldHeight=15, exportFieldWidth=20)
  private String idcardBFile;

  public String getPlatformName()
  {
    return this.platformName;
  }
  public void setPlatformName(String platformName) {
    this.platformName = platformName;
  }
  public String getHuoddongName() {
    return this.huoddongName;
  }
  public void setHuoddongName(String huoddongName) {
    this.huoddongName = huoddongName;
  }
  public String getJpLevel() {
    return this.jpLevel;
  }
  public void setJpLevel(String jpLevel) {
    this.jpLevel = jpLevel;
  }
  public String getJpFlag() {
    return this.jpFlag;
  }
  public void setJpFlag(String jpFlag) {
    this.jpFlag = jpFlag;
  }
  public String getUserAccount() {
    return this.userAccount;
  }
  public void setUserAccount(String userAccount) {
    this.userAccount = userAccount;
  }
  public String getJpName() {
    return this.jpName;
  }
  public void setJpName(String jpName) {
    this.jpName = jpName;
  }
  public String getJpCode() {
    return this.jpCode;
  }
  public void setJpCode(String jpCode) {
    this.jpCode = jpCode;
  }
  public String getUserAnme() {
    return this.userAnme;
  }
  public void setUserAnme(String userAnme) {
    this.userAnme = userAnme;
  }
  public String getUserTelphone() {
    return this.userTelphone;
  }
  public void setUserTelphone(String userTelphone) {
    this.userTelphone = userTelphone;
  }
  public String getUserAddress() {
    return this.userAddress;
  }
  public void setUserAddress(String userAddress) {
    this.userAddress = userAddress;
  }
  public String getContent() {
    return this.content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public String getIdcardAFile() {
    return this.idcardAFile;
  }
  public void setIdcardAFile(String idcardAFile) {
    this.idcardAFile = idcardAFile;
  }
  public String getIdcardBFile() {
    return this.idcardBFile;
  }
  public void setIdcardBFile(String idcardBFile) {
    this.idcardBFile = idcardBFile;
  }
}