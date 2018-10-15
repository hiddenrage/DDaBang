package com.kosmo.ddabang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.ddabang.service.MemberService;
import com.kosmo.ddabang.service.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	@Resource(name="memberDAO")
	private MemberDAO dao;

	@Override
	public boolean memberLogin(Map map) {
		return dao.memberLogin(map);
	}

	@Override
	public List<MemberDTO> memberSelectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO memberSelectOne(Map map) {
		return dao.memberSelectOne(map);
	}

	@Override
	public List<MemberDTO> expertSelectList(Map map) {
		return null;
	}

	@Override
	public MemberDTO expertSelectOne(Map map) {
		return dao.expertSelectOne(map);
	}

	@Override
	public int signupInsert(Map map) {
		// TODO Auto-generated method stub
		return dao.signupInsert(map);
	}

	@Override
	public int socialInsert(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int expertInsert(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int pwdUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int memberUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int expertUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int expertValidUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int memberDelete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}
}/// class
