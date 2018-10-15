package com.kosmo.ddabang.service;

// 각 매물에 해당하는 거래 종류
// 예) 전세 3000, 월세 500/30 등등
public class ItemKindDTO {
	private int i_no; // 식별용 인덱스
	private int no; // 해당하는 매물 번호
	private String deal_kind; // 매물 종류 : 전세/월세 
	private int deposit; // 보증금
	private int pay; // 월세
	
	public int getI_no() {
		return i_no;
	}
	public void setI_no(int i_no) {
		this.i_no = i_no;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
}
