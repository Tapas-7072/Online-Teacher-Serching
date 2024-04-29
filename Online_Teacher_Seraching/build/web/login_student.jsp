<%-- 
    Document   : login_student
    Created on : 22 Jul, 2023, 12:20:05 AM
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
       
            
            String un=request.getParameter("sln");
            String pw=request.getParameter("slp");%>
          

        <%
            try{
                       
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
            ResultSet rs=null;
            PreparedStatement ps=con.prepareStatement("select username,password from student_regd where username =? AND password =?");
            ps.setString(1, un);
            ps.setString(2, pw);
            rs=ps.executeQuery();
            

            if (rs.next()){%>

                         <%response.sendRedirect("afterStudent_login.html");%>



            <%}
            else{%>
                 <script>
                alert("Invalid Username or Password");
            </script>
    
           <% }
            con.close();
            }
            catch(Exception e){
                e.printStackTrace();
            }
            

            %>
    </body>
</html>
