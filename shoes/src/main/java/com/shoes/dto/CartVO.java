package com.shoes.dto;

import java.sql.Timestamp;

public class CartVO {
	private int cseq, quantity, price, psize;
	private String id, shoescode, mname, pname, color, infoimg, result;
	private Timestamp indate;

	public int getCseq() {
		return cseq;
	}

	public void setCseq(int cseq) {
		this.cseq = cseq;
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

	public int getPsize() {
		return psize;
	}

	public void setPsize(int psize) {
		this.psize = psize;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getShoescode() {
		return shoescode;
	}

	public void setShoescode(String shoescode) {
		this.shoescode = shoescode;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getInfoimg() {
		return infoimg;
	}

	public void setInfoimg(String infoimg) {
		this.infoimg = infoimg;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Timestamp getIndate() {
		return indate;
	}

	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}

}
