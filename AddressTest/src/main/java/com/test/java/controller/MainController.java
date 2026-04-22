package com.test.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.test.java.model.AddressDao;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MainController {

	private final AddressDao dao;
	
	@GetMapping(value = "/")
	public String index(Model model) {
		
		model.addAttribute("list", dao.list());
		
		return "index";
	}
	
}
