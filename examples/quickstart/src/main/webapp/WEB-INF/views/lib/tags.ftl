<#macro sort sortTypes sortType searchParams>
	<div class="nav dropdown pull-right">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">
			排序: ${sortTypes[sortType]} <b class="caret"></b>
		</a>
		<ul class="dropdown-menu" >
			<#list sortTypes?keys as key>
			  <li><a href="?sortType=${key}&${searchParams}">${sortTypes[key]}</a></li>
			</#list>
		</ul>
	</div>
</#macro>