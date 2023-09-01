package com.daewoo.dto;

public class MemberVO {
	private String uid;
	private String pwd;
	private String memName;
	private String phone;
	private String email;
	private String addr1;
	private String addr2;
	private int point;
	private int coupon;

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getCoupon() {
		return coupon;
	}

	public void setCoupon(int coupon) {
		this.coupon = coupon;
	}

	@Override
	public String toString() {
		return "MemberVO [uid=" + uid + ", pwd=" + pwd + ", memName=" + memName + ", phone=" + phone + ", email="
				+ email + ", addr1=" + addr1 + ", addr2=" + addr2 + ", point=" + point + ", coupon=" + coupon + "]";
	}

}
