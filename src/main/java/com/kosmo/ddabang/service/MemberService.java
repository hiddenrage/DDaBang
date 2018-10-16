package com.kosmo.ddabang.service;

import java.util.List;
import java.util.Map;

public interface MemberService {
	boolean memberLogin(Map map);
	
	List<MemberDTO> memberSelectList(Map map);
	MemberDTO memberSelectOne(Map map);
	List<MemberDTO> expertSelectList(Map map);
	MemberDTO expertSelectOne(Map map);
	
	int signupInsert(Map map);
	int socialInsert(Map map);
	int expertInsert(Map map);
	
	int pwdUpdate(Map map);
	int memberUpdate(Map map);
	int expertUpdate(Map map);
	
	int expertValidUpdate(Map map);
	
	int memberDelete(Map map);
	
	List<AdminDTO> adminSelectList(Map map);
	boolean adminLogin(Map map);
	int adminInsert(Map map);
	int adminUpdate(Map map);
	int adminDelete(Map map);
}/// interface
