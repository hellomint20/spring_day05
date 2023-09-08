package com.care.root.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.root.member.dto.memberDTO;
import com.care.root.member.service.memberService;
import com.care.root.member.service.memberServiceImpl;

import oracle.jdbc.proxy.annotation.Post;

@Controller
public class memberController {
	
	@Autowired memberService ms;

	public memberController() {
		System.out.println("member contro ½ÇÇà");
	}
	
	@GetMapping("index")
	public String index() {
		return "index";
	}
	
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	@PostMapping("login_chk")
	public String loginChk(@RequestParam String id, @RequestParam String pw, HttpSession session) {
		memberDTO dto = ms.loginChk(id);
		System.out.println("mem con "+dto);
		if(dto != null) {
			if(pw.equals(dto.getPw())) {
				session.setAttribute("id", id);
				return "redirect:/successLogin";
			}else {
				return "redirect:/login";
			}
		}
		return "redirect:/login";
	}
	@GetMapping("successLogin")
	public String successLogin() {
		return "member/successLogin";
	}
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	@GetMapping("register")
	public String register() {
		return "member/register";
	}
	@PostMapping("register")
	public String register(memberDTO dto) {
		int result = ms.register(dto);
		if(result == 1) {
			return "redirect:/login";
		}
		return "redirect:/register";
	}
	@GetMapping("list")
	public String list(Model model) {
		ArrayList<memberDTO> list = ms.list();
		model.addAttribute("list", list);
		return "member/memberInfo";
	}
	@GetMapping("info")
	public String info(@RequestParam String id, Model model) {
		memberDTO dto = ms.loginChk(id);
		model.addAttribute("dto", dto);
		return "member/info";
	}
}
