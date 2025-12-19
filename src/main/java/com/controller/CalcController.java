package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CalcController {

	@GetMapping("inputcalc")
	public String inputCalc() {
		return "InputCalc";
	}

	@PostMapping("processCalc")
	public String processCalc(Integer n1, Integer n2, String choice, Model model) {
		Integer ans = 0;
		switch (choice) {
		case "add":
			ans = n1 + n2;
			break;
		case "sub":
			ans = n1 - n2;
			break;
		case "div":
			ans = n1 / n2;
			break;
		case "mul":
			ans = n1 * n2;
			break;

		}

		model.addAttribute("ans", ans);
		return "OutputCalc";
	}
}
