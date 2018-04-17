<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*, javax.servlet.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report</title>
 <script src="https://cdn.anychart.com/js/8.0.1/anychart-core.min.js"></script>
      <script src="https://cdn.anychart.com/js/8.0.1/anychart-pie.min.js"></script>
      <link rel="stylesheet" type="text/css" href="design2.css">
<link rel="stylesheet" type="text/css" href="design.css">

</head>
<body>
<div id="top-links">
<a href="welcome2.jsp">Home</a>
<a href="appliances.jsp">Customize Home</a>
<a href="NewFile.jsp">Current Status</a>
<a href="EnergyDamand.jsp">Energy Demand</a>
<a href="DecentralizedEnergy.jsp">Decentralized Energy</a>
<a href="Report.jsp">Report</a>
<a href="index.html">Logout</a><br><br>
<div class="getname">
	<%
	out.println("Welcome"+" "+session.getAttribute("username"));
 	session.setAttribute("username",session.getAttribute("username"));
 	%></div></div>
<img src="/DemoProject/images/energy.png" width=50% height=100 ></img>
<div class="getname">
<% long millis=System.currentTimeMillis();  
        java.sql.Date date=new java.sql.Date(millis);  
out.print(date);%></div>
<br><br>
<%String username=(String)session.getAttribute("username");
try{
String ac=String.valueOf(request.getAttribute("Ac"));
int ac1=Integer.parseInt(ac);
out.println(ac1);
			Class.forName("com.mysql.jdbc.Driver");
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthome", "root","root");
		    
		    }catch(Exception e){
		    out.println(e);} %>
</body>
</html>