#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<${symbol_pound}-- 排序 -->
<${symbol_pound}macro sort sortTypes sortType searchParams>
	<div class="nav dropdown pull-right">
		<a class="dropdown-toggle" data-toggle="dropdown" href="${symbol_pound}">
			排序: ${symbol_dollar}{sortTypes[sortType]} <b class="caret"></b>
		</a>
		<ul class="dropdown-menu" >
			<#list sortTypes?keys as key>
			  <li><a href="?sortType=${symbol_dollar}{key}&${symbol_dollar}{searchParams}">${symbol_dollar}{sortTypes[key]}</a></li>
			</${symbol_pound}list>
		</ul>
	</div>
</${symbol_pound}macro>


<${symbol_pound}-- 分页 -->
<${symbol_pound}macro pagination page pageSize sortType searchParams>
	<${symbol_pound}local current=page.getNumber() + 1>
	<${symbol_pound}local begin=max(1, current - pageSize/2)>
	<${symbol_pound}local end=min(begin + (pageSize - 1), page.getTotalPages())>

	<div class="pagination" >
		<ul>
			<${symbol_pound}if page.hasPrevious()>
				<li><a href="?page=1&sortType=${symbol_dollar}{sortType!}&${symbol_dollar}{searchParams!}">&lt;&lt;</a></li>
				<li><a href="?page=${symbol_dollar}{current-1}&sortType=${symbol_dollar}{sortType!}&${symbol_dollar}{searchParams!}">&lt;</a></li>
			<${symbol_pound}else>
				<li class="disabled"><a href="${symbol_pound}">&lt;&lt;</a></li>
				<li class="disabled"><a href="${symbol_pound}">&lt;</a></li>
			</${symbol_pound}if>

			<${symbol_pound}if (begin <= end)>
				<${symbol_pound}list begin..end as i>
					<${symbol_pound}if i==current>
					  <li class="active"><a href="?page=${symbol_dollar}{i}&sortType=${symbol_dollar}{sortType!}&${symbol_dollar}{searchParams!}">${symbol_dollar}{i}</a></li>
					<${symbol_pound}else>
					  <li><a href="?page=${symbol_dollar}{i}&sortType=${symbol_dollar}{sortType!}&${symbol_dollar}{searchParams!}">${symbol_dollar}{i}</a></li>
					</${symbol_pound}if>
				</${symbol_pound}list>
			</${symbol_pound}if>

			<${symbol_pound}if page.hasNext()>
				<li><a href="?page=${symbol_dollar}{current+1}&sortType=${symbol_dollar}{sortType!}&${symbol_dollar}{searchParams!}">&gt;</a></li>
				<li><a href="?page=${symbol_dollar}{page.totalPages!}&sortType=${symbol_dollar}{sortType!}&${symbol_dollar}{searchParams!}">&gt;&gt;</a></li>
			<${symbol_pound}else>
				<li class="disabled"><a href="${symbol_pound}">&gt;</a></li>
				<li class="disabled"><a href="${symbol_pound}">&gt;&gt;</a></li>
			</${symbol_pound}if>

		</ul>
	</div>
</${symbol_pound}macro>


<${symbol_pound}-- 计算最大值 -->
<${symbol_pound}function max a b>
	<${symbol_pound}if (a >= b)>
		<${symbol_pound}return a>
	<${symbol_pound}else >
		<${symbol_pound}return b>
	</${symbol_pound}if>
</${symbol_pound}function>

<${symbol_pound}-- 计算最小值 -->
<${symbol_pound}function min a b>
	<${symbol_pound}if (a <= b)>
		<${symbol_pound}return a>
	<${symbol_pound}else >
		<${symbol_pound}return b>
	</${symbol_pound}if>
</${symbol_pound}function>