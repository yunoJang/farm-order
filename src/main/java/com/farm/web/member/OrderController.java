package com.farm.web.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/order/")
public class OrderController {
	
	@GetMapping("list")
	public String list() {
		
		
		return "member/order";
	}
}
