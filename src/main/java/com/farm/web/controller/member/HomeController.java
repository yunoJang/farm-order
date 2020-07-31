package com.farm.web.controller.member;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.farm.web.entity.FavItemView;
import com.farm.web.entity.FavSellerView;
import com.farm.web.entity.Item;
import com.farm.web.entity.Member;
import com.farm.web.service.MemberService;

@Controller("memberIndex")
@RequestMapping("/member/")
public class HomeController { // 언젠간 잡아야하는데 컨트롤러에 멤버 컨트롤러에서 인데스를 해줘야 맞는것같다.

	@Autowired
	MemberService memberService;
	
	@GetMapping("index")
	public String index(Principal principal,Model model,HttpSession session) {
		
//		String uid = principal.getName();
		String uid = "yuno";
		
		Member member = memberService.getMember(uid);
		model.addAttribute("m",member);
		
		List<FavItemView> filist = memberService.getFiViewList(uid);
		model.addAttribute("filist",filist);
		
		List<FavSellerView> fslist = memberService.getFarmViewList(uid);
		model.addAttribute("fslist",fslist);
		
		List<Item> recentItems =(List<Item>)session.getAttribute("recentItems");
		model.addAttribute("recentItems",recentItems);
		
		model.addAttribute("bcount",memberService.getBasketCount(uid));
		model.addAttribute("ocount",memberService.getOrderItemCount(uid));

		
		return "member/index";
	}
	
	@GetMapping("favitemlist")
	@ResponseBody
	public List<FavItemView> fiViewList(
			Principal principal) {
//		String uName = principal.getName();
		String uid = "yuno"; 
		
		List<FavItemView> filist = memberService.getFiViewList(uid);
		
		return filist;
	}
	
	@GetMapping("favsellerlist")
	@ResponseBody
	public List<FavSellerView> fsViewList(
			Principal principal) {
//		String uName = principal.getName();
		String uid = "yuno"; 
		
		List<FavSellerView> fslist = memberService.getFarmViewList(uid);
		
		return fslist;
	}
	
	
	
//	@GetMapping("edit")
//	public String edit(Principal principal,Model model) {
//		
////		String uid = principal.getName();
//		String uid = "yuno";
//		
//		Member member = memberService.getMember(uid);
//		System.out.println(member);
//		model.addAttribute("m",member);
//		
//		
//		return "member/edit";
//	}
//	
//	@PostMapping("edit")
//	public String edit(Principal principal,Model model,Member member) {
//		
////		String uid = principal.getName();
//		String uid = "yuno";
//		
//		
//	
//		
//		
//		return "member/index";
//	}
	
}