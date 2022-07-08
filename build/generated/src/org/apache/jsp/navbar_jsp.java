package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class navbar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\n");
      out.write("    ");
 if (userSession != null) { 
      out.write("\n");
      out.write("    <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link active\" aria-current=\"page\" href=\"account.jsp\">Home</a>\n");
      out.write("    </li>\n");
      out.write("    ");
  }
        if (userSession == null) {
      out.write("\n");
      out.write("    <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link active\" aria-current=\"page\" href=\"index.jsp\">Home</a>\n");
      out.write("    </li>\n");
      out.write("    ");
  }
      out.write("\n");
      out.write("    ");
 if (userSession == null) {
      out.write("\n");
      out.write("    <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"login.jsp\">Login</a>\n");
      out.write("    </li>\n");
      out.write("    ");
  }
      out.write("\n");
      out.write("    <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"carrentanddetails.jsp\">Car Details</a>\n");
      out.write("    </li>\n");
      out.write("    <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"payment.jsp\">Payment</a>\n");
      out.write("    </li>\n");
      out.write("</ul>\n");
 if (userSession != null) {
      out.write("\n");
      out.write("<ul class=\"navbar-nav\">\n");
      out.write("    <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"logout.jsp\">Logout</a>\n");
      out.write("    </li>\n");
      out.write("</ul>\n");
  }
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
