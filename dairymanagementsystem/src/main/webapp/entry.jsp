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
<%

String b,c,d,e;
b=request.getParameter("p1");
c=request.getParameter("p2");
d=request.getParameter("p3");
e=request.getParameter("p4");
String a=request.getParameter("p5");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy","root","");
PreparedStatement ps=con.prepareStatement("insert into farmer (farmercode,pass,fname,addd,contact)values('"+b+"','"+c+"','"+d+"','"+e+"','"+a+"')");
int i=ps.executeUpdate();
if(i>0)
{
	out.println("<script>");
	out.println("alert('Added sucessfully')");
	out.println("window.location.href='entry.html'");
	
	out.println("</script>");
}
	



%>
</body>
</html>