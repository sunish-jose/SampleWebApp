package com.bsg.report;

public class Employee {
    private int empNo;
    private int salary;
    private float commission;
    private String employFirstName;
    private String employLastName;
    private String employFullName;
 
    public Employee() {
    }
 
    public Employee(int empNo, int salary, float commission) {
        this.empNo = empNo;
        this.salary = salary;
        this.commission = salary*commission;
    }
    
    public Employee(int empNo, String empFirstName, String empLastName, int salary, float commission) {
        this.empNo = empNo;
        this.employFirstName=empFirstName;
        this.employLastName=empLastName;
        this.employFullName=employLastName+" "+employFirstName;
        this.salary = salary;
        this.commission = salary*commission;
    }

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public float getCommission() {
		return commission;
	}

	public void setCommission(float commission) {
		this.commission = commission;
	}

	public String getEmployFirstName() {
		return employFirstName;
	}

	public void setEmployFirstName(String employFirstName) {
		this.employFirstName = employFirstName;
	}

	public String getEmployLastName() {
		return employLastName;
	}

	public void setEmployLastName(String employLastName) {
		this.employLastName = employLastName;
	}

	public String getEmployFullName() {
		return employFullName;
	}

	public void setEmployFullName(String employFullName) {
		this.employFullName = employFullName;
	}
    
    
}
