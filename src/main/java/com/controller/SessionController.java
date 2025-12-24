package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;

@Controller
public class SessionController {

	// open jsp
	@GetMapping("signup") // url
	public String signup() {// method name
		return "Signup";// jsp name
	}

//	@PostMapping("saveUser")
//	public String saveUser(String firstName,String email,String password) {
//		System.out.println(firstName);
//		System.out.println(email);
//		System.out.println(password);
//		return "Login";
//	}

	@PostMapping("saveUser1")
	public String saveUser(UserBean userBean) {
		System.out.println(userBean.getFirstName());
		System.out.println(userBean.getEmail());
		System.out.println(userBean.getPassword());
		return "Login";
	}
}
