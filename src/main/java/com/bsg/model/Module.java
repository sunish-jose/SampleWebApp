package com.bsg.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TB_Module")
public class Module implements Serializable{

	private static final long serialVersionUID = -3681046232654655833L;
	
	@Id
	@Column(name="Module_ID")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long moduleId;
	
	@Column(name="Description")
	private String description;
	
	@Column(name="Mod_Type_Code")
	private char moduleType;

	public long getModuleId() {
		return moduleId;
	}
	
	public void setModuleId(long moduleId) {
		this.moduleId = moduleId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public char getModuleType() {
		return moduleType;
	}

	public void setModuleType(char moduleType) {
		this.moduleType = moduleType;
	}

}
