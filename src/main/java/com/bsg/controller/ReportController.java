package com.bsg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/report")
public class ReportController extends BaseController{
	
	@RequestMapping(value = "/standardReport", method = RequestMethod.GET)
	public String showStandardReport() {
		return "report/standardReport";
	}
	
	@RequestMapping(value = "/verificationReport", method = RequestMethod.GET)
	public String showExtReport() {
		return "report/verificationReport";
	}	

	@RequestMapping(value = "/analyticReport", method = RequestMethod.GET)
	public String showAnalyticReport() {
		return "report/analyticReport";
	}	
}
