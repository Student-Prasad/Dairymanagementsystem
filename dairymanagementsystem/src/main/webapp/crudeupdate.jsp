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
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy","root","");
Statement st=con.createStatement();
int i=Integer.parseInt(request.getParameter("id"));
ResultSet rs=st.executeQuery("select * from farmer where id='"+i+"'");
while(rs.next())
{

%>
<form action="update.jsp" method="post">
	
	<input type="hidden" name="t1" value="<%=rs.getInt(1)%>"><br>
	<input type="text" name="t2" value="<%=rs.getString(2)%>"><br>
	<input type="text" name="t3" value="<%=rs.getString(4)%>"><br>
	<input type="text" name="t4" value="<%=rs.getString(5)%>"><br>
	<input type="text" name="t5" value="<%=rs.getString(6)%>"><br>
	<input type="submit" value="update">
	</form>
	<%
}

%>

</center>
</body>
</html>