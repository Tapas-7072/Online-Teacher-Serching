<%-- 
    Document   : admin_regd
    Created on : 22 Jul, 2023, 10:06:09 AM
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
          
                String name=request.getParameter("aname");
                String phone=request.getParameter("aphn");
                String email=request.getParameter("aemail");
                String gender=request.getParameter("g");
                String age=request.getParameter("age");


                String username=request.getParameter("auname");
                String password=request.getParameter("ap");
                String HR_password=request.getParameter("hp");
               
                
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
             Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select phonenumber from admin_regd where phonenumber = '" +phone + "'");
            if (rs.next()){
              out.println("<body style=color:red;text-align:center;font-size:50px;font-weight:bold;margin-top:50px></body>");

                out.println("Phone Number Already Exist !!"+"&#128529;&#128529;");
            }
            
            else if(HR_password.equals("Boss@123")){
            
            PreparedStatement ps=con.prepareStatement("insert into admin_regd values(?,?,?,?,?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, gender);
            ps.setString(5, age);
            ps.setString(6, username);
            ps.setString(7, password );
            ps.setString(8,HR_password);
           
            ps.executeUpdate();
            con.close();
        out.println("<body style=color:green;text-align:center;font-size:50px;font-weight:bold;margin-top:50px></body>");

            out.println("Registered Successfully !!!"+"&#128522;&#128522;");


        }
            else{
               out.println("Can't Register HR-password Incorrect !!!"+"&#128529;&#128529;");

            }}
        catch(Exception e){
            e.printStackTrace();
        }
            %>
    </body>
</html>
