

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
            .us{
      width: 400px;
      height: 100px;
      margin: 70px auto;
      background-color: powderblue;
      padding: 20px;
      
      border-radius: 30px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            }
            table{
                background-color:#ccccff;
            }
        </style>
    </head>
    <body style="background-color:#ffccff">
             <marquee behavior="alternate" style="color:#3333ff;font-size: 35px;">Wellcome to Online Teacher Searching System </marquee>

        <div class="us">

        
      
            <% try{
                String phone=request.getParameter("phoneee");
               String password=request.getParameter("pw");

                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tapas123");
                String sql="select phonenumber,place,Email_id from teacher_regd where phonenumber='"+phone+"' and password='"+password+"'";
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(sql);
                if(rs.next()){%>
                  <table border="1">
            <tr bgcolor="grey">
                <td>Phone Number</td>
                <td>Email_ID</td>
                <td>Place</td>



            </tr>
                <tr>
                    <td><%=rs.getString("phonenumber")%></td>
                    <td><%=rs.getString("Email_id")%></td>
                    <td><%=rs.getString("place")%></td>


                </tr>
                  </table><br>
                    <button style="background-color: yellow"> <a href="update_teacher1.html" style="text-decoration: none;">UPDATE</a></button>
          
                <%}else {%>
                <script>
                    alert("Wrong Number or Password");
                                    window.location.href='update_teacher.html';

                </script>
<%}
                con.close();
}
                catch(Exception e){
                e.printStackTrace();
                     }%>
        </table>
        
       
        </div>
            
            
        
    </body>
</html>
