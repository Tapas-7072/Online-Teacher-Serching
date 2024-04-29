<%-- 
    Document   : login_teacher
    Created on : 21 Jul, 2023, 10:29:12 PM
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
       
            
            String un=request.getParameter("tln");
            String pw=request.getParameter("tlp");%>
          

        <%
            try{
                       
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
            ResultSet rs=null;
            PreparedStatement ps=con.prepareStatement("select username,password from teacher_regd where username =? AND password =?");
            ps.setString(1, un);
            ps.setString(2, pw);
            rs=ps.executeQuery();
            

            if (rs.next()){%>

                                                <%response.sendRedirect("afterTeacher_login.html");%>


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
