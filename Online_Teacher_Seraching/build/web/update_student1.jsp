<%-- 
    Document   : update_student1
    Created on : 24 Jul, 2023, 8:27:58 PM
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

                String ch1=request.getParameter("c1");
                String nphone=request.getParameter("nphone");
                String nemail=request.getParameter("nemail");
                String nplace=request.getParameter("nplace");



                   Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
                 Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select phonenumber from student_regd where phonenumber = '" +ophone + "'");
            if (rs.next()){
             

               
            if(ch1==null){%>
            <script>alert("Please select a Option");</script>
           <% }
            else{
            if(ch1.equals("phone")){
                PreparedStatement ps=con.prepareStatement("update student_regd set phonenumber=? where phonenumber=?");
                ps.setString(1, nphone);
                ps.setString(2, ophone);
                ps.executeUpdate();%>
                
                 <script>
                    alert("Updated SuccessFully");
                </script>
           <% }
            
           else if(ch1.equals("place")){
                PreparedStatement pst=con.prepareStatement("update student_regd set place=? where phonenumber=?");
                pst.setString(1, nplace);
                pst.setString(2, ophone);
                pst.executeUpdate();%>
                
                <script>
                    alert("Updated SuccessFully");
                </script>
            <%}
           else if(ch1.equals("email")){
                PreparedStatement pstt=con.prepareStatement("update student_regd set Email_id=? where phonenumber=?");
                pstt.setString(1, nemail);
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
