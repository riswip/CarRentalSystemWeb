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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>CAR RENT AND DETAILS</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("  \n");
      out.write("            <style>\n");
      out.write("body {\n");
      out.write("  margin: 0;\n");
      out.write("  font-family: Arial, Helvetica, sans-serif;\n");
      out.write("  background-image: url(\"https://www.rentacarkerala.in/wp-content/uploads/2018/10/best.jpg\");\n");
      out.write("  background-size: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav {\n");
      out.write("  overflow: hidden;\n");
      out.write("  background-color: #040405;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a {\n");
      out.write("  float: left;\n");
      out.write("  color: #ED8BF9;\n");
      out.write("  text-align: center;\n");
      out.write("  padding: 14px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  font-size: 17px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a:hover {\n");
      out.write("  background-color: #ED8BF9;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a.active {\n");
      out.write("  background-color: #F74211;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("div {\n");
      out.write("    text-align: justify-all;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("button {\n");
      out.write("  border: 2px solid #AD078A;\n");
      out.write("  color: palegoldenrod;\n");
      out.write("  padding: 20px 40px;\n");
      out.write("  text-align: center;\n");
      out.write("  text-decoration: pink;\n");
      out.write("  display: inline-block;\n");
      out.write("  font-size: 20px;\n");
      out.write("  margin: 10px 10px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  background-color: black;\n");
      out.write("  font: Arial;\n");
      out.write("}\n");
      out.write("fieldset {\n");
      out.write("  background-color: tan;\n");
      out.write("   border: 10px solid rgb(255,232,57);\n");
      out.write("  width: 700px;\n");
      out.write("  float: start;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<div class=\"topnav\">\n");
      out.write("  <a class=\"active\" href=\"home.jsp\">Home</a>\n");
      out.write("  <a href=\"login.jsp\">Login</a>\n");
      out.write("  <a href=\"#carrentanddetails\">Car Rent And Details</a>\n");
      out.write("  <a href=\"payment.jsp\">Payment</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<fieldset>\n");
      out.write("<p><strong>PERODUA MYVI</strong></p>\n");
      out.write("<p>\n");
      out.write("<img src=\"https://upload.wikimedia.org/wikipedia/commons/5/5b/2013_Perodua_Myvi_1.3_SE_%28S-Series%29_in_Cyberjaya%2C_Malaysia_%2803%29.jpg\" alt=\"PERODUA MYVI\" style=\"float:left;width:400px;height:300px;\">\n");
      out.write("Car Type : Perodua Myvi AUTO <br><br/>\n");
      out.write("Car Number Plate : ABC1234 <br><br/>\n");
      out.write("Charge Per/Hour : RM70/1 hour <br><br/>\n");
      out.write("Capacity : 5 person <br><br/>\n");
      out.write("Status : Available until 2300 hours <br><br/>\n");
      out.write("<button type=\"button\">Book</button>\n");
      out.write("</p></fieldset>\n");
      out.write("\n");
      out.write("<fieldset>\n");
      out.write("<p><strong>PERODUA VIVA</strong></p>\n");
      out.write("<p>\n");
      out.write("<img src=\"https://lepaskunci.com.my/storage/vehicle/1276/file_1640189179_61c34cfb15d5c.jpg\" alt=\"PERODUA VIVA\" style=\"float:left;width:400px;height:300px;\">\n");
      out.write("Car Type : Perodua Viva AUTO <br><br/>\n");
      out.write("Car Number Plate : BCD7890 <br><br/>\n");
      out.write("Charge Per/Hour : RM6/1 hour <br><br/>\n");
      out.write("Capacity : 4 person <br><br/>\n");
      out.write("Status : Available until 2300 hours <br><br/>\n");
      out.write("<button type=\"button\">Book</button>\n");
      out.write("</p></fieldset>\n");
      out.write("\n");
      out.write("<fieldset>\n");
      out.write("<p><strong>PERODUA AXIA</strong></p>\n");
      out.write("<p>\n");
      out.write("<img src=\"https://paultan.org/image/2019/09/Perodua_Axia_FL_GXtra__GearUp_Malaysia-2-BM.jpg\" alt=\"PERODUA AXIA\" style=\"float:left;width:400px;height:300px;\">\n");
      out.write("Car Type : Perodua Axia AUTO <br><br/>\n");
      out.write("Car Number Plate : TBG 8008 <br><br/>\n");
      out.write("Charge Per/Hour : RM6/1 hour <br><br/>\n");
      out.write("Capacity : 7-8 person <br><br/>\n");
      out.write("Status : Available until 2300 hours <br><br/>\n");
      out.write("<button type=\"button\">Book</button>\n");
      out.write("</p></fieldset>\n");
      out.write("\n");
      out.write("<fieldset>\n");
      out.write("<p><strong>PROTON SAGA ISWARA </strong></p>\n");
      out.write("<p>\n");
      out.write("<img src=\"https://fichasmotor.com/images/proton/proton-saga-iswara-1-5i-90-cv.webp\" alt=\"PROTON SAGA ISWARA\" style=\"float:left;width:400px;height:300px;\">\n");
      out.write("Car Type : Proton Saga Iswara MANUAL <br><br/>\n");
      out.write("Car Number Plate : W 786 C <br><br/>\n");
      out.write("Charge Per/Hour : RM7/1 hour <br><br/>\n");
      out.write("Capacity : 5 person <br><br/>\n");
      out.write("Status : Available until 2300 hours <br><br/>\n");
      out.write("<button type=\"button\">Book</button>\n");
      out.write("</p></fieldset>\n");
      out.write("\n");
      out.write("<fieldset>\n");
      out.write("<p><strong>MPV PROTON EXORA BOLD</strong></p>\n");
      out.write("<p>\n");
      out.write("<img src=\"https://upload.wikimedia.org/wikipedia/commons/7/7f/Proton_Exora_Bold_%28front%29_in_Kuala_Lumpur%2C_Malaysia.JPG\" alt=\"MPV PROTON EXORA BOLD\" style=\"float:left;width:400px;height:300px;\">\n");
      out.write("Car Type : MPV Proton Exora Bold AUTO <br><br/>\n");
      out.write("Car Number Plate : CDE 1111 <br><br/>\n");
      out.write("Charge Per/Hour : RM10/1 hour <br><br/>\n");
      out.write("Capacity : 7-8 person <br><br/>\n");
      out.write("Status : Available until 2300 hours <br><br/>\n");
      out.write("<button type=\"button\">Book</button>\n");
      out.write("</p></fieldset>\n");
      out.write("\n");
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
