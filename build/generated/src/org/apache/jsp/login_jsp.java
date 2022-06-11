package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>LOGIN</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <style>\n");
      out.write("        body {\n");
      out.write("          margin: 0;\n");
      out.write("          font-family: Arial, Helvetica, sans-serif;\n");
      out.write("          background-image: url(\"https://www.rentacarkerala.in/wp-content/uploads/2018/10/best.jpg\");\n");
      out.write("          background-size: 100%;\n");
      out.write("        }\n");
      out.write("        .topnav {\n");
      out.write("          overflow: hidden;\n");
      out.write("          background-color: #040405;\n");
      out.write("        }\n");
      out.write("        .topnav a {\n");
      out.write("          float: left;\n");
      out.write("          color: #ED8BF9;\n");
      out.write("          text-align: center;\n");
      out.write("          padding: 14px 16px;\n");
      out.write("          text-decoration: none;\n");
      out.write("          font-size: 17px;\n");
      out.write("        }\n");
      out.write("        .topnav a:hover {\n");
      out.write("          background-color: #ED8BF9;\n");
      out.write("          color: black;\n");
      out.write("        }\n");
      out.write("        .topnav a.active {\n");
      out.write("          background-color: #F74211;\n");
      out.write("          color: white;\n");
      out.write("        }\n");
      out.write("        div {\n");
      out.write("            text-align: justify-all;\n");
      out.write("        }\n");
      out.write("        button {\n");
      out.write("          border: 2px solid #AD078A;\n");
      out.write("          color: palegoldenrod;\n");
      out.write("          padding: 20px 40px;\n");
      out.write("          text-align: center;\n");
      out.write("          text-decoration: pink;\n");
      out.write("          display: inline-block;\n");
      out.write("          font-size: 20px;\n");
      out.write("          margin: 10px 10px;\n");
      out.write("          cursor: pointer;\n");
      out.write("          background-color: black;\n");
      out.write("          font: Arial;\n");
      out.write("        }\n");
      out.write("        fieldset {\n");
      out.write("            background-color: tan;\n");
      out.write("            border: 10px solid rgb(255,232,57);\n");
      out.write("            width: 700px;\n");
      out.write("            float: start; \n");
      out.write("        }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- TOP NAVIGATION -->\n");
      out.write("        <div class=\"topnav\">\n");
      out.write("            <a class=\"active\" href=\"index.jsp\">Home</a>\n");
      out.write("            <a href=\"#news\">Login</a>\n");
      out.write("            <a href=\"carrentanddetails.jsp\">Car Rent And Details</a>\n");
      out.write("            <a href=\"payment.jsp\">Payment</a>\n");
      out.write("        </div>\n");
      out.write("        <div>\n");
      out.write("            \n");
      out.write("             <div class=\"form group\">\n");
      out.write("                <form action=\"userAccount.jsp\" method=\"post\">\n");
      out.write("                \n");
      out.write("                    <div class=\"\">\n");
      out.write("                        <label for=\"name\">Nick Name :</label>\n");
      out.write("                    <input type=\"text\" id=\"nickname\" name=\"NICKNAME\"size=\"60\" placeholder=\"Enter your nick name\"><br><br/>  \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"\">\n");
      out.write("                         <label for=\"password\">Password :</label>    \n");
      out.write("                    <input type=\"password\" name=\"PASSWORRD\" size=\"40\" id=\"PASSWORRD\" placeholder=\"**********\"><br><br/>\n");
      out.write("                    <input type=\"checkbox\" onclick=\"myFunction()\">Show Password <br><br/>\n");
      out.write("\n");
      out.write("                    <div class=\"\">\n");
      out.write("                        <button> <input type=\"Submit\"></button>\n");
      out.write("                    <button> <input type=\"reset\"></button>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("             </div></div>\n");
      out.write("        \n");
      out.write("        <!-- JavaScript -->\n");
      out.write("        <script>\n");
      out.write("        function myFunction() {\n");
      out.write("            var x = document.getElementById(\"PASSWORRD\");\n");
      out.write("            if (x.type === \"PASSWORRD\") {\n");
      out.write("                x.type = \"text\";\n");
      out.write("            } \n");
      out.write("            else {\n");
      out.write("                x.type = \"PASSWORRD\";\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
