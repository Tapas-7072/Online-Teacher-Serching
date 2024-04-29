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
        <style>
            
        </style>
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
                String nplace=request.getParameter("nplace");
                String ncourse=request.getParameter("ncourse");
                String ngender=request.getParameter("g");
                String nex=request.getParameter("nex");

                




                   Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
                 Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select phonenumber from teacher_regd where phonenumber = '" +ophone + "'");
            if (rs.next()){
             

               
            if(ch1==null){%>
            <script>alert("Please select a Option");</script>
           <% }
            else{
            if(ch1.equals("phone")){
                PreparedStatement ps=con.prepareStatement("update teacher_regd set phonenumber=? where phonenumber=?");
                ps.setString(1, nphone);
                ps.setString(2, ophone);
                ps.executeUpdate();%>
                
                 <script>
                    alert("Updated SuccessFully");
                </script>
           <% }
            
           else if(ch1.equals("name")){
                PreparedStatement pst=con.prepareStatement("update teacher_regd set name=? where phonenumber=?");
                pst.setString(1, nname);
                pst.setString(2, ophone);
                pst.executeUpdate();%>
                
                <script>
                    alert("Updated SuccessFully");
                </script>
            <%}
           else if(ch1.equals("email")){
                PreparedStatement pstt=con.prepareStatement("update teacher_regd set Email_id=? where phonenumber=?");
                pstt.setString(1, nemail);
                pstt.setString(2, ophone);
                pstt.executeUpdate();%>
                <script>
                    alert("Updated SuccessFully");
                </script>
                
           <% }
            else if(ch1.equals("age")){
                PreparedStatement pstt=con.prepareStatement("update teacher_regd set age=? where phonenumber=?");
                pstt.setString(1, nage);
                pstt.setString(2, ophone);
                pstt.executeUpdate();%>
                  <script>
                    alert("Updated SuccessFully");
                </script>
        <% }
      else if(ch1.equals("uname")){
                PreparedStatement pstt=con.prepareStatement("update teacher_regd set username=? where phonenumber=?");
                pstt.setString(1, nuname);
                pstt.setString(2, ophone);
                pstt.executeUpdate();%>
                  <script>
                    alert("Updated SuccessFully");
                </script>
        <% } 
 else if(ch1.equals("ex")){
                PreparedStatement pstt=con.prepareStatement("update teacher_regd set EXPERIENCE=? where phonenumber=?");
                pstt.setString(1, nex);
                pstt.setString(2, ophone);
                pstt.executeUpdate();%>
                  <script>
                    alert("Updated SuccessFully");
                </script>
                
<%}
 else if(ch1.equals("gender")){
                PreparedStatement pstt=con.prepareStatement("update teacher_regd set gender=? where phonenumber=?");
                pstt.setString(1, ngender);
                pstt.setString(2, ophone);
                pstt.executeUpdate();%>
                  <script>
                    alert("Updated SuccessFully");
                </script>
<%}
 else if(ch1.equals("place")){
                PreparedStatement pstt=con.prepareStatement("update teacher_regd set place=? where phonenumber=?");
                pstt.setString(1, nplace);
                pstt.setString(2, ophone);
                pstt.executeUpdate();%>
                  <script>
                    alert("Updated SuccessFully");
                </script>
<%}
 else if(ch1.equals("course")){
                PreparedStatement pstt=con.prepareStatement("update teacher_regd set SPECIALIZATION=? where phonenumber=?");
                pstt.setString(1, ncourse);
                pstt.setString(2, ophone);
                pstt.executeUpdate();%>
                  <script>
                    alert("Updated SuccessFully");
                </script>
<%}

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
