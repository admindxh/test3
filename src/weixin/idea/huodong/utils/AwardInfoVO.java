package weixin.idea.huodong.utils;

import java.util.ArrayList;
import java.util.List;

public class AwardInfoVO {
	private String hdid;
	private String awardsid;
	private String awardsname;
	private List<String> awardidlist = new ArrayList<String>();

	private List<String> awardnamelist = new ArrayList<String>();

	private Integer amount = Integer.valueOf(0);

	public String getHdid() {
		return this.hdid;
	}

	public void setHdid(String hdid) {
		this.hdid = hdid;
	}

	public String getAwardsid() {
		return this.awardsid;
	}

	public void setAwardsid(String awardsid) {
		this.awardsid = awardsid;
	}

	public String getAwardsname() {
		return this.awardsname;
	}

	public void setAwardsname(String awardsname) {
		this.awardsname = awardsname;
	}

	public List<String> getAwardidlist() {
		return this.awardidlist;
	}

	public void setAwardidlist(List<String> awardidlist) {
		this.awardidlist = awardidlist;
	}

	public List<String> getAwardnamelist() {
		return this.awardnamelist;
	}

	public void setAwardnamelist(List<String> awardnamelist) {
		this.awardnamelist = awardnamelist;
	}

	public Integer getAmount() {
		return this.amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}
}