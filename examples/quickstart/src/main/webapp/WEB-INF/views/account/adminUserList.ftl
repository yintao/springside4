
<html>
<head>
	<title>用户管理</title>
</head>

<body>
	<#if message??>
		<div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${message}</div>
	</#if>

	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead><tr><th>登录名</th><th>用户名</th><th>注册时间<th>管理</th></tr></thead>
		<tbody>
		<#if users ??>
		  <#list users as user>
			<tr>
				<td><a href="${request.contextPath!}/admin/user/update/${user.id!}">${user.loginName!}</a></td>
				<td>${user.name!}</td>
				<td>
				${user.registerDate!}
				</td>
				<td><a href="${request.contextPath!}/admin/user/delete/${user.id!}">删除</a></td>
			</tr>
		  </#list>
		</#if>
		</tbody>
	</table>
</body>
</html>
