package org.springside.modules.security.shiro.freemarker;

import freemarker.template.SimpleHash;

/**
 * @author yintao  yin.tao@foxmail.com
 */
public class ShiroTags extends SimpleHash {

	public ShiroTags() {
		put("authenticated", new AuthenticatedTag());
		put("guest", new GuestTag());
		put("hasAnyRoles", new HasAnyRolesTag());
		put("hasPermission", new HasPermissionTag());
		put("hasRole", new HasRoleTag());
		put("lacksPermission", new LacksPermissionTag());
		put("lacksRole", new LacksRoleTag());
		put("notAuthenticated", new NotAuthenticatedTag());
		put("principal", new PrincipalTag());
		put("user", new UserTag());
		put("hasAnyPermissions", new HasAnyPermissionsTag());
	}

}
