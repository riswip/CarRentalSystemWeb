package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        <title>Car Rental System</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<style>\n");
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
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write("button {\n");
      out.write("  border: 2px solid #AD078A;\n");
      out.write("  color: pink;\n");
      out.write("  padding: 20px 40px;\n");
      out.write("  text-align: center;\n");
      out.write("  text-decoration: purple;\n");
      out.write("  display: inline-block;\n");
      out.write("  font-size: 30px;\n");
      out.write("  margin: 40px 20px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  background-color: black;\n");
      out.write("  font: Arial;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"topnav\">\n");
      out.write("  <a class=\"active\" href=\"#home\">Home</a>\n");
      out.write("  <a href=\"login.jsp\">Login</a>s\n");
      out.write("  <a href=\"#contact\">Car Types</a>\n");
      out.write("  <a href=\"#about\">About</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    <div>\n");
      out.write("        <h1>Welcome to our Car Rental Website </h1> \n");
      out.write("        <p> Sign up if does not have any account yet </p>\n");
      out.write("        <p> Click here ! </p>\n");
      out.write("        <button><a href=\"signup.jsp\">SIGN UP</a></button>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("  \n");
      out.write("     \n");
      out.write("\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>");
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
