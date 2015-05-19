/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package org.springside.examples.quickstart.web.api;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/api")
public class ApiListController {
	@RequestMapping(method = RequestMethod.GET)
	public String list(HttpServletRequest request, Model model) {
		String ctx = "http://" + request.getServerName() + ":"
		             + request.getServerPort()
		             + request.getContextPath();
		model.addAttribute("ctx", ctx);
		return "api/list";
	}
}
