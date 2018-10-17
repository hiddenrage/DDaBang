package com.kosmo.ddabang.service;

public class ItemDTO {
	private String no;//매물번호
	private String id;//중개사 아이디
	private String address;//검색용주소
	private String address_detail;//상세주소
	private String kind;//방종류
	private String pay_kind;
	private String house_floor;//건물층수
	private String select_floor;//해당층수
	private String supply_area;//공급면적
	private String use_area;//전용면적
	private String manage_money;//관리비
	private String manage_detail;//관리비항목
	private String parking;//주차여부 : 기본값 N / Y
	private String heating;//난방종류
	private String animal; //애완동물 가능 여부
	private String elevator;// 엘리베이터 유무
	private String movein;//입주가능일 : 기본값 '즉시 입주'
	private String selected_option;//옵션항목
	private String title;//제목
	private String content;//내용
	private java.sql.Date regedate;//등록 날짜 : 기본값 SYSDATE
	private double x;//주소로 지도  x좌표 구한값을 저장 
	private double y;//주소로 지도  y좌표 구한값을 저장 
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
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
	public String getAddress_detail() {
		return address_detail;
	}
	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getPay_kind() {
		return pay_kind;
	}
	public void setPay_kind(String pay_kind) {
		this.pay_kind = pay_kind;
	}
	public String getHouse_floor() {
		return house_floor;
	}
	public void setHouse_floor(String house_floor) {
		this.house_floor = house_floor;
	}
	public String getSelect_floor() {
		return select_floor;
	}
	public void setSelect_floor(String select_floor) {
		this.select_floor = select_floor;
	}
	public String getSupply_area() {
		return supply_area;
	}
	public void setSupply_area(String supply_area) {
		this.supply_area = supply_area;
	}
	public String getUse_area() {
		return use_area;
	}
	public void setUse_area(String use_area) {
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
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getHeating() {
		return heating;
	}
	public void setHeating(String heating) {
		this.heating = heating;
	}
	public String getAnimal() {
		return animal;
	}
	public void setAnimal(String animal) {
		this.animal = animal;
	}
	public String getElevator() {
		return elevator;
	}
	public void setElevator(String elevator) {
		this.elevator = elevator;
	}
	public String getMovein() {
		return movein;
	}
	public void setMovein(String movein) {
		this.movein = movein;
	}
	public String getSelected_option() {
		return selected_option;
	}
	public void setSelected_option(String selected_option) {
		this.selected_option = selected_option;
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
	public java.sql.Date getRegedate() {
		return regedate;
	}
	public void setRegedate(java.sql.Date regedate) {
		this.regedate = regedate;
	}
	public double getX() {
		return x;
	}
	public void setX(double x) {
		this.x = x;
	}
	public double getY() {
		return y;
	}
	public void setY(double y) {
		this.y = y;
	}
}/// class
