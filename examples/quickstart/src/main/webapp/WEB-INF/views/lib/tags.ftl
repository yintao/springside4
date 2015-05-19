<#-- 排序 -->
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


<#-- 分页 -->
<#macro pagination page pageSize sortType searchParams>
	<#local current=page.getNumber() + 1>
	<#local begin=max(1, current - pageSize/2)>
	<#local end=min(begin + (pageSize - 1), page.getTotalPages())>

	<div class="pagination" >
		<ul>
			<#if page.hasPrevious()>
				<li><a href="?page=1&sortType=${sortType!}&${searchParams!}">&lt;&lt;</a></li>
				<li><a href="?page=${current-1}&sortType=${sortType!}&${searchParams!}">&lt;</a></li>
			<#else>
				<li class="disabled"><a href="#">&lt;&lt;</a></li>
				<li class="disabled"><a href="#">&lt;</a></li>
			</#if>

			<#if (begin <= end)>
				<#list begin..end as i>
					<#if i==current>
					  <li class="active"><a href="?page=${i}&sortType=${sortType!}&${searchParams!}">${i}</a></li>
					<#else>
					  <li><a href="?page=${i}&sortType=${sortType!}&${searchParams!}">${i}</a></li>
					</#if>
				</#list>
			</#if>

			<#if page.hasNext()>
				<li><a href="?page=${current+1}&sortType=${sortType!}&${searchParams!}">&gt;</a></li>
				<li><a href="?page=${page.totalPages!}&sortType=${sortType!}&${searchParams!}">&gt;&gt;</a></li>
			<#else>
				<li class="disabled"><a href="#">&gt;</a></li>
				<li class="disabled"><a href="#">&gt;&gt;</a></li>
			</#if>

		</ul>
	</div>
</#macro>


<#-- 计算最大值 -->
<#function max a b>
	<#if (a >= b)>
		<#return a>
	<#else >
		<#return b>
	</#if>
</#function>

<#-- 计算最小值 -->
<#function min a b>
	<#if (a <= b)>
		<#return a>
	<#else >
		<#return b>
	</#if>
</#function>