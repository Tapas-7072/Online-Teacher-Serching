<%-- 
    Document   : student_regd
    Created on : 21 Jul, 2023, 10:53:10 PM
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
            con.close();%>
            <script>
                alert("Register Succussfully");
            </script>


        <%}}
        catch(Exception e){
            e.printStackTrace();
        }
            %>
    </body>
</html>
