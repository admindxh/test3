package weixin.vip.common;

public enum WeixinVipEnum
{
  VIP_LEVEL_ONE("铁牌会员", Integer.valueOf(1)), 
  VIP_LEVEL_TWO("铜牌会员", Integer.valueOf(2)), 
  VIP_LEVEL_THREE("银牌会员", Integer.valueOf(3)), 
  VIP_LEVEL_FOUR("金牌会员", Integer.valueOf(4)), 
  VIP_LEVEL_FIVE("钻石会员", Integer.valueOf(5));

  private String levelName;
  private Integer levelIndex;

  private WeixinVipEnum(String levelName, Integer levelIndex) { this.levelName = levelName;
    this.levelIndex = levelIndex;
  }

  public static String getLevelName(Integer levelIndex)
  {
    for (WeixinVipEnum level : values()) {
      if (level.getLevelIndex() == levelIndex) {
        return level.getLevelName();
      }
    }
    return null;
  }

  public String getLevelName() {
    return this.levelName;
  }
  public void setLevelName(String levelName) {
    this.levelName = levelName;
  }
  public Integer getLevelIndex() {
    return this.levelIndex;
  }
  public void setLevelIndex(Integer levelIndex) {
    this.levelIndex = levelIndex;
  }
}