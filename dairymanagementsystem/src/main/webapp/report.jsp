<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="entry.css" type="text/css">
</head>
<body>
<form action="reportdisplay.jsp" method="post">
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
   
    <a class="navbar-brand" href="#"><img src="data:image/jpeg;base64,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" height="50" width="100"></a>
    <button type="button" data-toggle="collapse" class="navbar-toggle" data-target="#mydiv">
      <span class="icon-bar" ></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  
  <div class="collapse navbar-collapse" id="mydiv">
   
      <p class="navbar-text">Gokul Dairy Farm</p>
    
    <ul class="nav navbar-nav ">
      <li><a href="#home"><b>Home</b></a></li>
      <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="farmerlist.jsp" href="entry.html" ><b>Farmer</b>
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <li style="font-family:georgia;"><a href="entry.html"><b>Farmers Entry</b></a></li>
          <li style="font-family:georgia;"><a href="farmerlist.jsp"><b>Farmers List</b></a></li>
           </ul>
      
      <li><a href="collection.jsp"><b>Collection</b></a></li>
      <li><a href="collectionlist.jsp"><b>Collection List</b></a></li>
      <li><a href="report.jsp"><b>Reports</b></a></li>
      <li><a href="#contact"><b>Contact</b></a></li>
    </ul>
     <ul class="nav navbar-nav navbar-right">
      
      
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Log-Out</a></li>
    </ul>
  </div>
</nav>
<center><h2 style="font-family:elephant;background-color:lightseagreen;color:lightblue; padding:2px;margin-right: 370px;margin-left: 400px;">Report </h2></center>
<div class="container"  >
  <br><br>
  <div class="row">
    <div class="col-sm-4" id="op">
     
    </div>
     <div class="col-sm-4" style="padding:30px;
	border:2px solid red;background-color:lightsalmon">
	
     <div class="form-group">
    
          <label for="n"><center>Select Farmer code</center></label>
          <select class=form-control name="p1" required>
          <option >select</option>
       <%
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy","root","");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from farmer");
       while(rs.next())
       {
       %>
       <option><%=rs.getString(2)%></option>
       <%
       }
       
       %>
       
       
       
       
       </select>
        </div>
        <div class="form-group">
    
    
          <label for="n"><center>Milk Type</center></label>
          <select  class=form-control name="p2" required>
          <option>Select</option>
          <option>Cow</option>
          <option>Buffalow</option>
          </select>
        </div>
         <center><button class="btn btn-primary" id="bt" >Submit</button></center>
        </div>
    </form>    
         
    
</body>
</html>