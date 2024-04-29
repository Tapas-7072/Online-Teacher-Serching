<%-- 
    Document   : preadmin_regd
    Created on : 22 Jul, 2023, 1:44:23 PM
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
         <%
            String hrpassword=request.getParameter("hrp");
            %>
            <% if(hrpassword.equals("Boss@123")){%>
              <%response.sendRedirect("admin_regd.html");%>

            <%} else{%>
                    <%out.print(" Wrong HR-Password "+"<br>"+"Please Try Again....");%>
                   <%}%>
    </body>
</html>
