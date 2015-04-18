SELECT * FROM weixin_shop_address WHERE 1=1 
<#if params.userid ?exists && params.userid ?length gt 0>
	and userid = :params.userid
</#if>
<#if params.accountid ?exists && params.accountid ?length gt 0>
	and accountid = :params.accountid
</#if>
	 ORDER BY create_date DESC  
