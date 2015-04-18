package org.jeecgframework.web.system.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintStream;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AwardsImageServlet extends HttpServlet
{
  private static final long serialVersionUID = -1257947018545327308L;
  private static final String SESSION_KEY_OF_RAND_CODE = "randCode";
  private static final int count = 200;
  private static final int width = 180;
  private static final int height = 40;

  public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setDateHeader("Expires", 0L);
    String name = new String(request.getParameter("awardsname").getBytes("iso8859-1"), "utf-8");
    System.out.println(name);
    System.out.println(name.length());

    BufferedImage image = new BufferedImage(180, 40, 1);

    Graphics2D graphics = (Graphics2D)image.getGraphics();

    graphics.setColor(Color.WHITE);
    graphics.fillRect(0, 0, 180, 40);

    graphics.drawRect(0, 0, 179, 39);

    String resultCode = name;
    for (int i = 0; i < resultCode.length(); i++)
    {
      graphics.setColor(Color.BLACK);

      graphics.setFont(new Font("", 1, 20));

      graphics.drawString(String.valueOf(resultCode.charAt(i)), 23 * i + 20, 26);
    }

    request.getSession().setAttribute("randCode", resultCode);

    graphics.dispose();

    ImageIO.write(image, "JPEG", response.getOutputStream());
  }

  public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    doGet(request, response);
  }
}