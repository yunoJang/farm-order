package com.farm.web.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farm.web.entity.FavItemView;
import com.farm.web.entity.Member;
import com.farm.web.service.MemberService;

@Controller("mymember")
@RequestMapping("/member/")
public class MemberController { // 언젠간 잡아야하는데 컨트롤러에 멤버 컨트롤러에서 인데스를 해줘야 맞는것같다.

	@Autowired
	MemberService memberService;
	
	
	@GetMapping("index")
	public String index(Principal principal,Model model) {
		
//		String uid = principal.getName();
		String uid = "yuno";
		
		Member member = memberService.getIndexMember(uid);
		model.addAttribute("m",member);
		
		List<FavItemView> filist = memberService.getIndexFiList(uid);
		model.addAttribute("filist",filist);
		

		
		return "member/index";
	}
	
}