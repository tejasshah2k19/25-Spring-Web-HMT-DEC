package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.BatchBean;
import com.dao.BatchDao;

@Controller
public class BatchController {

	@Autowired
	BatchDao batchDao;

	@GetMapping("newbatch")
	public String newBatch() {
		return "NewBatch";
	}

	@PostMapping("saveBatch")
	public String saveBatch(@Validated BatchBean batchBean, BindingResult result, Model model) {

		if (result.hasErrors()) {
			model.addAttribute("result", result);
			return "NewBatch";
		} else {
			// db insert
			batchDao.addBatch(batchBean);
			return "redirect:/listBatch";
		}
	}

	@GetMapping("listBatch")
	public String listBatch(Model model) {
		
		List<BatchBean> allBatch =  batchDao.getAllBatch();
		
		model.addAttribute("allBatch",allBatch);
		
		return "ListBatch";
	}

}
