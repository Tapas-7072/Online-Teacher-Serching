<%-- 
    Document   : teacher_regd
    Created on : 21 Jul, 2023, 10:08:18 PM
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
          
                String name=request.getParameter("tname");
                String phone=request.getParameter("tphn");
                String email=request.getParameter("temail");
                String username=request.getParameter("tuname");
                String password=request.getParameter("tp");
                String gender=request.getParameter("g");
                String age=request.getParameter("age");
                String specialization=request.getParameter("course");
                String place=request.getParameter("place");
                String experience=request.getParameter("ex");


                
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
             Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select phonenumber from teacher_regd where phonenumber = '" +phone + "'");
            if (rs.next()){
              out.println("<body style=color:red;text-align:center;font-size:50px;font-weight:bold;margin-top:50px></body>");

                out.println("Phone Number Already Exist !!"+"&#128529;&#128529;");
            }
            else{
            
            PreparedStatement ps=con.prepareStatement("insert into teacher_regd values(?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, username);
            ps.setString(5, password );
            ps.setString(6, gender);
            ps.setString(7, age);
            ps.setString(8,specialization );
            ps.setString(9, place);
            ps.setString(10, experience);

            ps.executeUpdate();
            con.close();
        out.println("<body style=color:green;text-align:center;font-size:50px;font-weight:bold;margin-top:50px></body>");

            out.println("Registered Successfully !!!"+"&#128522;&#128522;");


        }}
        catch(Exception e){
            e.printStackTrace();
        }
            %>
    </body>
</html>
