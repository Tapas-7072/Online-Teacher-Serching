package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class search_005fteacher_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>JSP Page</title>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            font-family: Arial, sans-serif;\n");
      out.write("            padding: 0;\n");
      out.write("            background-image: url('sregd.jpg');\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            background-attachment: fixed;\n");
      out.write("            background-size: cover;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <h1 align=\"center\">Here Some Results.........</h1>\n");
      out.write("\n");
      out.write("    ");
 
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    
      out.write("\n");
      out.write("\n");
      out.write("    ");

    try {
        String sp = request.getParameter("course");
        String place = request.getParameter("place");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tapas123");
        String sql = "select * from teacher_regd where SPECIALIZATION='" + sp + "' and place='" + place + "'";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        if (rs.next()) {
    
      out.write("\n");
      out.write("    <table border=\"1\" align=\"center\" bgcolor=\"yellow\">\n");
      out.write("        <tr bgcolor=\"grey\">\n");
      out.write("            <td>Name</td>\n");
      out.write("            <td>Phone Number</td>\n");
      out.write("            <td>Email_Id</td>\n");
      out.write("            <td>Place</td>\n");
      out.write("            <td>Experience(Years)</td>\n");
      out.write("        </tr>\n");
      out.write("        ");

            do {
        
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td>");
      out.print( rs.getString("name") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print( rs.getString("phonenumber") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print( rs.getString("email_id") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print( rs.getString("place") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print( rs.getString("EXPERIENCE") );
      out.write("</td>\n");
      out.write("        </tr>\n");
      out.write("        ");

            } while (rs.next());
        
      out.write("\n");
      out.write("    </table>\n");
      out.write("    ");

        } else {
            out.println("No result found.");
        }

        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    
      out.write("\n");
      out.write("\n");
      out.write("    <button><a href=\"search_teacher.html\" style=\"text-decoration: none;\"><b><-BACK</b></a></button>\n");
      out.write("</body>\n");
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
