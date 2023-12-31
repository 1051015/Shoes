package com.shoes.dto;

import java.sql.Timestamp;

public class OrderVO {
	private int odseq;
	private int oseq;
	private String id;
	private Timestamp indate;
	private String mname;
	private String zipNum;
	private String address;
	private String phone;
	private String shoescode;
	private String pname;
	private int quantity;
	private int price;
	private String result;

	public int getOdseq() {
		return odseq;
	}

	public void setOdseq(int odseq) {
		this.odseq = odseq;
	}

	public int getOseq() {
		return oseq;
	}

	public void setOseq(int oseq) {
		this.oseq = oseq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Timestamp getIndate() {
		return indate;
	}

	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getZipNum() {
		return zipNum;
	}

	public void setZipNum(String zipNum) {
		this.zipNum = zipNum;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getShoescode() {
		return shoescode;
	}

	public void setShoescode(String shoescode) {
		this.shoescode = shoescode;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
