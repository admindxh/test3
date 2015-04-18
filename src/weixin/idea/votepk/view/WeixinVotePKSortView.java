package weixin.idea.votepk.view;

public class WeixinVotePKSortView
{
  private String openid;
  private String accountid;
  private String imgurl;
  private int votecount;
  private String nickname;

  public String getOpenid()
  {
    return this.openid;
  }
  public void setOpenid(String openid) {
    this.openid = openid;
  }
  public String getAccountid() {
    return this.accountid;
  }
  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }
  public String getImgurl() {
    return this.imgurl;
  }
  public void setImgurl(String imgurl) {
    this.imgurl = imgurl;
  }
  public String getNickname() {
    return this.nickname;
  }
  public void setNickname(String nickname) {
    this.nickname = nickname;
  }
  public int getVotecount() {
    return this.votecount;
  }
  public void setVotecount(int votecount) {
    this.votecount = votecount;
  }
}