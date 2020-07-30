package com.farm.web.controller.member;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.farm.web.entity.OrderItemView;
import com.farm.web.service.OrderService;

@Controller
@RequestMapping("/member/order/")
public class OrderController {
	
	@Autowired
	private OrderService orderservice;
	
	@GetMapping("list")
	public String list(Principal principal,Model model) {
//		String uid = principal.getName();
		String uid = "member";
		List<OrderItemView> oilist= orderservice.getMemberOIList(uid);
		model.addAttribute("oilist", oilist);
		
		return "member/order";
	}
	
}
