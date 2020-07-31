package com.farm.web.controller.member;

import java.security.Principal;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.farm.web.entity.OrderItemView;
import com.farm.web.entity.SimpleCountView;
import com.farm.web.service.OrderService;

@Controller
@RequestMapping("/member/orderitem/")
public class OrderItemController {
	
	@Autowired
	private OrderService orderservice;
	
	@GetMapping("list")
	public String list(Principal principal,Model model) {
//		String uid = principal.getName();
		String uid = "member";
		List<OrderItemView> oilist= orderservice.getMemberOIList(uid);
		model.addAttribute("oilist", oilist);
		
		List<SimpleCountView> colist = orderservice.getCount(uid);
		model.addAttribute("colist", colist);
		System.out.println(colist);
		
		return "member/orderitem/list";
	}
	
	@GetMapping("cancle")
	public String cancle(Principal principal,
							@RequestParam(name = "id",defaultValue="0") int id) {
//		String uid = principal.getName();
		String uid = "yuno";

		orderservice.cancleOrder(id);
		
		
		return "redirect:list";
	}
}
