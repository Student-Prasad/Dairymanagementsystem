<%
HttpSession s1=request.getSession(false);
String t=(String)s1.getAttribute("feb");
if(t==null)
{
	response.sendRedirect("admin.html");
}
else
{
	response.sendRedirect("navbar.html");	
}




%>