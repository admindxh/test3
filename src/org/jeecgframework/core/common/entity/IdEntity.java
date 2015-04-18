package org.jeecgframework.core.common.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import org.hibernate.annotations.GenericGenerator;

/**
 * 所有实体类的基类
 * 
 * <p>创建时间: 2014年10月8日 下午3:09:28</p>
 * @author <a href="mailto:hongdanping@163.com">hdp</a>
 * @version V1.0
 * @since V1.0
 */
@MappedSuperclass
public abstract class IdEntity implements Serializable{
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -5449190835195698251L;
	private String id;

	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name ="ID",nullable=false,length=32)
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
