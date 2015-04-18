package weixin.shop.common;

public class ShopPage
{
  private int pageNo;
  private int pageSize = 5;
  private int total;

  public void setPageNo(int pageNo)
  {
    this.pageNo = pageNo;
  }

  public int getPageNo() {
    return this.pageNo;
  }

  public void setPageSize(int pageSize) {
    this.pageSize = pageSize;
  }

  public int getPageSize() {
    return this.pageSize;
  }

  public void setTotal(int total) {
    this.total = total;
  }

  public int getTotal() {
    return this.total;
  }
}