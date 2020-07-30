package com.farm.web.controller.member;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.farm.web.entity.BasketView;
import com.farm.web.service.BasketService;

@Controller("MemberBasketController")
@RequestMapping("/member/basket")
public class BasketController {
	@Autowired
	BasketService basketService;
	
	@GetMapping("list")
	public String list(Principal principal,
			Model model) {
//		String uName = principal.getName();
		String uName = "yuno";
		int totalPrice = 0;
		int totalDf = 0;
		
		List<BasketView> basketList = basketService.getList(uName);
		for(BasketView bv : basketList) {
			totalPrice += bv.getPrice()*bv.getQty();
			totalDf += bv.getDeliveryFee();
		}
		
		Map<String, Integer> price = new HashMap<>();
		price.put("totalPrice", totalPrice);
		price.put("totalDf", totalDf);
		
		model.addAllAttributes(price);
		model.addAttribute("bl",basketList);
		
		return "member/basket";
	}
	
	@ResponseBody
	@GetMapping("del")
	public int del(@RequestParam(name = "srs")int[] selectRows) {
		int res=0;
		
		res = basketService.delList(selectRows);
		
		return res;
	}
	
	@ResponseBody
	@GetMapping("update")
	public int update(int id,int qty) {
		int res=0;
		
		res = basketService.update(id,qty);
		
		return res;
	}
	
}
