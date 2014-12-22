package com.bsg.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="TB_Access_Rights")
public class AccessRight implements Serializable {

	private static final long serialVersionUID = 1329799749509392636L;
	
	@Column(name="Access_Right_ID")
	private long accessRightId;
	
	@Column(name="Deactivation_Date")
	private Date deactivationDate;
	
	private User user;
	
	private SubModule submodule;

	public long getAccessRightId() {
		return accessRightId;
	}

	public void setAccessRightId(long accessRightId) {
		this.accessRightId = accessRightId;
	}

	public Date getDeactivationDate() {
		return deactivationDate;
	}

	public void setDeactivationDate(Date deactivationDate) {
		this.deactivationDate = deactivationDate;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public SubModule getSubmodule() {
		return submodule;
	}

	public void setSubmodule(SubModule submodule) {
		this.submodule = submodule;
	}
	
}
