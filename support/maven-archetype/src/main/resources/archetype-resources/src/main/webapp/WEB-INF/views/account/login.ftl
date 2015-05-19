#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<html>
<head>
	<title>登录页</title>
</head>

<body>
	<form id="loginForm" action="${symbol_dollar}{request.contextPath!}/login" method="post" class="form-horizontal">
		<${symbol_pound}if shiroLoginFailure??>
			<div class="alert alert-error input-medium controls">
				<button class="close" data-dismiss="alert">×</button>登录失败，请重试.
			</div>
		</${symbol_pound}if>

		<div class="control-group">
			<label for="username" class="control-label">名称:</label>
			<div class="controls">
				<input type="text" id="username" name="username"  value="${symbol_dollar}{username!}" class="input-medium required"/>
			</div>
		</div>
		<div class="control-group">
			<label for="password" class="control-label">密码:</label>
			<div class="controls">
				<input type="password" id="password" name="password" class="input-medium required"/>
			</div>
		</div>
				
		<div class="control-group">
			<div class="controls">
				<label class="checkbox" for="rememberMe"><input type="checkbox" id="rememberMe" name="rememberMe"/> 记住我</label>
				<input id="submit_btn" class="btn btn-primary" type="submit" value="登录"/> <a class="btn" href="${symbol_dollar}{request.contextPath!}/register">注册</a>
			 	<span class="help-block">(管理员: <b>admin/admin</b>, 普通用户: <b>user/user</b>)</span>
			</div>
		</div>
	</form>

	<script>
		${symbol_dollar}(document).ready(function() {
			${symbol_dollar}("${symbol_pound}loginForm").validate();
		});
	</script>
</body>
</html>
