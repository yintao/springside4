<#import "/lib/tags.ftl" as tags/>
<html lang="zh-CN">
<head>
	<title>任务管理</title>
</head>

<body>
${base!}
<#if  message??>
<div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${message}</div>
</#if>
<div class="row">
	<div class="span4 offset7">
		<form class="form-search" action="#">
			<label>名称：</label> <input type="text" name="search_LIKE_title" class="input-medium" value="${search_LIKE_title!}">
			<button type="submit" class="btn" id="search_btn">Search</button>
		</form>
	</div>
	<@tags.sort sortTypes=sortTypes sortType=sortType searchParams=searchParams />
	<#--<@tags.sort/>-->
</div>

<table id="contentTable" class="table table-striped table-bordered table-condensed">
	<thead><tr><th>任务</th><th>管理</th></tr></thead>
	<tbody>
	<#list tasks.content as task>
		<tr>
			<td><a href="${ctx!}/task/update/${task.id!}">${task.title!}</a></td>
			<td><a href="${ctx!}/task/delete/${task.id!}">删除</a></td>
		</tr>
	</#list>
	</tbody>
</table>

<#--<@tags.pagination page=tasks paginationSize=5/>-->

<div><a class="btn" href="${ctx!}/task/create">创建任务</a></div>
</body>
</html>
