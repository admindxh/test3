package weixin.idea.votepk.view;

public class WeixinVotePKRecordView
{
  private String openid;
  private String nickname;
  private String imgurl;
  private String accountid;
  private String votedate;
  private String votetype;
  private Integer votecount;

  public String getOpenid()
  {
    return this.openid;
  }
  public void setOpenid(String openid) {
    this.openid = openid;
  }
  public String getNickname() {
    return this.nickname;
  }
  public void setNickname(String nickname) {
    this.nickname = nickname;
  }
  public String getImgurl() {
    return this.imgurl;
  }
  public void setImgurl(String imgurl) {
    this.imgurl = imgurl;
  }
  public String getAccountid() {
    return this.accountid;
  }
  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }
  public String getVotedate() {
    return this.votedate;
  }
  public void setVotedate(String votedate) {
    this.votedate = votedate;
  }
  public String getVotetype() {
    return this.votetype;
  }
  public void setVotetype(String votetype) {
    this.votetype = votetype;
  }
  public Integer getVotecount() {
    return this.votecount;
  }
  public void setVotecount(Integer votecount) {
    this.votecount = votecount;
  }
}