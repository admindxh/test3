package weixin.guanjia.base.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.jeecgframework.core.common.entity.IdEntity;

@Entity
@Table(name = "weixin_expandconfig", schema = "")
public class WeixinExpandconfigEntity extends IdEntity {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -3898327881132898152L;
	private String keyword;
	private String classname;
	private String accountId;
	private String name;
	private String content;

	@Column(name = "KEYWORD", nullable = false, length = 100)
	public String getKeyword() {
		return this.keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Column(name = "CLASSNAME", nullable = false, length = 100)
	public String getClassname() {
		return this.classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	@Column(name = "ACCOUNTID", nullable = true, length = 200)
	public String getAccountId() {
		return this.accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}

	@Column(name = "NAME", nullable = true, length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "CONTENT", nullable = true, length = 300)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}