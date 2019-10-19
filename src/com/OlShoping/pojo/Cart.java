package com.OlShoping.pojo;

public class Cart {
	private int cid;
	private String Pname;
	private double Pprice;
	private String Discription;
	private int Pid;
	private String Email;
	private String Pqty;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		Pname = pname;
	}
	public double getPprice() {
		return Pprice;
	}
	public void setPprice(double pprice) {
		Pprice = pprice;
	}
	public String getDiscription() {
		return Discription;
	}
	public void setDiscription(String discription) {
		Discription = discription;
	}
	public int getPid() {
		return Pid;
	}
	public void setPid(int pid) {
		Pid = pid;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPqty() {
		return Pqty;
	}
	public void setPqty(String pqty) {
		Pqty = pqty;
	}
	
	public String toString() {
		return "Cart [cid=" + cid + ", Pname=" + Pname + ", Pprice=" + Pprice + ", Discription=" + Discription
				+ ", Pid=" + Pid + ", Email=" + Email + ", Pqty=" + Pqty + "]";
	}
	

}
