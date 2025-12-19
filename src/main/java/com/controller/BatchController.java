package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.BatchBean;

@Controller
public class BatchController {

	@GetMapping("newbatch")
	public String newBatch() {
		return "NewBatch";
	}

	@PostMapping("saveBatch")
	public String saveBatch(@Validated BatchBean batchBean, BindingResult result,Model model) {

		if (result.hasErrors()) {
			model.addAttribute("result",result);
			return "NewBatch";
		} else {
			return "ListBatch";
		}
	}
}
