package org.jeecgframework.web.system.servlet;

import java.util.Random;

 enum RandCodeImageEnum
{
  ALL_CHAR("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 

  LETTER_CHAR("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 

  LOWER_CHAR("abcdefghijklmnopqrstuvwxyz"), 

  NUMBER_CHAR("0123456789"), 

  UPPER_CHAR("ABCDEFGHIJKLMNOPQRSTUVWXYZ");

  private String charStr;

  private RandCodeImageEnum(String charStr)
  {
    this.charStr = charStr;
  }

  public String generateStr(int codeLength)
  {
    StringBuffer sb = new StringBuffer();
    Random random = new Random();
    String sourseStr = getCharStr();

    for (int i = 0; i < codeLength; i++) {
      sb.append(sourseStr.charAt(random.nextInt(sourseStr.length())));
    }

    return sb.toString();
  }

  public String getCharStr()
  {
    return this.charStr;
  }
}