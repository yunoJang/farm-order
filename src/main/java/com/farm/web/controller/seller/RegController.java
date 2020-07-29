package com.farm.web.controller.seller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("RegController")
@RequestMapping("/seller/")
public class RegController {
	
	@GetMapping("reg")
	public String index() {
		
		return "seller/reg";
	}
}



