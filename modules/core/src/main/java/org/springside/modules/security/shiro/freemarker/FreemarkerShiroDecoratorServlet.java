package org.springside.modules.security.shiro.freemarker;

import com.opensymphony.module.sitemesh.HTMLPage;
import com.opensymphony.module.sitemesh.freemarker.FreemarkerDecoratorServlet;
import freemarker.template.SimpleHash;
import freemarker.template.Template;
import freemarker.template.TemplateModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.StringWriter;

/**
 * @author yintao  yin.tao@foxmail.com
 */
public class FreemarkerShiroDecoratorServlet extends FreemarkerDecoratorServlet {
	public FreemarkerShiroDecoratorServlet() {
	}

	protected boolean preTemplateProcess(HttpServletRequest request,
	                                     HttpServletResponse response,
	                                     Template template,
	                                     TemplateModel templateModel)
			throws ServletException, IOException {
		boolean    result   = super.preTemplateProcess(request, response, template, templateModel);
		SimpleHash hash     = (SimpleHash) templateModel;
		hash.put("shiro", new ShiroTags());
		return result;
	}

}
