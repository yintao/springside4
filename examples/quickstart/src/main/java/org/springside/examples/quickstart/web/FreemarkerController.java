package org.springside.examples.quickstart.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * freemarker 测试
 * @author yintao  yin.tao@foxmail.com
 */
@Controller
@RequestMapping(value = "/freemarker")
public class FreemarkerController {
	private final Logger logger = LoggerFactory.getLogger(FreemarkerController.class);

	@RequestMapping(method = RequestMethod.GET)
	public String welcome() {
		logger.debug("in ftl controller");
		return "freemarker";
	}

}
