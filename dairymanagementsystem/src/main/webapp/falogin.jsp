<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="entry.css" type="text/css">

</head>

<body>

<%
String a,b;
a=request.getParameter("t1");
b=request.getParameter("t2");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from farmer ");
int flag=1;
while(rs.next())	
{
   String p=rs.getString(2);
   String q=rs.getString(3);

   if((p.equals(a)) && (q.equals(b)))
{
	   flag=0;
	out.println("<script>");
	 out.println("alert('Login Sucessfully')");
	 out.println("window.location.href='farmernav.html'");
	 out.println("</script>");
}}


if(flag==1)
{
	out.println("<script>");
	 out.println("alert('Login fail')");
	 out.println("window.location.href='farmerlogin.html'");
	 out.println("</script>");
}

   /*
   else
   {
	   out.println("<script>");
		 out.println("alert('Login fail')");
		 out.println("window.location.href='farmerlogin.html'");
		 out.println("</script>");
   }*/


%>
</form>
</body>
</html>