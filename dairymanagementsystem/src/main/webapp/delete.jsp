<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*" %>  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
int a=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy","root","");
PreparedStatement ps=con.prepareStatement("delete from farmer where id='"+a+"'");
ps.executeUpdate();
response.sendRedirect("farmerlist.jsp");
%>
</body>
</html>