package com.farm.web.controller.member;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("mypage")
@RequestMapping("/member/")
public class MypageController {

	@GetMapping("mypage")
	public String index(Principal principal) {
		
//		String uid = principal.getName();
		String uid = "yuno";
		
		
		return "member/mypage"; 
	}
}