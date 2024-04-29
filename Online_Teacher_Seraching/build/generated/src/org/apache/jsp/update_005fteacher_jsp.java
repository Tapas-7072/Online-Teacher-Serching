package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class update_005fteacher_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            .us{\n");
      out.write("      width: 400px;\n");
      out.write("      height: 100px;\n");
      out.write("      margin: 70px auto;\n");
      out.write("      background-color: powderblue;\n");
      out.write("      padding: 20px;\n");
      out.write("      \n");
      out.write("      border-radius: 30px;\n");
      out.write("      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);\n");
      out.write("            }\n");
      out.write("            table{\n");
      out.write("                background-color:#ccccff;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:#ffccff\">\n");
      out.write("             <marquee behavior=\"alternate\" style=\"color:#3333ff;font-size: 35px;\">Wellcome to Online Teacher Searching System </marquee>\n");
      out.write("\n");
      out.write("        <div class=\"us\">\n");
      out.write("\n");
      out.write("        \n");
      out.write("      \n");
      out.write("            ");
 try{
                String phone=request.getParameter("phoneee");
               String password=request.getParameter("pw");

                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
                String sql="select phonenumber,place,Email_id from teacher_regd where phonenumber='"+phone+"' and password='"+password+"'";
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(sql);
                if(rs.next()){
      out.write("\n");
      out.write("                  <table border=\"1\">\n");
      out.write("            <tr bgcolor=\"grey\">\n");
      out.write("                <td>Phone Number</td>\n");
      out.write("                <td>Email_ID</td>\n");
      out.write("                <td>Place</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(rs.getString("phonenumber"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("Email_id"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("place"));
      out.write("</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                  </table><br>\n");
      out.write("                    <button style=\"background-color: yellow\"> <a href=\"update_teacher1.html\" style=\"text-decoration: none;\">UPDATE</a></button>\n");
      out.write("          \n");
      out.write("                ");
}else {
      out.write("\n");
      out.write("                <script>\n");
      out.write("                    alert(\"Wrong Number or Password\");\n");
      out.write("                                    window.location.href='update_teacher.html';\n");
      out.write("\n");
      out.write("                </script>\n");
}
                con.close();
}
                catch(Exception e){
                e.printStackTrace();
                     }
      out.write("\n");
      out.write("        </table>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        \n");
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
