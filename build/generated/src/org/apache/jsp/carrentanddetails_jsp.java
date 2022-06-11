package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class carrentanddetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>CAR RENT AND DETAILS</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <style>\r\n");
      out.write("        body {\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            font-family: Arial, Helvetica, sans-serif;\r\n");
      out.write("            background-image: url(\"https://www.rentacarkerala.in/wp-content/uploads/2018/10/best.jpg\");\r\n");
      out.write("            background-size: 100%;\r\n");
      out.write("        }\r\n");
      out.write("        .topnav {\r\n");
      out.write("            overflow: hidden;\r\n");
      out.write("            background-color: #040405;\r\n");
      out.write("        }\r\n");
      out.write("        .topnav a {\r\n");
      out.write("            float: left;\r\n");
      out.write("            color: #ED8BF9;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            padding: 14px 16px;\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("            font-size: 17px;\r\n");
      out.write("        }\r\n");
      out.write("        .topnav a:hover {\r\n");
      out.write("            background-color: #ED8BF9;\r\n");
      out.write("            color: black;\r\n");
      out.write("        }\r\n");
      out.write("        .topnav a.active {\r\n");
      out.write("            background-color: #F74211;\r\n");
      out.write("            color: white;\r\n");
      out.write("        }\r\n");
      out.write("        div {\r\n");
      out.write("            text-align: justify-all;\r\n");
      out.write("        }\r\n");
      out.write("        button {\r\n");
      out.write("            border: 2px solid #AD078A;\r\n");
      out.write("            color: palegoldenrod;\r\n");
      out.write("            padding: 20px 40px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            text-decoration: pink;\r\n");
      out.write("            display: inline-block;\r\n");
      out.write("            font-size: 20px;\r\n");
      out.write("            margin: 10px 10px;\r\n");
      out.write("            cursor: pointer;\r\n");
      out.write("            background-color: black;\r\n");
      out.write("            font: Arial;\r\n");
      out.write("        }\r\n");
      out.write("        fieldset {\r\n");
      out.write("            background-color: tan;\r\n");
      out.write("            border: 10px solid rgb(255,232,57);\r\n");
      out.write("            width: 700px;\r\n");
      out.write("            float: start;\r\n");
      out.write("        }\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- TOP NAVIGATION -->\r\n");
      out.write("        <div class=\"topnav\">\r\n");
      out.write("            <a class=\"active\" href=\"index.jsp\">Home</a>\r\n");
      out.write("            <a href=\"login.jsp\">Login</a>\r\n");
      out.write("            <a href=\"#carrentanddetails\">Car Rent And Details</a>\r\n");
      out.write("            <a href=\"payment.jsp\">Payment</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <!-- CONTENT -->\r\n");
      out.write("        <fieldset>\r\n");
      out.write("            <p><strong>PERODUA MYVI</strong></p>\r\n");
      out.write("            <p>\r\n");
      out.write("            <img src=\"https://upload.wikimedia.org/wikipedia/commons/5/5b/2013_Perodua_Myvi_1.3_SE_%28S-Series%29_in_Cyberjaya%2C_Malaysia_%2803%29.jpg\" alt=\"PERODUA MYVI\" style=\"float:left;width:400px;height:300px;\">\r\n");
      out.write("            Car Type : Perodua Myvi AUTO <br><br/>\r\n");
      out.write("            Car Number Plate : ABC1234 <br><br/>\r\n");
      out.write("            Charge Per/Hour : RM70/1 hour <br><br/>\r\n");
      out.write("            Capacity : 5 person <br><br/>\r\n");
      out.write("            Status : Available until 2300 hours <br><br/>\r\n");
      out.write("            <button type=\"button\">Book</button>\r\n");
      out.write("            </p>\r\n");
      out.write("        </fieldset>\r\n");
      out.write("\r\n");
      out.write("        <fieldset>\r\n");
      out.write("            <p><strong>PERODUA VIVA</strong></p>\r\n");
      out.write("            <p>\r\n");
      out.write("            <img src=\"https://lepaskunci.com.my/storage/vehicle/1276/file_1640189179_61c34cfb15d5c.jpg\" alt=\"PERODUA VIVA\" style=\"float:left;width:400px;height:300px;\">\r\n");
      out.write("            Car Type : Perodua Viva AUTO <br><br/>\r\n");
      out.write("            Car Number Plate : BCD7890 <br><br/>\r\n");
      out.write("            Charge Per/Hour : RM6/1 hour <br><br/>\r\n");
      out.write("            Capacity : 4 person <br><br/>\r\n");
      out.write("            Status : Available until 2300 hours <br><br/>\r\n");
      out.write("            <button type=\"button\">Book</button>\r\n");
      out.write("            </p>\r\n");
      out.write("        </fieldset>\r\n");
      out.write("\r\n");
      out.write("        <fieldset>\r\n");
      out.write("            <p><strong>PERODUA AXIA</strong></p>\r\n");
      out.write("            <p>\r\n");
      out.write("            <img src=\"https://paultan.org/image/2019/09/Perodua_Axia_FL_GXtra__GearUp_Malaysia-2-BM.jpg\" alt=\"PERODUA AXIA\" style=\"float:left;width:400px;height:300px;\">\r\n");
      out.write("            Car Type : Perodua Axia AUTO <br><br/>\r\n");
      out.write("            Car Number Plate : TBG 8008 <br><br/>\r\n");
      out.write("            Charge Per/Hour : RM6/1 hour <br><br/>\r\n");
      out.write("            Capacity : 7-8 person <br><br/>\r\n");
      out.write("            Status : Available until 2300 hours <br><br/>\r\n");
      out.write("            <button type=\"button\">Book</button>\r\n");
      out.write("            </p>\r\n");
      out.write("        </fieldset>\r\n");
      out.write("\r\n");
      out.write("        <fieldset>\r\n");
      out.write("            <p><strong>PROTON SAGA ISWARA </strong></p>\r\n");
      out.write("            <p>\r\n");
      out.write("            <img src=\"https://fichasmotor.com/images/proton/proton-saga-iswara-1-5i-90-cv.webp\" alt=\"PROTON SAGA ISWARA\" style=\"float:left;width:400px;height:300px;\">\r\n");
      out.write("            Car Type : Proton Saga Iswara MANUAL <br><br/>\r\n");
      out.write("            Car Number Plate : W 786 C <br><br/>\r\n");
      out.write("            Charge Per/Hour : RM7/1 hour <br><br/>\r\n");
      out.write("            Capacity : 5 person <br><br/>\r\n");
      out.write("            Status : Available until 2300 hours <br><br/>\r\n");
      out.write("            <button type=\"button\">Book</button>\r\n");
      out.write("            </p>\r\n");
      out.write("        </fieldset>\r\n");
      out.write("\r\n");
      out.write("        <fieldset>\r\n");
      out.write("            <p><strong>MPV PROTON EXORA BOLD</strong></p>\r\n");
      out.write("            <p>\r\n");
      out.write("            <img src=\"https://upload.wikimedia.org/wikipedia/commons/7/7f/Proton_Exora_Bold_%28front%29_in_Kuala_Lumpur%2C_Malaysia.JPG\" alt=\"MPV PROTON EXORA BOLD\" style=\"float:left;width:400px;height:300px;\">\r\n");
      out.write("            Car Type : MPV Proton Exora Bold AUTO <br><br/>\r\n");
      out.write("            Car Number Plate : CDE 1111 <br><br/>\r\n");
      out.write("            Charge Per/Hour : RM10/1 hour <br><br/>\r\n");
      out.write("            Capacity : 7-8 person <br><br/>\r\n");
      out.write("            Status : Available until 2300 hours <br><br/>\r\n");
      out.write("            <button type=\"button\">Book</button>\r\n");
      out.write("            </p>\r\n");
      out.write("        </fieldset>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
