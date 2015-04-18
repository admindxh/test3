package test;

import java.util.ArrayList;
import java.util.List;
import org.jeecgframework.codegenerate.generate.onetomany.CodeGenerateOneToMany;
import org.jeecgframework.codegenerate.pojo.onetomany.CodeParamEntity;
import org.jeecgframework.codegenerate.pojo.onetomany.SubTableEntity;

public class JeecgOneToMainUtil
{
  public static void main(String[] args)
  {
    CodeParamEntity codeParamEntityIn = new CodeParamEntity();
    codeParamEntityIn.setTableName("jeecg_order_main");
    codeParamEntityIn.setEntityName("OrderMain");
    codeParamEntityIn.setEntityPackage("jeecg");
    codeParamEntityIn.setFtlDescription("订单主数据");

    List subTabParamIn = new ArrayList();

    SubTableEntity po = new SubTableEntity();
    po.setTableName("jeecg_order_custom");
    po.setEntityName("OrderCustoms");
    po.setEntityPackage("jeecg");
    po.setFtlDescription("订单客户明细");

    po.setForeignKeys(new String[] { "ID", "GO_ORDER_CODE" });
    subTabParamIn.add(po);

    SubTableEntity po2 = new SubTableEntity();
    po2.setTableName("jeecg_order_product");
    po2.setEntityName("OrderProduct");
    po2.setEntityPackage("jeecg");
    po2.setFtlDescription("订单产品明细");

    po2.setForeignKeys(new String[] { "ID", "GO_ORDER_CODE" });
    subTabParamIn.add(po2);
    codeParamEntityIn.setSubTabParam(subTabParamIn);

    CodeGenerateOneToMany.oneToManyCreate(subTabParamIn, codeParamEntityIn);
  }
}