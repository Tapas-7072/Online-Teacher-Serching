<%-- 
    Document   : all_updateadmin
    Created on : 25 Jul, 2023, 7:33:56 PM
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
            try{
                
                String ophone=request.getParameter("cphone");

                String ch1=request.getParameter("r1");
                String nname=request.getParameter("nname");

                String nphone=request.getParameter("nphone");
                String nemail=request.getParameter("nemail");
                String nage=request.getParameter("nage");

                String nuname=request.getParameter("nuname");



                   Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
                 Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select phonenumber from admin_regd where phonenumber = '" +ophone + "'");
            if (rs.next()){
             

               
            if(ch1==null){%>
            <script>alert("Please select a Option");</script>
           <% }
            else{
            if(ch1.equals("phone")){
                PreparedStatement ps=con.prepareStatement("update admin_regd set phonenumber=? where phonenumber=?");
                ps.setString(1, nphone);
                ps.setString(2, ophone);
                ps.executeUpdate();%>
                
                 <script>
                    alert("Updated SuccessFully");
                </script>
           <% }
            
           else if(ch1.equals("name")){
                PreparedStatement pst=con.prepareStatement("update admin_regd set name=? where phonenumber=?");
                pst.setString(1, nname);
                pst.setString(2, ophone);
                pst.executeUpdate();%>
                
                <script>
                    alert("Updated SuccessFully");
                </script>
            <%}
           else if(ch1.equals("email")){
                PreparedStatement pstt=con.prepareStatement("update admin_regd set Email=? where phonenumber=?");
                pstt.setString(1, nemail);
                pstt.setString(2, ophone);
                pstt.executeUpdate();%>
                <script>
                    alert("Updated SuccessFully");
                </script>
                
           <% }
            else if(ch1.equals("age")){
                PreparedStatement pstt=con.prepareStatement("update admin_regd set age=? where phonenumber=?");
                pstt.setString(1, nage);
                pstt.setString(2, ophone);
                pstt.executeUpdate();%>
                  <script>
                    alert("Updated SuccessFully");
                </script>
        <% }
      else if(ch1.equals("uname")){
                PreparedStatement pstt=con.prepareStatement("update admin_regd set username=? where phonenumber=?");
                pstt.setString(1, nuname);
                pstt.setString(2, ophone);
                pstt.executeUpdate();%>
                  <script>
                    alert("Updated SuccessFully");
                </script>
        <% } 
            }}else{%>
            <script>
                alert("Wrong Number");
            </script>
<%}}
            
            catch(Exception e){
                e.printStackTrace();
            }
            %>
            
    </body>
</html>
