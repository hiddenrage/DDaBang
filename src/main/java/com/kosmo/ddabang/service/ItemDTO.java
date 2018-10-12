package com.kosmo.ddabang.service;

public class ItemDTO {
	private String no;//매물번호
	private String id;//중개사 아이디
	private String address;//검색용주소
	private String address_detail;//상세주소
	private String shortTerm;//단기여부 : 기본값 N / Y
	private String kind;//방종류
	private String whoole_floor;//건물층수
	private String that_floor;//해당층수
	private String supply_area;//공급면적
	private String use_area;//전용면적
	private String manage_money;//관리비
	private String manage_detail;//관리비항목
	private String parking;//주차여부 : 기본값 N / Y
	private String heating;//난방종류
	private String moving_date;//입주가능일 : 기본값 '즉시 입주'
	private String option;//옵션항목
	private String title;//제목
	private String content;//내용
	private java.sql.Date regedate;//등록 날짜 : 기본값 SYSDATE
	private String path;//매물사진 경로
	private double x;//주소로 지도  x좌표 구한값을 저장 
	private double y;//주소로 지도  y좌표 구한값을 저장 
	
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
	public String getShortTerm() {
		return shortTerm;
	}
	public void setShortTerm(String shortTerm) {
		this.shortTerm = shortTerm;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getWhoole_floor() {
		return whoole_floor;
	}
	public void setWhoole_floor(String whoole_floor) {
		this.whoole_floor = whoole_floor;
	}
	public String getThat_floor() {
		return that_floor;
	}
	public void setThat_floor(String that_floor) {
		this.that_floor = that_floor;
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
	public String getMoving_date() {
		return moving_date;
	}
	public void setMoving_date(String moving_date) {
		this.moving_date = moving_date;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
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
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}	
}/// class
