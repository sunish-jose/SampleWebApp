package com.bsg.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;

@Entity
@Table(name="TB_Sub_Module")
public class SubModule implements Serializable{

	private static final long serialVersionUID = 979599219256071150L;
	
	@Column(name="Sub_Module_ID")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long submoduleId;
	
	private Module module;
	
	@Column(name="Description")
	private String description;
	
	@Column(name="Page_Name")
	private String pageName;

	public long getSubmoduleId() {
		return submoduleId;
	}

	public void setSubmoduleId(long submoduleId) {
		this.submoduleId = submoduleId;
	}

	public Module getModule() {
		return module;
	}

	public void setModule(Module module) {
		this.module = module;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPageName() {
		return pageName;
	}

	public void setPageName(String pageName) {
		this.pageName = pageName;
	}
	
}
