package com.bsg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/search")
public class SearchController extends BaseController{
	
	@RequestMapping(value = "/standardSearch", method = RequestMethod.GET)
	public String showStandardReport() {
		return "search/standardSearch";
	}

}
