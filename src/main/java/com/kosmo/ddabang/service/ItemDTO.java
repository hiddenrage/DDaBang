package com.kosmo.ddabang.service;

import java.sql.Date;

public class ItemDTO {
	// 매물 정보
	private int no; // 매물 번호
	private String id; // 등록자 아이디
	private String address; // 주소
	private String address_dedail; // 상세주소
	private char shortterm; // 단기여부 : 기본값 N / Y
	private String kind; // 방종류
	private int house_floor; // 건물 층수
	private int select_floor; // 해당 층수
	private int supply_area; // 공급 면적
	private int use_area; // 전용 면적
	private String manage_money; // 관리비
	private String manage_detail; // 관리비 항목
	private char parking; // 주차여부 : 기본값 N / Y
	private String heating; // 난방종류
	private String moving_date; // 입주가능일 : 기본값 '즉시 입주'
	private String room_option; // 옵션항목
	private String title; // 제목
	private String content; // 내용
	private Date regidate; // 작성날짜 기본값 SYSDATE
	private int lat; // 위도
	private int lng; // 경도
	// 매물 종류 (예 : 전세3000, 월세500/30, 월세 300/32)
	private int i_no; // 매물 종류 번호
	private String deal_kind; // 거래 종류
	private int deposit; // 보증금
	private int pay; // 월세 : 기본값 0
	// 매물 사진 번호
	private int p_no; // 사진 번호
	private String path; // 사진 경로
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress_dedail() {
		return address_dedail;
	}
	public void setAddress_dedail(String address_dedail) {
		this.address_dedail = address_dedail;
	}
	public char getShortterm() {
		return shortterm;
	}
	public void setShortterm(char shortterm) {
		this.shortterm = shortterm;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public int getHouse_floor() {
		return house_floor;
	}
	public void setHouse_floor(int house_floor) {
		this.house_floor = house_floor;
	}
	public int getSelect_floor() {
		return select_floor;
	}
	public void setSelect_floor(int select_floor) {
		this.select_floor = select_floor;
	}
	public int getSupply_area() {
		return supply_area;
	}
	public void setSupply_area(int supply_area) {
		this.supply_area = supply_area;
	}
	public int getUse_area() {
		return use_area;
	}
	public void setUse_area(int use_area) {
		this.use_area = use_area;
	}
	public String getManage_money() {
		return manage_money;
	}
	public void setManage_money(String manage_money) {
		this.manage_money = manage_money;
	}
	public String getManage_detail() {
		return manage_detail;
	}
	public void setManage_detail(String manage_detail) {
		this.manage_detail = manage_detail;
	}
	public char getParking() {
		return parking;
	}
	public void setParking(char parking) {
		this.parking = parking;
	}
	public String getHeating() {
		return heating;
	}
	public void setHeating(String heating) {
		this.heating = heating;
	}
	public String getMoving_date() {
		return moving_date;
	}
	public void setMoving_date(String moving_date) {
		this.moving_date = moving_date;
	}
	public String getRoom_option() {
		return room_option;
	}
	public void setRoom_option(String room_option) {
		this.room_option = room_option;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegidate() {
		return regidate;
	}
	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}
	public int getLat() {
		return lat;
	}
	public void setLat(int lat) {
		this.lat = lat;
	}
	public int getLng() {
		return lng;
	}
	public void setLng(int lng) {
		this.lng = lng;
	}
	public int getI_no() {
		return i_no;
	}
	public void setI_no(int i_no) {
		this.i_no = i_no;
	}
	public String getDeal_kind() {
		return deal_kind;
	}
	public void setDeal_kind(String deal_kind) {
		this.deal_kind = deal_kind;
	}
	public int getDeposit() {
		return deposit;
	}
	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
}/// class
