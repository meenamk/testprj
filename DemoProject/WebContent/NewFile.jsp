<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@ page import="java.io.*" %>
     <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Current Status</title>
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
String Name=(String)session.getAttribute("username");
 	out.println("Welcome"+" "+session.getAttribute("username"));
session.setAttribute("username",session.getAttribute("username"));
// 	@SuppressWarnings("unchecked");

 %>
 </div></div>
 <img src="/DemoProject/images/energy.png" width=50% height=100></img>&nbsp;&nbsp;&nbsp;&nbsp;	
<br><br>

<%
try{
Class.forName("com.mysql.jdbc.Driver");
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthome", "root","root");
		    String sql = "select list_appliances.ImageName from list_appliances inner join appliances on list_appliances.ImageName=appliances.ImageName where UserName='"+Name+"'";
		    PreparedStatement stmt = conn.prepareStatement(sql);
		    ResultSet resultSet = stmt.executeQuery();
		   		     while(resultSet.next()){
		    String name=resultSet.getString(1);
		    %>
	 		     <% switch(name){
		    case "AirConditioner":%><img src="/DemoProject/images/air conditioner.jfif">
		  <%   break;
		   case "AirCooler":%><img src="/DemoProject/images/aircooler.jfif" style="margin-left:40px;"class="image">
		   <% break;
		    case "Computer":%><img src="/DemoProject/images/computer.jpg" style="margin-left:40px;"class="image">
		   <% break;
		    case "Dishwasher":%><img src="/DemoProject/images/dishwasher.jfif" style="margin-left:40px;" class="image">
		   <% break;
		    case "ElectricWaterKettle":%><img src="/DemoProject/images/electric_water_heater.jfif" style="margin-left:40px;" class="image">
		    <% break;
		    case "ExhaustFan":%><img src="/DemoProject/images/exhaust fan.jfif" style="margin-left:40px;" class="image">
		  <%  break;
		    case "FanHeater":%><img src="/DemoProject/images/fan heater.jfif" style="margin-left:40px;" class="image">
		  <%  break;
		    case "CeilingFan":%><img src="/DemoProject/images/fan1.jfif" style="margin-left:40px;" class="image">
		   <%  break;
		    case "Griller":%><img src="/DemoProject/images/griller.jfif" style="margin-left:40px;" class="image">
		    <% break;
		    case "HairDryer":%><img src="/DemoProject/images/hair dryer.jfif" style="margin-left:40px;" class="image">
		   <%  break;
		    case "Humidifier":%><img src="/DemoProject/images/humidifier.jfif" style="margin-left:40px;" class="image">
		    <% break;
		    case "InductionStove":%><img src="/DemoProject/images/induction stove.jfif" style="margin-left:40px;" class="image">
		    <% break;
		    case "IronBox":%><img src="/DemoProject/images/iron box.jfif" style="margin-left:40px;" class="image">
		     <% break;
		    case "LED Lamps":%><img src="/DemoProject/images/LED Lamps.jpg" style="margin-left:40px;" class="image">
		     <% break;
		    case "LED Tubes":%><img src="/DemoProject/images/LED tubes.jfif" style="margin-left:40px;" class="image">
		     <% break;
		    case "Pedestal Fan":%><img src="/DemoProject/images/pedestal fan.jfif" style="margin-left:40px;" class="image">
		     <% break;
		    case "Refrigerator":%><img src="/DemoProject/images/refrigerator.jfif" style="margin-left:40px;" class="image">
		     <% break;
		    case "Rice Cooker":%><img src="/DemoProject/images/rice cooker.jpeg" style="margin-left:40px;" class="image">
		     <% break;
		    case "Sewing Machine":%><img src="/DemoProject/images/sewingmachine.jpg" style="margin-left:40px;" class="image">
		     <% break;
		    case "T.V":%><img src="/DemoProject/images/television.jfif" style="margin-left:40px;" class="image">
		     <% break;
		    case "Vaccum Cleaner":%><img src="/DemoProject/images/vacuum cleaner.jfif" style="margin-left:40px;" class="image">
		     <% break;
		    case "Washing Machine":%><img src="/DemoProject/images/washing machine.jfif" style="margin-left:40px;" class="image">
		     <% break;
		    case "Water Heater":%><img src="/DemoProject/images/water heater.JPG" style="margin-left:40px;" class="image">
		     <% break;
		    case "Water Purifier":%><img src="/DemoProject/images/water_purifier.jpg" style="margin-left:40px;" class="image">
		     <% break;
		    case "Mixer":%><img src="/DemoProject/images/mixer.jpg" style="margin-left:40px;" class="image">
		     <% break;
		    case "Grinder":%><img src="/DemoProject/images/Grinder.jpg" style="margin-left:40px;" class="image">
		     <% break;
		    case "Microwave Ovan":%><img src="/DemoProject/images/microwave.jpg" style="margin-left:40px;" class="image">
		     <% break;
		    case "Motor":%><img src="/DemoProject/images/motor.jpg" style="margin-left:40px;" class="image">
		     <% break;
		    }%>
		    <%}%><br>
		   <% 
		    }catch(Exception e)
		    {
		  	System.out.println(e.getMessage());}%>

</body>
</html>