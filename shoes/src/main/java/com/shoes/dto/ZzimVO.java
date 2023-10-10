package com.shoes.dto;

public class ZzimVO {
	private String id, shoescode, heart, mname, pname, brand, infoimg;
	private int zseq, price;
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
	public String getHeart() {
		return heart;
	}
	public void setHeart(String heart) {
		this.heart = heart;
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
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getInfoimg() {
		return infoimg;
	}
	public void setInfoimg(String infoimg) {
		this.infoimg = infoimg;
	}
	public int getZseq() {
		return zseq;
	}
	public void setZseq(int zseq) {
		this.zseq = zseq;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "ZzimVO [id=" + id + ", shoescode=" + shoescode + ", heart=" + heart + ", mname=" + mname + ", pname="
				+ pname + ", brand=" + brand + ", infoimg=" + infoimg + ", zseq=" + zseq + ", price=" + price + "]";
	}
	
	
}
