SELECT * FROM weixin_shop_goods WHERE 1=1 
<#if params.sellerId ?exists && params.sellerId ?length gt 0>
	and seller_id = :params.seller_id
</#if>
<#if params.accountid ?exists && params.accountid ?length gt 0>
	and accountid = :params.accountid
</#if>
<#if params.categoryid ?exists && params.categoryid ?length gt 0>
	and category_id = :params.categoryid
</#if>
<#if params.keyword ?exists && params.keyword ?length gt 0>
	and title like  '%${params.keyword}%'
</#if>
<#if params.sort ?exists && params.sort ?length gt 0>
	<#if params.sort="sellcount">
	 ORDER BY sell_count 
	</#if>
	<#if params.sort="createDate">
	 ORDER BY create_date 
	</#if>
	<#if params.sort="realprice">
	 ORDER BY real_price 
	</#if>
	<#if params.sort="sale">
	 ORDER BY sale 
	</#if>
</#if>
<#if params.order ?exists && params.order?length gt 0>
	<#if params.order=="DESC">
	 DESC  
	</#if>
	<#if params.order=="ASC">
	 ASC
	</#if>
</#if>