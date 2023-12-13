<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
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
int a;
String b,c,d,e	;
int t;
b=request.getParameter("p1");
c=request.getParameter("p2");
d=request.getParameter("p3");
e=request.getParameter("p4");
a=Integer.parseInt(request.getParameter("p5"));


float rate,total;
if(e.equals("Cow"))
{
	 rate=28.50f;
}
else
{
	 rate=38.11f;
}
String code=null;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy","root","");
/*
     PreparedStatement p=con.prepareStatement("select * from collection");
                           Set<String> s=new HashSet<>();
                           ResultSet rs=p.executeQuery();
                             while(rs.next()){
                            	code=rs.getString(4);
                                 s.add(code);
                             }
                             int quantity=0;
                             int flag=1;
                             for(String l:s){
                            	 if(l.equals(d)){
                            		 PreparedStatement pc=con.prepareStatement("select * from collection where farmercode=?");
                            		 pc.setString(1, d);
                            		 ResultSet r=pc.executeQuery();
                            		 while(r.next()){
                            			 quantity=r.getInt(6);
                            		 }
                            		
                            		 int updatequantity=quantity+a;
                            		 total=0;
                            		 total=rate*updatequantity;
                             PreparedStatement pu=con.prepareStatement("update collection set total='"+total+"',quantity='"+updatequantity+"' where farmercode='"+d+"'");
                    	   
                    	     int i= pu.executeUpdate();
                    	     flag=0;
                    	      if(i>0){
                    	           out.println("<script>");
                            	   out.println("alert('Record Saved')");
                            	   out.println("window.location.href='collection.jsp'");
                            	   out.println("</script>");
                    	            	
                    	            }
                            		 
                            	 }
                            	 
                             }if(flag==1){*/
              	            	total=0;
              	            	total=a*rate;
              	            	PreparedStatement ps=con.prepareStatement("insert into collection(date,time,farmercode,milktype,quantity,price,total) values('"+b+"','"+c+"','"+d+"','"+e+"','"+a+"','"+rate+"','"+total+"')");
                          		int x=ps.executeUpdate();
                          		if(x>0)
                          		{
                          			out.println("<script>");
                          			out.println("alert('Record Saved')");
                          			out.println("window.location.href='collection.jsp'");
                          			out.println("</script>");
                          		}
                          	  
              	            	
              	            
                           
                            	 
                            
              





	



%>
</body>
</html>