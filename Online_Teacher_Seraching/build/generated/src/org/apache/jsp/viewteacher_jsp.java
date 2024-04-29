package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class viewteacher_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("    ");
 
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
            }
            catch(ClassNotFoundException e){
                e.printStackTrace();
            }
            
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("                        body{\n");
      out.write("      font-family: Arial, sans-serif;\n");
      out.write("      padding: 0;\n");
      out.write("      background-image: url('sregd.jpg');\n");
      out.write("      background-repeat: no-repeat;\n");
      out.write("      background-attachment: fixed;\n");
      out.write("      background-size: cover;\n");
      out.write("            }\n");
      out.write("            table,tr,td{\n");
      out.write("                border-collapse: collapse;\n");
      out.write("                border: 3px solid black;\n");
      out.write("            }\n");
      out.write("            .dt{\n");
      out.write("                float: right;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <marquee behavior=\"alternate\" style=\"color:#999900;font-size: 35px;\">Wellcome to Online Teacher Searching System </marquee>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <h1 align=\"center\">All Teachers Deatails</h1>\n");
      out.write("        <table style=\"background-color:yellow;font-weight: bold;\">\n");
      out.write("            <tr bgcolor=\"grey\">\n");
      out.write("                <td>Name</td>\n");
      out.write("                <td>Phone Number</td>\n");
      out.write("                <td>Email_Id</td>\n");
      out.write("                <td>Username</td>\n");
      out.write("                <td>Password</td>\n");
      out.write("                <td>Gender</td>\n");
      out.write("                <td>Age</td>\n");
      out.write("                <td>Specialization</td>\n");
      out.write("                <td>Place</td>\n");
      out.write("                <td>Experience(Years)</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("            ");
 try{
               

                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
                String sql="select * from teacher_regd ";
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(sql);
                while (rs.next()){
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(rs.getString("name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("phonenumber"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("email_id"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("USERNAME"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("PASSWORD"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("GENDER"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("AGE"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("SPECIALIZATION"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                    <td>");
      out.print(rs.getString("PLACE"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("EXPERIENCE"));
      out.write("</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                ");
}
                con.close();
}
                catch(Exception e){
                e.printStackTrace();
                     }
      out.write("\n");
      out.write("        </table>\n");
      out.write("        <div class=\"dt\">\n");
      out.write("            <button class=\"dlt\"><a href=\"delete_teacher.html\" style=\"text-decoration: none;color:red\">Delete Teacher</a></button>\n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        <button><a href=\"afterAdmin_login.html\" style=\"text-decoration: none;color:black\"><b><-BACK</b></a></button>\n");
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
