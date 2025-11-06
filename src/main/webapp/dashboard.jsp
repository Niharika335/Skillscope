<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<html>
<head><title>dashboard</title></head>
<body>
    <%
        String user = (String) session.getAttribute("user");
        if (user == null) {
            response.sendRedirect("login.jsp");
        }
    %>
    <h2>Welcome, <%= user %>!</h2>
    <a href="events">View Events</a>
</body>
</html>
