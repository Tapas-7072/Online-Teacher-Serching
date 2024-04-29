package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class student_005fregd_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("                       \n");
      out.write("\n");
      out.write("        ");

                    try {
          
                String name=request.getParameter("sname");
                String phone=request.getParameter("sphn");
                String email=request.getParameter("semail");
                String username=request.getParameter("suname");
                String password=request.getParameter("sp");
                String gender=request.getParameter("g");
                String age=request.getParameter("age");
                String school=request.getParameter("schoolname");
                String qualification=request.getParameter("qualification");
                String place=request.getParameter("place");
                String course=request.getParameter("course");    
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
             Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select phonenumber from student_regd where phonenumber = '" +phone + "'");
            if (rs.next()){
              out.println("<body style=color:red;text-align:center;font-size:50px;font-weight:bold;margin-top:50px></body>");

                out.println("Phone Number Already Exist !!"+"&#128529;&#128529;");
            }
            else{
            
            PreparedStatement ps=con.prepareStatement("insert into student_regd values(?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, username);
            ps.setString(5, password );
            ps.setString(6, gender);
            ps.setString(7, age);
            ps.setString(8, school);
            ps.setString(9, qualification);
            ps.setString(10, place);
            ps.setString(11,course);
            ps.executeUpdate();
            con.close();
      out.write("\n");
      out.write("            <script>\n");
      out.write("                alert(\"Register Succussfully\");\n");
      out.write("            </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
}}
        catch(Exception e){
            e.printStackTrace();
        }
            
      out.write("\n");
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
