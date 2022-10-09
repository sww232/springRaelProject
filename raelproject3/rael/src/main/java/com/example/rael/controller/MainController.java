package com.example.rael.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.rael.service.ProductService;

@Controller
public class MainController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/")
	public String Main(Model model) {
		List<String> categorynums = productService.SelectCategoryNums();
		model.addAttribute("categorynums", categorynums);
		return "main";
	}
	
	@RequestMapping("/product_main")
	
	public ModelAndView Product() {
		ModelAndView mv = new ModelAndView();
		
		List<String> categorynums = productService.SelectCategoryNums();
		mv.addObject("categorynums",categorynums);
		
		return mv;
	}
	
	@RequestMapping("/stock_main")
	public String Stock() {
		return "stock_main";
	}
}