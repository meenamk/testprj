<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*"%>
    <%@ page trimDirectiveWhitespaces="true" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="design2.css">
<link rel="stylesheet" type="text/css" href="design.css">

<title>Customizing home</title>
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
<img src="/DemoProject/images/energy.png" width=50% height=100></img>&nbsp;&nbsp;&nbsp;&nbsp;	
<br><br>

<form action="SelectedAppliances">
<div>
<table width=500 cellpadding="25"><tr>
<td><img src="/DemoProject/images/air conditioner.jfif"></img></td>
<td><img src="/DemoProject/images/aircooler.jfif"></img></td>
<td><img src="/DemoProject/images/computer.jpg"></img></td>
<td><img src="/DemoProject/images/dishwasher.jfif"></img></td>
</tr>
<tr>
<td><input type="checkbox" name="appliance" value="AirConditioner">Air Conditioner</td>
<td><input type="checkbox" name="appliance" value="AirCooler">Air Cooler</td>
<td><input type="checkbox" name="appliance" value="Computer">Computer</td>
<td><input type="checkbox" name="appliance" value="Dishwasher">Dishwasher</td></tr>
<tr><td><img src="/DemoProject/images/electric_water_heater.jfif"></img></td>
<td><img src="/DemoProject/images/exhaust fan.jfif"></img></td>
<td><img src="/DemoProject/images/fan heater.jfif"></img></td>
<td><img src="/DemoProject/images/fan2.jfif"></img></td>
</tr>
<tr>
<td><input type="checkbox" name="appliance" value="ElectricWaterKettle">Electric Water Jug</td>
<td><input type="checkbox" name="appliance" value="ExhaustFan">Exhaust Fan</td>
<td><input type="checkbox" name="appliance" value="FanHeater">Fan Heater</td>
<td><input type="checkbox"  name="appliance" value="CeilingFan">Ceiling Fan</td></tr>
<tr><td><img src="/DemoProject/images/griller.jfif"></img></td>
<td><img src="/DemoProject/images/hair dryer.jfif"></img></td>
<td><img src="/DemoProject/images/humidifier.jfif"></img></td>
<td><img src="/DemoProject/images/induction stove.jfif"></img></td>
</tr>
<tr>
<td><input type="checkbox" name="appliance" value="Griller">Griller</td>
<td><input type="checkbox" name="appliance" value="HairDryer">Hair Dryer</td>
<td><input type="checkbox" name="appliance" value="Humidifier">Humidifier</td>
<td><input type="checkbox" name="appliance" value="InductionStove">Induction Stove</td></tr>
<tr><td><img src="/DemoProject/images/iron box.jfif"></img></td>
<td><img src="/DemoProject/images/LED Lamps.jpg"></img></td>
<td><img src="/DemoProject/images/LED tubes.jfif"></img></td>
<td><img src="/DemoProject/images/microwave.jpg"></img></td>
</tr>
<tr>
<td><input type="checkbox" name="appliance" value="IronBox">Iron Box</td>
<td><input type="checkbox" name="appliance" value="LED Lamps">LED Lamps</td>
<td><input type="checkbox" name="appliance" value="LED Tubes">LED Tubes</td>
<td><input type="checkbox" name="appliance" value="Microwave Ovan">Microwave Ovan</td></tr>

<tr><td><img src="/DemoProject/images/pedestal fan.jfif"></img></td>
<td><img src="/DemoProject/images/refrigerator.jfif"></img></td>
<td><img src="/DemoProject/images/rice cooker.jpeg"></img></td>
<td><img src="/DemoProject/images/sewingmachine.jpg"></img></td>
</tr>
<tr>
<td><input type="checkbox" name="appliance" value="Pedestal Fan">Pedestal Fan</td>
<td><input type="checkbox" name="appliance" value="Refrigerator">Refrigerator</td>
<td><input type="checkbox" name="appliance" value="Rice Cooker">Rice Cooker</td>
<td><input type="checkbox" name="appliance" value="Sewing Machine">Sewing Machine</td></tr>
<tr>
<td><img src="/DemoProject/images/television.jfif"></img></td>
<td><img src="/DemoProject/images/vacuum cleaner.jfif"></img></td>
<td><img src="/DemoProject/images/washing machine.jfif"></img></td>
<td><img src="/DemoProject/images/water_purifier.jpg"></img></td>
</tr>
<tr>
<td><input type="checkbox" name="appliance" value="T.V">Television</td>
<td><input type="checkbox" name="appliance" value="Vaccum Cleaner">Vaccum Cleaner</td>
<td><input type="checkbox" name="appliance" value="Washing Machine" >Washing Machine</td>
<td><input type="checkbox" name="appliance" value="Water Purifier">Water Purifier</td></tr>
<tr>
<td><img src="/DemoProject/images/Grinder.jpg"></img></td>
<td><img src="/DemoProject/images/mixer.jpg"></img></td>
<td><img src="/DemoProject/images/water heater.JPG"></img></td>
<td><img src="/DemoProject/images/motor.jpg"></img></td>
</tr>
<tr>
<td><input type="checkbox" name="appliance" value="Grinder">Grinder</td>
<td><input type="checkbox" name="appliance" value="Mixer">Mixer</td>
<td><input type="checkbox" name="appliance" value="Water Heater">Water Heater</td>
<td><input type="checkbox" name="appliance" value="Motor">Motor</td>
</tr>
</table>
<div class="Customize">
<button>
<img src="/DemoProject/images/submit2.png">
</button></div>
</div>
</form>
</body>
</html>	