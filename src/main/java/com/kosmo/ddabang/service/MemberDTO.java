package com.kosmo.ddabang.service;

import java.sql.Date;

public class MemberDTO {
	/// 공통 회원 데이터
	private String id; // 아이디
	private String name; // 이름
	private String tel; // 전화번호
	private Date regidate; // 가입일 
	private String kind; // 가입 종류 : general(일반)/expert(중개사)/naver,daum 등등
	// 가입 회원용 데이터
	private String pwd; // 가입회원 비밀번호
	/// 공인중개사용 인자들
	private String position; // 직책 
	private String authority; // 권한
	private String office_name; // 사무실 이름
	private String address; // 사무실 주소
	private String manager_name; // 대표이름
	private String manager_tel; // 대표 전화번호
	private String broker_number; // 중개등록번호
	private String broker_photo; // 중개등록번호 사진
	private String business_number; // 사업자 등록번호
	private String business_photo; // 사업자 등록증 사진
	private char isValid; // 인증된 회원인지 : 기본값 N / Y
	
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getRegidate() {
		return regidate;
	}
	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getManager_tel() {
		return manager_tel;
	}
	public void setManager_tel(String manager_tel) {
		this.manager_tel = manager_tel;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getOffice_name() {
		return office_name;
	}
	public void setOffice_name(String office_name) {
		this.office_name = office_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public String getBroker_number() {
		return broker_number;
	}
	public void setBroker_number(String broker_number) {
		this.broker_number = broker_number;
	}
	public String getBroker_photo() {
		return broker_photo;
	}
	public void setBroker_photo(String broker_photo) {
		this.broker_photo = broker_photo;
	}
	public String getBusiness_number() {
		return business_number;
	}
	public void setBusiness_number(String business_number) {
		this.business_number = business_number;
	}
	public String getBusiness_photo() {
		return business_photo;
	}
	public void setBusiness_photo(String business_photo) {
		this.business_photo = business_photo;
	}
	public char getIsValid() {
		return isValid;
	}
	public void setIsValid(char isValid) {
		this.isValid = isValid;
	}
}/// class
