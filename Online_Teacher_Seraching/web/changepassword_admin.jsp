<%-- 
    Document   : changepassword_admin
    Created on : 22 Jul, 2023, 12:43:23 AM
    Author     : tapas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                   <%@ page import="java.sql.*" %>

        <%
              try {
         
       
            
           String currentp=request.getParameter("apassword");
           String newp=request.getParameter("anpassword");
           String confirmp=request.getParameter("acpassword");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select password from admin_regd where password = '" +currentp + "'");
            if (rs.next()){
                if(request.getParameter("anpassword").equals("")){
                               out.println("<body style=text-align:center;font-size:50px;font-weight:bold;margin-top:50px></body>");

                              out.println(" Please Enter a New Password");
  
                }
                else if(request.getParameter("acpassword").equals("")){
                       out.println("<body style=text-align:center;font-size:50px;font-weight:bold;margin-top:50px></body>");

                                                out.println(" Please Enter Confirm Password");
  
                }
                else{
            if(newp.equals(confirmp)){
            PreparedStatement ps=con.prepareStatement("update admin_regd set password=? where password=?");
            ps.setString(1, newp);
            ps.setString(2, currentp);
            ps.executeUpdate(); 
            con.close();
            out.println("<body style=color:green;text-align:center;font-size:50px;font-weight:bold;margin-top:50px></body>");

            out.println(" Password Updated Successfully !!"+"&#129395;&#129395;");



            }
            else{
          out.println("<body style=text-align:center;font-size:50px;font-weight:bold;margin-top:50px;color:red;></body>");

                               
                out.println(" Confirm password does't Match");
            }}

        }
            else{
               out.println("<body style=color:red;text-align:center;font-size:50px;font-weight:bold;margin-top:50px></body>");

                out.println("Invalid Current Password !!"+"&#128531;&#128531;");
            }}
        catch(Exception e){
            e.printStackTrace();
        }
            %>
    </body>
</html>
