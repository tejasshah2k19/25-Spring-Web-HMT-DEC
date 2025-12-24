package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;

@Controller
public class FormDemoController {

	@GetMapping("newuser")
	public String newUser() {
		return "NewUser";
	}
	
	@PostMapping("saveUser")
	public String saveUser(UserBean userBean,Model model) {
		model.addAttribute("user",userBean);
		return "PrintUser";
	}
	
}
