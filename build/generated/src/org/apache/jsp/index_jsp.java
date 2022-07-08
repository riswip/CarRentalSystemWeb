package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/navbar.jsp");
  }

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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Car Rental System Home</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print( request.getContextPath() );
      out.write("/css/bootstrap.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print( request.getContextPath() );
      out.write("/css/main-style.css\">\r\n");
      out.write("        <style>\r\n");
      out.write("            body {\r\n");
      out.write("                margin: 0;\r\n");
      out.write("                background-image: url(\"https://www.rentacarkerala.in/wp-content/uploads/2018/10/best.jpg\");\r\n");
      out.write("                background-size: 100%;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- TOP NAVIGATION BAR -->\r\n");
      out.write("        <nav class=\"navbar navbar-expand-lg bg-dark\">\r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">Car Rental</a>\r\n");
      out.write("                <button class=\"navbar-toggler tb-btn\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                    -\r\n");
      out.write("                </button>\r\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("                    <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("                        ");
      out.write("\n");
      out.write("<li class=\"nav-item\">\n");
      out.write("    <a class=\"nav-link active\" aria-current=\"page\" href=\"index.jsp\">Home</a>\n");
      out.write("</li>\n");
      out.write("<li class=\"nav-item\">\n");
      out.write("    <a class=\"nav-link\" href=\"login.jsp\">Login</a>\n");
      out.write("</li>\n");
      out.write("<li class=\"nav-item\">\n");
      out.write("    <a class=\"nav-link\" href=\"carrentanddetails.jsp\">Car Details</a>\n");
      out.write("</li>\n");
      out.write("<li class=\"nav-item\">\n");
      out.write("    <a class=\"nav-link\" href=\"payment.jsp\">Payment</a>\n");
      out.write("</li>");
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <!-- CONTENT -->\r\n");
      out.write("        <div>\r\n");
      out.write("            <h1>Welcome to our Car Rental Website </h1> \r\n");
      out.write("            <p> Sign up if does not have any account yet </p>\r\n");
      out.write("            <p> Click here ! </p>\r\n");
      out.write("            <button><a href=\"signup.jsp\">SIGN UP</a></button>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <script src=\"");
      out.print( request.getContextPath() );
      out.write("/js/bootstrap.bundle.min.js\"></script>\r\n");
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
