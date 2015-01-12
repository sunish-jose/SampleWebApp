package com.bsg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {
	private static final String VIEW_INDEX = "index";
	
	private static final String VIEW_INDEX1= "index1";

	@RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
	public String welcomeCall() {
		return VIEW_INDEX;
	}
	
	@RequestMapping(value = "/index1", method = RequestMethod.GET)
	public String showNewIndex() {
		return VIEW_INDEX1;
	}

	@RequestMapping("favicon.ico")
	String favicon() {
		return "forward:/images/favicon.ico";
	}

}
