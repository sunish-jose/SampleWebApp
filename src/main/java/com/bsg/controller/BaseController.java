package com.bsg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {
	private static final String VIEW_INDEX = "index";
	
	@RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
	public String welcomeCall() {
		return VIEW_INDEX;
	}

	@RequestMapping("favicon.ico")
	String favicon() {
		return "forward:/images/favicon.ico";
	}

}
