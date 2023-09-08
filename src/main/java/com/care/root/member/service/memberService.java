package com.care.root.member.service;

import java.util.ArrayList;

import com.care.root.member.dto.memberDTO;

public interface memberService {
	public memberDTO loginChk(String id);
	public int register(memberDTO dto);
	public ArrayList<memberDTO> list();
}
