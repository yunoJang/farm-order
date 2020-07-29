package com.farm.web.controller.seller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.farm.web.entity.Item;
import com.farm.web.entity.DTO.ItemQnAListView;
import com.farm.web.service.QnaService;


@Controller("sellerQnaController")
@RequestMapping("/seller/product/qna/")
public class QnaController {

	@Autowired
	private QnaService qnaService;
	
	@GetMapping("list")
	public String list(
		@RequestParam(name = "p", defaultValue = "1") Integer page, 
		@RequestParam(name = "q", defaultValue = "") String query,
		@RequestParam(name = "f", defaultValue = "iName") String field,
		Model model) {

		List<ItemQnAListView> qList = qnaService.getQnAList(page, query, field);
		List<Item> iList = qnaService.getItemList();
		model.addAttribute("iList", iList);
		model.addAttribute("qList", qList);
		
		
		return "seller/qna";
	}
	
	@PostMapping("list")
	public String list2(
			HttpServletRequest request,
			Model model) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		String query = request.getParameter("fs");
		int page = 1;
		String field = "iName";
		
		List<ItemQnAListView> qList = qnaService.getQnAList(page, query, field);
		List<Item> iList = qnaService.getItemList();
		model.addAttribute("q",query);
		model.addAttribute("qList",qList);
		model.addAttribute("iList", iList);
		
		return "seller/qna";
	}
	
	
	@GetMapping("{dtlNum}")
	public String detail(@PathVariable("dtlNum") int dtlNum, Model model) {
//		model.addAttribute();
		
		return "seller/detail";
	}
	
	@GetMapping("reg")
	public String reg() {
		return "seller/reg";
	}
}

