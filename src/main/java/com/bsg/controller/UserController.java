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
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String chat() {
		return "user/search";
	}
	
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String search() {
		return "user/chat";
	}
	
	@RequestMapping(value = "/funding", method = RequestMethod.GET)
	public String showFunding() {
		return "user/funding";
	}
	
	@RequestMapping(value = "/operator", method = RequestMethod.GET)
	public String showSettings() {
		return "user/operator";
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
	
	@RequestMapping(value = "/bank", method = RequestMethod.GET)
	public String bankAccountIO() {
		return "user/bank";
	}
	
	@RequestMapping(value = "/client", method = RequestMethod.GET)
	public String customerModule() {
		return "user/client";
	}
	
	
	@RequestMapping(value = "/index1", method = RequestMethod.GET)
	public String showNewIndex() {
		return "user/index1";
	}
	
	@RequestMapping(value = "/authSetup", method = RequestMethod.GET)
	public String authSetup() {
		return "user/authSetup";
	}
	
	@RequestMapping(value = "/debtChasing", method = RequestMethod.GET)
	public String debtChasing() {
		return "user/debtChasing";
	}
	
	@RequestMapping(value = "/collectionNallocation", method = RequestMethod.GET)
	public String collectionAndAllocaion() {
		return "user/collectionNallocation";
	}	
	
	@RequestMapping(value = "/receiptNallocation", method = RequestMethod.GET)
	public String receiptAndAllocaion() {
		return "user/receiptNallocation";
	}	
	
	@RequestMapping(value = "/agreement", method = RequestMethod.GET)
	public String agreement() {
		return "user/agreement";
	}
	
	@RequestMapping(value = "/invoiceReconciliation", method = RequestMethod.GET)
	public String invoiceReconciliation() {
		return "user/invoiceReconciliation";
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

