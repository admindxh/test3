SELECT * FROM weixin_shop_category WHERE 1=1 
<#if params.sellerId ?exists && params.sellerId ?length gt 0>
	and seller_id = :params.sellerId
</#if>
<#if params.accountid ?exists && params.accountid ?length gt 0>
	and accountid = :params.accountid
</#if>