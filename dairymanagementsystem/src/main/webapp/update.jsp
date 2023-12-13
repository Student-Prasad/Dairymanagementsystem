<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Update record</h1>
<%
int l=Integer.parseInt(request.getParameter("t1"));
String fid=request.getParameter("t2");
String fname=request.getParameter("t3");
String add=request.getParameter("t4");
String cont=request.getParameter("t5");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy","root","");
PreparedStatement ps=con.prepareStatement("update farmer set farmercode='"+fid+"',fname='"+fname+"',addd='"+add+"',contact='"+cont+"' where id='"+l+"'");

ps.executeUpdate();
response.sendRedirect("farmerlist.jsp");





%>
</center>
</body>
</html>