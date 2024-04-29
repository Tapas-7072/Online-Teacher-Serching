<%-- 
    Document   : viewstudent
    Created on : 24 Jul, 2023, 12:11:16 AM
    Author     : tapas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
    <% 
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
            }
            catch(ClassNotFoundException e){
                e.printStackTrace();
            }
            %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
                        body{
      font-family: Arial, sans-serif;
      padding: 0;
      background-image: url('sregd.jpg');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
            }
            table,tr,td{
                border-collapse: collapse;
                border: 2px solid black;
               
            }
            .dt{
                float: right;
            }
        </style>
    </head>
    <body>
    <marquee behavior="alternate" style="color:#999900;font-size: 35px;">Wellcome to Online Teacher Searching System </marquee>

        <h1 align="center">All Students Deatails</h1>
        <table style="background-color:#ffcccc;font-weight: bold;">
            <tr style="background-color:#999999;color:white;font-weight: bold;">
                <td>Name</td>
                <td>Phone Number</td>
                <td>Email_Id</td>
                <td>Username</td>
                <td>Password</td>
                <td>Gender</td>
                <td>Age</td>
                <td>School/college</td>
                <td>Qualification</td>
                <td>Place</td>
                <td>course</td>





            </tr>
            <% try{
               

                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
                String sql="select * from student_regd ";
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(sql);
                while (rs.next()){%>
                <tr>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("phonenumber")%></td>
                    <td><%=rs.getString("email_id")%></td>
                    <td><%=rs.getString("USERNAME")%></td>
                    <td><%=rs.getString("PASSWORD")%></td>
                    <td><%=rs.getString("GENDER")%></td>
                    <td><%=rs.getString("AGE")%></td>
                    <td><%=rs.getString("SCHOOL_OR_COLLEGE")%></td>

                    <td><%=rs.getString("QUALIFICATION")%></td>
                    <td><%=rs.getString("PLACE")%></td>
                    <td><%=rs.getString("COURSE")%></td>





                </tr>
                <%}
                con.close();
}
                catch(Exception e){
                e.printStackTrace();
                     }%>
        </table>
        <div class="dt">
            <button class="dlt"><a href="delete_student.html" style="text-decoration: none;color:red">Delete Student</a></button>
        </div>
            
            
        <button><a href="afterAdmin_login.html" style="text-decoration: none;color:black"><b><-BACK</b></a></button>
    </body>
</html>
