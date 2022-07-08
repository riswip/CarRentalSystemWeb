package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.util.DBConnection;

public final class payment_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    String userSession = (String) session.getAttribute("userSession");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Payment - Car Rental</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print( request.getContextPath());
      out.write("/css/bootstrap.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print( request.getContextPath());
      out.write("/css/main-style.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("        <style>\r\n");
      out.write("            .topnav {\r\n");
      out.write("                overflow: hidden;\r\n");
      out.write("                background-color: #040405;\r\n");
      out.write("            }\r\n");
      out.write("            .topnav a {\r\n");
      out.write("                float: left;\r\n");
      out.write("                color: #ED8BF9;\r\n");
      out.write("                text-align: center;\r\n");
      out.write("                padding: 14px 16px;\r\n");
      out.write("                text-decoration: none;\r\n");
      out.write("                font-size: 17px;\r\n");
      out.write("            }\r\n");
      out.write("            .topnav a:hover {\r\n");
      out.write("                background-color: #ED8BF9;\r\n");
      out.write("                color: black;\r\n");
      out.write("            }\r\n");
      out.write("            .topnav a.active {\r\n");
      out.write("                background-color: #F74211;\r\n");
      out.write("                color: white;\r\n");
      out.write("            }\r\n");
      out.write("            div {\r\n");
      out.write("                text-align: justify-all;\r\n");
      out.write("            }\r\n");
      out.write("            button {\r\n");
      out.write("                border: 2px solid #AD078A;\r\n");
      out.write("                color: palegoldenrod;\r\n");
      out.write("                padding: 20px 40px;\r\n");
      out.write("                text-align: center;\r\n");
      out.write("                text-decoration: pink;\r\n");
      out.write("                display: inline-block;\r\n");
      out.write("                font-size: 20px;\r\n");
      out.write("                margin: 10px 10px;\r\n");
      out.write("                cursor: pointer;\r\n");
      out.write("                background-color: black;\r\n");
      out.write("                font: Arial;\r\n");
      out.write("            }\r\n");
      out.write("            fieldset {\r\n");
      out.write("                background-color: gray;\r\n");
      out.write("                border: 10px solid rgb(255,232,57);\r\n");
      out.write("                width: 700px;\r\n");
      out.write("                float: start;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("        <style>\r\n");
      out.write("            * {\r\n");
      out.write("                box-sizing: border-box;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .row {\r\n");
      out.write("                display: -ms-flexbox; /* IE10 */\r\n");
      out.write("                display: flex;\r\n");
      out.write("                -ms-flex-wrap: wrap; /* IE10 */\r\n");
      out.write("                flex-wrap: wrap;\r\n");
      out.write("                margin: 0 -16px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .col-25 {\r\n");
      out.write("                -ms-flex: 25%; /* IE10 */\r\n");
      out.write("                flex: 25%;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .col-50 {\r\n");
      out.write("                -ms-flex: 50%; /* IE10 */\r\n");
      out.write("                flex: 50%;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .col-75 {\r\n");
      out.write("                -ms-flex: 75%; /* IE10 */\r\n");
      out.write("                flex: 75%;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .col-25,\r\n");
      out.write("            .col-50,\r\n");
      out.write("            .col-75 {\r\n");
      out.write("                padding: 0 16px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .container {\r\n");
      out.write("                background-color: #f2f2f2;\r\n");
      out.write("                padding: 5px 20px 15px 20px;\r\n");
      out.write("                border: 1px solid lightgrey;\r\n");
      out.write("                border-radius: 3px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            input[type=text] {\r\n");
      out.write("                width: 100%;\r\n");
      out.write("                margin-bottom: 20px;\r\n");
      out.write("                padding: 12px;\r\n");
      out.write("                border: 1px solid #ccc;\r\n");
      out.write("                border-radius: 3px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            label {\r\n");
      out.write("                margin-bottom: 10px;\r\n");
      out.write("                display: block;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .icon-container {\r\n");
      out.write("                margin-bottom: 20px;\r\n");
      out.write("                padding: 7px 0;\r\n");
      out.write("                font-size: 24px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .btn {\r\n");
      out.write("                background-color: #04AA6D;\r\n");
      out.write("                color: white;\r\n");
      out.write("                padding: 12px;\r\n");
      out.write("                margin: 10px 0;\r\n");
      out.write("                border: none;\r\n");
      out.write("                width: 100%;\r\n");
      out.write("                border-radius: 3px;\r\n");
      out.write("                cursor: pointer;\r\n");
      out.write("                font-size: 17px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .btn:hover {\r\n");
      out.write("                background-color: #45a049;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            a {\r\n");
      out.write("                color: #2196F3;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            hr {\r\n");
      out.write("                border: 1px solid lightgrey;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            span.price {\r\n");
      out.write("                float: right;\r\n");
      out.write("                color: grey;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the \"cart\" column go on top) */\r\n");
      out.write("            @media (max-width: 800px) {\r\n");
      out.write("                .row {\r\n");
      out.write("                    flex-direction: column-reverse;\r\n");
      out.write("                }\r\n");
      out.write("                .col-25 {\r\n");
      out.write("                    margin-bottom: 20px;\r\n");
      out.write("                }\r\n");
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
      out.write("                    ");
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
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <!-- CONTENT -->\r\n");
      out.write("        <div class=\"container col-4 pt-5 pb-5 mt-5 mb-5\">\r\n");
      out.write("            <form action=\"\" method=\"POST\">\r\n");
      out.write("                <div class=\"\">\r\n");
      out.write("                    <h3>Payment</h3>\r\n");
      out.write("                    <label for=\"fname\">Accepted Cards</label>\r\n");
      out.write("                    <div class=\"icon-container\">\r\n");
      out.write("                        <i class=\"fa fa-cc-visa\" style=\"color:navy;\"></i>\r\n");
      out.write("                        <i class=\"fa fa-cc-amex\" style=\"color:blue;\"></i>\r\n");
      out.write("                        <i class=\"fa fa-cc-mastercard\" style=\"color:red;\"></i>\r\n");
      out.write("                        <i class=\"fa fa-cc-discover\" style=\"color:orange;\"></i>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <label for=\"cname\">Name on Card</label>\r\n");
      out.write("                    <input type=\"text\" id=\"cname\" name=\"cardname\" placeholder=\"Name on Card\">\r\n");
      out.write("                    <label for=\"ccnum\">Credit card number</label>\r\n");
      out.write("                    <input type=\"text\" id=\"ccnum\" name=\"cardnumber\" placeholder=\"1111-2222-3333-4444\">\r\n");
      out.write("                    <div class=\"container-md\">\r\n");
      out.write("                        <div class=\"mb-3 row\">\r\n");
      out.write("                            <label class=\"col-form-label col-3\"> Exp month : </label>\r\n");
      out.write("                            <div class=\"col-4\">\r\n");
      out.write("                                <select name=\"expmonth\" class=\"form-select\">\r\n");
      out.write("                                    <option value=\"January\"> January </option>\r\n");
      out.write("                                    <option value=\"February\"> February </option>\r\n");
      out.write("                                    <option value=\"March\"> March </option>\r\n");
      out.write("                                    <option value=\"April\"> April </option>\r\n");
      out.write("                                    <option value=\"May\"> May </option>\r\n");
      out.write("                                    <option value=\"June\"> June </option>\r\n");
      out.write("                                    <option value=\"July\"> July </option>\r\n");
      out.write("                                    <option value=\"August\"> August </option>\r\n");
      out.write("                                    <option value=\"September\"> September </option>\r\n");
      out.write("                                    <option value=\"October\"> October </option>\r\n");
      out.write("                                    <option value=\"November\"> November </option>\r\n");
      out.write("                                    <option value=\"December\"> December </option>\r\n");
      out.write("                                </select>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <input type=\"submit\" value=\"Continue for the receipt\" class=\"btn\">\r\n");
      out.write("                </div>    \r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- JavaScript -->\r\n");
      out.write("        <script src=\"");
      out.print( request.getContextPath());
      out.write("/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("    </body>\r\n");
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
