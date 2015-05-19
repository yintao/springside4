<html>
<head>
	<title>Restful API 列表</title>
</head>

<body>
<h3>Restful API 列表</h3>
<h4>查询 API</h4>
<ul>
	<li>获取任务列表 ： <a href="${ctx!}/api/v1/task">${ctx!}/api/v1/task</a></li>
	<li>获取任务(id=1) ： <a href="${ctx!}/api/v1/task/1">${ctx!}/api/v1/task/1</a></li>
</ul>

<h4>修改API</h4>
<ul>
	<li>创建任务 ：${ctx!}/api/v1/task method=Post, consumes=JSON</li>
	<li>修改任务(id=1) ：${ctx!}/api/v1/task/1 method=Put, consumes=JSON</li>
</ul>
</body>
</html>

