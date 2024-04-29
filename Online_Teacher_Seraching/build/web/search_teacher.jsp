<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 0;
            background-image: url('sregd.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>
</head>
<body>
    <h1 align="center">Here Some Results.........</h1>

    <% 
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    %>

    <%
    try {
        String sp = request.getParameter("course");
        String place = request.getParameter("place");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tapas123");
        String sql = "select * from teacher_regd where SPECIALIZATION='" + sp + "' and place='" + place + "'";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        if (rs.next()) {
    %>
    <table border="1" align="center" bgcolor="yellow">
        <tr bgcolor="grey">
            <td>Name</td>
            <td>Phone Number</td>
            <td>Email_Id</td>
            <td>Place</td>
            <td>Experience(Years)</td>
        </tr>
        <%
            do {
        %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("phonenumber") %></td>
            <td><%= rs.getString("email_id") %></td>
            <td><%= rs.getString("place") %></td>
            <td><%= rs.getString("EXPERIENCE") %></td>
        </tr>
        <%
            } while (rs.next());
        %>
    </table>
    <%
        } else {%>
        <h1 align="center">No result Found</h1>
       <% }

        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>

    <button><a href="search_teacher.html" style="text-decoration: none;"><b><-BACK</b></a></button>
</body>
</html>
