#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<html>
<head>
	<title>用户管理</title>
</head>

<body>
	<${symbol_pound}if message??>
		<div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${symbol_dollar}{message}</div>
	</${symbol_pound}if>

	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead><tr><th>登录名</th><th>用户名</th><th>注册时间<th>管理</th></tr></thead>
		<tbody>
		<${symbol_pound}if users ??>
		  <${symbol_pound}list users as user>
			<tr>
				<td><a href="${symbol_dollar}{request.contextPath!}/admin/user/update/${symbol_dollar}{user.id!}">${symbol_dollar}{user.loginName!}</a></td>
				<td>${symbol_dollar}{user.name!}</td>
				<td>
				${symbol_dollar}{user.registerDate!}
				</td>
				<td><a href="${symbol_dollar}{request.contextPath!}/admin/user/delete/${symbol_dollar}{user.id!}">删除</a></td>
			</tr>
		  </${symbol_pound}list>
		</${symbol_pound}if>
		</tbody>
	</table>
</body>
</html>
