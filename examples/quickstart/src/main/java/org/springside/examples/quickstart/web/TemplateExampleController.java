package org.springside.examples.quickstart.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * freemarker thymeleaf 测试
 * @author yintao  yin.tao@foxmail.com
 */
@Controller
public class TemplateExampleController {
	private final Logger logger = LoggerFactory.getLogger(TemplateExampleController.class);

	@RequestMapping(value = "/ftl", method = RequestMethod.GET)
	public String freemarker() {
		logger.debug("in freemarker controller");
		return "freemarker";
	}

	@RequestMapping(value = "/th", method = RequestMethod.GET)
	public String thymeleaf(Model model) {
		logger.debug("in thymeleaf controller");
		model.addAttribute("message", "thymeleaf");
		return "welcome";
	}

	@RequestMapping(value = "/jsp", method = RequestMethod.GET)
	public String jsp(Model model) {
		logger.debug("in jsp controller");
		model.addAttribute("message", "jsp");
		return "jsp/welcome";
	}

}
