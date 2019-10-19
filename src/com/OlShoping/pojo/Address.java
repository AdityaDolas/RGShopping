package com.OlShoping.pojo;

public class Address {
	private int AddId;
	private String street;
	private String Bnum;
	private String location;
	private String city;
	private String state;
	private String pincode;
	private String EmailId;
	public int getAddId() {
		return AddId;
	}
	public void setAddId(int addId) {
		AddId = addId;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getBnum() {
		return Bnum;
	}
	public void setBnum(String bnum) {
		Bnum = bnum;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}


	
}
