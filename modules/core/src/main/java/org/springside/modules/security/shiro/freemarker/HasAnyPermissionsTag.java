/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package org.springside.modules.security.shiro.freemarker;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import org.apache.shiro.subject.Subject;

import java.io.IOException;
import java.util.Map;

/**
 * 不知为何Shiro一直不提供HasAnyPermissions的Tag.
 * 
 * @author calvin
 */
public class HasAnyPermissionsTag extends PermissionTag {

	private static final long serialVersionUID = -4786931833148680306L;
	private static final String PERMISSION_NAMES_DELIMETER = ",";

	@Override
	public void render(Environment env, Map params, TemplateDirectiveBody body) throws IOException, TemplateException {
		String p = getName(params);

		boolean show = showTagBody(p);
		if (show) {
			renderBody(env, body);
		}
	}

	@Override
	protected boolean showTagBody(String permissionNames) {
		boolean hasAnyPermission = false;

		Subject subject = getSubject();

		if (subject != null) {
			// Iterate through permissions and check to see if the user has one of the permissions
			for (String permission : permissionNames.split(PERMISSION_NAMES_DELIMETER)) {

				if (subject.isPermitted(permission.trim())) {
					hasAnyPermission = true;
					break;
				}

			}
		}

		return hasAnyPermission;
	}

}
