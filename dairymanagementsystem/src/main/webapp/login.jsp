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
String l="admin";
String o="admin@123";
String p,q;
p=request.getParameter("t1");
q=request.getParameter("t2");


if((l.equals(p))&& (o.equals(q)))
{
	HttpSession s1=request.getSession();
	s1.setAttribute("feb",p);
	out.println("<script>");
	 out.println("alert('Login Sucessfully')");
	out.println("window.location.href='dash.jsp'");
	out.println("</script>");
}
else
{
	out.println("<script>");
	   out.println("alert('Invalid username and Password')");
	   out.println("window.location.href='admin.html'");
	   out.println("</script>");
}




%>
</body>
</html>