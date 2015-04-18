package weixin.guanjia.message.entity;

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.jeecgframework.core.common.entity.IdEntity;

@Entity
@Table(name = "weixin_newstemplate")
public class NewsTemplate extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 2298369639004343568L;
	private String templateName;
	private String addTime;
	private String type;
	private List<NewsItem> newsItemList;
	private String accountId;

	@Column(name = "accountid", length = 100)
	public String getAccountId() {
		return this.accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}

	@Column(name = "tempatename")
	public String getTemplateName() {
		return this.templateName;
	}

	public void setTemplateName(String templateName) {
		this.templateName = templateName;
	}

	@Column(name = "addtime")
	public String getAddTime() {
		return this.addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

	@OneToMany(cascade = { javax.persistence.CascadeType.ALL }, fetch = FetchType.LAZY)
	@JoinColumn(name = "templateid")
	public List<NewsItem> getNewsItemList() {
		return this.newsItemList;
	}

	public void setNewsItemList(List<NewsItem> newsItemList) {
		this.newsItemList = newsItemList;
	}

	@Column(name = "type")
	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}
}