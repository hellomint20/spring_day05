package com.care.root.member.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.root.member.dto.memberDTO;
import com.care.root.mybatis.member.memberMapper;

@Service
public class memberServiceImpl implements memberService{
	@Autowired memberMapper mm;

	public memberServiceImpl() {
		System.out.println("mem ser ½ÇÇà");
	}
	
	public memberDTO loginChk(String id) {
		memberDTO dto = mm.loginChk(id);
		return dto;
	}
	public int register(memberDTO dto) {
		int result = mm.register(dto);
		return result;
	}
	public ArrayList<memberDTO> list(){
		ArrayList<memberDTO> list = mm.list();
		return list;
	}
}
