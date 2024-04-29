<%-- 
    Document   : delete_student
    Created on : 23 Jul, 2023, 1:53:59 PM
    Author     : tapas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                  <% 
             String phone=request.getParameter("phn");
             String password=request.getParameter("pw");

             

            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select phonenumber,password from student_regd where phonenumber='"+phone+"' and password='"+password+"'");
                if(rs.next()){
                    PreparedStatement ps=con.prepareStatement("delete from student_regd where phonenumber=?");
                    ps.setString(1, phone);
                ps.executeUpdate();
                 con.close();
                out.println("<body style=text-align:center;font-size:50px;font-weight:bold;margin-top:50px;color:red;></body>");

                out.print("Deleted Successfully");
                }
                else{
                    out.println("<body style=text-align:center;font-size:50px;font-weight:bold;margin-top:50px;color:red;></body>");

                                 out.print("Invalid Phone number Or Password");
   
                }
               
                
               


            }
            catch(Exception e){
                e.printStackTrace();
            }
            %>
    </body>
</html>
