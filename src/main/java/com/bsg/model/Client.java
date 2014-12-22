package com.bsg.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TB_Client")
public class Client implements Serializable{

	private static final long serialVersionUID = -5367287264182412741L;
	
	@Id
	@Column(name="Service_ID")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long serviceId;
	
	@Column(name="Start_Date")
	private Date startDate;
	
	@Column(name="End_Date")
	private Date endDate;

	public long getServiceId() {
		return serviceId;
	}

	public void setServiceId(long serviceId) {
		this.serviceId = serviceId;
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
