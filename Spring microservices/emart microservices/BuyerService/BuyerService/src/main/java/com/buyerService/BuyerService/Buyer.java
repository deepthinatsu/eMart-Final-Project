package com.buyerService.BuyerService;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name="buyer_signup_table")
public class Buyer{

	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "buyer_id")
	private Integer buyer_id;
	
	//private String fullName;
	@Column(name = "buyer_email")
	private String buyer_email;
	
	@Column(name = "buyer_mobile")
	private int buyer_mobile;
	
	
	@Column(name = "buyer_username")
	private String buyer_username;
	
	@Column(name = "buyer_password")
	private String buyer_password;

	@Column(name = "buyer_date")
	private Date buyer_date;

	public Integer getBuyer_id() {
		return buyer_id;
	}

	public void setBuyer_id(Integer buyer_id) {
		this.buyer_id = buyer_id;
	}

	public String getBuyer_email() {
		return buyer_email;
	}

	public void setBuyer_email(String buyer_email) {
		this.buyer_email = buyer_email;
	}

	public int getBuyer_mobile() {
		return buyer_mobile;
	}

	public void setBuyer_mobile(int buyer_mobile) {
		this.buyer_mobile = buyer_mobile;
	}

	public String getBuyer_username() {
		return buyer_username;
	}

	public void setBuyer_username(String buyer_username) {
		this.buyer_username = buyer_username;
	}

	public String getBuyer_password() {
		return buyer_password;
	}

	public void setBuyer_password(String buyer_password) {
		this.buyer_password = buyer_password;
	}

	public Date getBuyer_date() {
		return buyer_date;
	}

	public void setBuyer_date(Date buyer_date) {
		this.buyer_date = buyer_date;
	}

	public Buyer(Integer buyer_id, String buyer_email, int buyer_mobile, String buyer_username, String buyer_password,
			Date buyer_date) {
		super();
		this.buyer_id = buyer_id;
		this.buyer_email = buyer_email;
		this.buyer_mobile = buyer_mobile;
		this.buyer_username = buyer_username;
		this.buyer_password = buyer_password;
		this.buyer_date = buyer_date;
	}

	public Buyer() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Buyer [buyer_id=" + buyer_id + ", buyer_email=" + buyer_email + ", buyer_mobile=" + buyer_mobile
				+ ", buyer_username=" + buyer_username + ", buyer_password=" + buyer_password + ", buyer_date="
				+ buyer_date + "]";
	}

	
	
	
	
	}
	
	
	
	
	
	
	
	
	
	//@Transient
	//private String registerStatus;
	//private long code;
	//private String active="no";
	
//	public String getRegisterStatus() {
//		return registerStatus;
//	}
//	public void setRegisterStatus(String registerStatus) {
//		this.registerStatus = registerStatus;
//	}
//	public long getCode() {
//		return code;
//	}
//	public void setCode(long code) {
//		this.code = code;
//	}
//	public String getActive() {
//		return active;
//	}
//	public void setActive(String active) {
//		this.active = active;
//	}
	
//		this.registerStatus = registerStatus;
//		this.code = code;
//		this.active = active;
	

	
	
