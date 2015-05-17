welcome use freemarker!
<@shiro.user >
	<shiro:hasRole name="admin">
		Admin Users
	</shiro:hasRole>
	<@shiro.principal property="name"/>
</@shiro.user>