SELECT COUNT(*) FROM weixin_shop_goods WHERE 1=1 
<#if params.sellerId ?exists && params.sellerId ?length gt 0>
	and seller_id = :params.sellerId
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