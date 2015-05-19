#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<${symbol_pound}import "/lib/tags.ftl" as tags/>
<html lang="zh-CN">
<head>
	<title>任务管理</title>
</head>

<body>
<${symbol_pound}if  message??>
<div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${symbol_dollar}{message}</div>
</${symbol_pound}if>
<div class="row">
	<div class="span4 offset7">
		<form class="form-search" action="${symbol_pound}">
			<label>名称：</label> <input type="text" name="search_LIKE_title" class="input-medium" value="${symbol_dollar}{search_LIKE_title!}">
			<button type="submit" class="btn" id="search_btn">Search</button>
		</form>
	</div>
	<@tags.sort sortTypes=sortTypes sortType=sortType searchParams=searchParams />
</div>

<table id="contentTable" class="table table-striped table-bordered table-condensed">
	<thead><tr><th>任务</th><th>管理</th></tr></thead>
	<tbody>
	<${symbol_pound}list tasks.content as task>
		<tr>
			<td><a href="${symbol_dollar}{request.contextPath!}/task/update/${symbol_dollar}{task.id!}">${symbol_dollar}{task.title!}</a></td>
			<td><a href="${symbol_dollar}{request.contextPath!}/task/delete/${symbol_dollar}{task.id!}">删除</a></td>
		</tr>
	</${symbol_pound}list>
	</tbody>
</table>

<@tags.pagination page=tasks pageSize=5 sortType=sortType searchParams=searchParams/>

<div><a class="btn" href="${symbol_dollar}{request.contextPath!}/task/create">创建任务</a></div>
</body>
</html>
