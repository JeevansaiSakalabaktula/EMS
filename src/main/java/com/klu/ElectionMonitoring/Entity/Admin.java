package com.klu.ElectionMonitoring.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Admin {
	@Id
	private String username;
	private String full_name;
	private String phone;
	private String address;
	private String email;
	private String password;
	private String cpassword;
	private String disignation;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public String getDisignation() {
		return disignation;
	}
	public void setDisignation(String disignation) {
		this.disignation = disignation;
	}
	

}
