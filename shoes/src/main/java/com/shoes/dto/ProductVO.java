package com.shoes.dto;

import java.sql.Timestamp;

public class ProductVO {
	private String shoescode, pname, color, brand, mainimg, infoimg, detail1img, detail2img, detail3img, heart;
	private int price, pcount;
	private Timestamp indate;

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

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getMainimg() {
		return mainimg;
	}

	public void setMainimg(String mainimg) {
		this.mainimg = mainimg;
	}

	public String getInfoimg() {
		return infoimg;
	}

	public void setInfoimg(String infoimg) {
		this.infoimg = infoimg;
	}

	public String getDetail1img() {
		return detail1img;
	}

	public void setDetail1img(String detail1img) {
		this.detail1img = detail1img;
	}

	public String getDetail2img() {
		return detail2img;
	}

	public void setDetail2img(String detail2img) {
		this.detail2img = detail2img;
	}

	public String getDetail3img() {
		return detail3img;
	}

	public void setDetail3img(String detail3img) {
		this.detail3img = detail3img;
	}

	public String getHeart() {
		return heart;
	}

	public void setHeart(String heart) {
		this.heart = heart;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getPcount() {
		return pcount;
	}

	public void setPcount(int pcount) {
		this.pcount = pcount;
	}

	public Timestamp getIndate() {
		return indate;
	}

	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}

}
