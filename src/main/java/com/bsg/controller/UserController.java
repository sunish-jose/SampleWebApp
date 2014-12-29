package com.bsg.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bsg.crypto.Cipher;
import com.bsg.model.User;
import com.bsg.service.BaseService;


@Controller
@RequestMapping("/user")
public class UserController extends BaseController {
	
	@Autowired
	private BaseService baseService;
	
	@Autowired
	private Cipher cipher;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		return "user/home";
	}
	
	@RequestMapping(value = "/funding", method = RequestMethod.GET)
	public String showFunding() {
		return "user/funding";
	}
	
	@RequestMapping(method=RequestMethod.GET, params="newUser")
	public String createNewUser(Model model){
		model.addAttribute(new User());
		return "user/edit";
	}
	
	@RequestMapping(value = "/debtorsSummary", method = RequestMethod.GET)
	public String receivable(Model model){
		model.addAttribute(new User());
		return "user/debtorsSummary";
	}
	
	@RequestMapping(value = "/payableSummary", method = RequestMethod.GET)
	public String payable(Model model){
		model.addAttribute(new User());
		return "user/payableSummary";
	}	
	

	@RequestMapping(value = "/position", method = RequestMethod.GET)
	public String showPositionDetails(Model model){
		model.addAttribute(new User());
		return "user/positionDetails";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String addNewUser(@Valid User user, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			return "user/edit";
		}
		String password = cipher.encrypt(user.getPassword());
		user.setPassword(password);
		baseService.createEntity(user);
		return "redirect:/"+user.getSurName();
	}
	
}

