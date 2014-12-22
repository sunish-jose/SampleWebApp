package com.bsg.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="TB_Client_Module")
public class ClientModule implements Serializable{

	private static final long serialVersionUID = 2154124265466224051L;
	
	private Client client;
	
	private Module module;
	
	@Column(name="Start_Date")
	private Date startDate;
	
	@Column(name="End_Date")
	private Date endDate;

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public Module getModule() {
		return module;
	}

	public void setModule(Module module) {
		this.module = module;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

}
