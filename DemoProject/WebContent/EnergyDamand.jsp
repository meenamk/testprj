<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@ page import="java.io.*" %>
     <%@ page import="java.util.ArrayList" %>
     <%@page import="java.io.OutputStream" %>
     <%@ page trimDirectiveWhitespaces="true" %>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Energy Demand</title>
<link rel="stylesheet" type="text/css" href="design2.css">
<link rel="stylesheet" type="text/css" href="design.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script language=javascript>
var AirConditioner=0;
var AirCooler=0;
var Computer=0;
var Dishwasher=0;
var ElectricWaterKettle=0;
var ExhaustFan=0;
var FanHeater=0;
var Griller=0;
var HairDryer=0;
var Humidifier=0;
var CeilingFan=0;
var InductionStove=0;
var IronBox=0;
var LEDLamps=0;
var LEDTubes=0;
var PedestalFan=0;
var Refrigerator=0;
var RiceCooker=0;
var SewingMachine=0;
var T_V=0;
var VacuumCleaner=0;
var WashingMachine=0;
var WaterHeater=0;
var WaterPurifier=0;
var Mixer=0;
var Grinder=0;
var Motor=0;
var MicrowaveOvan=0;

function airconditioner()
{
AirConditioner=220;
alert("you have turned Ac on");
}

function aircooler()
{
AirCooler=120;
alert("you have turned Aircooler on");
}

function computer()
{
Computer=60;
alert("you have turned computer on");
}

function dishwasher()
{
Dishwasher=220;
alert("you have turned Dishwasher on");
}

function waterkettle()
{
ElectricWaterKettle=220;
alert("you have turned WaterKettle on");
}

function exhaustfan()
{
ExhaustFan=120;
alert("you have turned ExhaustFan on");
}
function fanheater()
{
FanHeater=120;
alert("you have turned FanHeater on");
}
function griller()
{
Griller=220;
alert("you have turned Griller on");
}
function hairdryer()
{
HairDryer=120;
alert("you have turned Griller on");
}
function humidifier()
{
Humidifier=120;
alert("you have turned Humidifier on");
}
function ceilingfan()
{
CeilingFan=120;
alert("you have turned fan on");
}
function inductionstove()
{
InductionStove=220;
alert("you have turned InductionStove on");
}

function ironbox()
{
IronBox=120;
alert("you have turned ironbox on");
}
function ledlamps()
{
LEDLamps=40;
alert("you have turned lamps on");
}
function ledtubes()
{
LEDTubes=40;
alert("you have turned LED tubes  on");
}
function pedestalfan()
{
PedestalFan=120;
alert("you have turned Pedestal fan on");
}
function fridge()
{
Refrigerator=220;
alert("you have turned Fridge on");
}

function ricecooker()
{
RiceCooker=220;
alert("you have turned rice cooker on");
}

function sewingmachine()
{
SewingMachine=120;
alert("you have turned sewing machine on");
}
function television()
{
T_V=120;
alert("you have turned television on");
}

function vacuumcleaner()
{
VacuumCleaner=220;
alert("you have turned vacuum cleaner on");
}
function washingmachine()
{
WashingMachine=220;
alert("you have turned washing machine on");
}

function waterheater()
{
WaterHeater=220;
alert("you have turned water heater on")
}
function waterpurifier()
{
WaterPurifier=220;
alert("you have turned water purifier on")
}

function mixer()
{
Mixer=120;
alert("you have turned mixer on")
}

function grinder()
{
Grinder=220;
alert("you have turned grinder on")
}

function motor()
{
Motor=220;
alert("you have turned motor on")
}

function microwave()
{
MicrowaveOvan=220;
alert("you have turned microwave ovan on")
}

function myalert(){

var total = AirConditioner + AirCooler + Computer + CeilingFan + InductionStove+ IronBox + LEDLamps + Dishwasher + ElectricWaterKettle
+ ExhaustFan + FanHeater + Griller + HairDryer + Humidifier + LEDTubes + PedestalFan + Refrigerator + RiceCooker +
SewingMachine + T_V + VacuumCleaner + WashingMachine + WaterHeater + WaterPurifier + Mixer + Grinder + Motor + MicrowaveOvan;
if(total>720){
alert("You power consumption has exceeded");}
alert(total);
}
</script>
<style>
#image1,#image2,#image3,#image4,#image5,#image6,#image7{
width:400px;
height:300px;
float:left;
margin-left:30px;
margin-top:20px;}
#tab{
margin-top:400px;
text-align:center;}
</style>
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
<img src="/DemoProject/images/energy.png" width=50% height=100 ></img>&nbsp;&nbsp;&nbsp;&nbsp;	
<br><br>

<%

String username=(String)session.getAttribute("username");
try{
			Class.forName("com.mysql.jdbc.Driver");
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthome", "root","root");
		    String sql = "select list_appliances.ImageName , appliances.Image from list_appliances inner join appliances on list_appliances.ImageName=appliances.ImageName where username='"+username+"' ";
		    PreparedStatement stmt = conn.prepareStatement(sql);
		    ResultSet resultSet = stmt.executeQuery();
		   %>
		 	<div>
		    <%  while(resultSet.next()){
		    String name=resultSet.getString(1);	%>	
		    <div>
		    <%switch(name){
		    case "AirConditioner":%><div id=image1><table><tr><td><img src="/DemoProject/images/air conditioner.jfif"></td></tr>
		    <tr><td><input type="button" id="AirConditioner" value="AirConditioner" name="appliance" onclick="airconditioner()" ></td></tr></table></div>
		  <%   break;
		    case "AirCooler":%><div id=image2><table><tr><td><img src="/DemoProject/images/aircooler.jfif"></td></tr>
		    <tr><td><input type="button" id="AirCooler" value="AirCooler" name="appliance" onclick="aircooler()"></td></tr></table></div>
		   <% break;
		    case "Computer":%><div id=image3><table><tr><td><img src="/DemoProject/images/computer.jpg"></td></tr>
		    <tr><td><input type="button" id="Computer" name="appliance" value="Computer on" onclick="computer()"></td></tr></table></div>
		   <% break;
		    case "Dishwasher":%><div id=image4><table><tr><td><img src="/DemoProject/images/dishwasher.jfif"></td></tr>
		    <tr><td><input type="button" id="Dishwasher" name="appliance" value="Dishwasher on" onclick="dishwasher()"></td></tr></table></div>
		   <% break;
		    case "ElectricWaterKettle":%><div id=image5><table><tr><td><img src="/DemoProject/images/electric_water_heater.jfif"></td></tr>
		    <tr><td><input type="button" id="ElectricWaterKettle" name="appliance" value="ElectricWaterKettle on" onclick="waterkettle()"></td></tr></table></div>
			    <% break;
		    case "ExhaustFan":%><div id=image6><table><tr><td><img src="/DemoProject/images/exhaust fan.jfif"></td></tr>
		    <tr><td><input type="button" id="ExhaustFan"name="appliance" value="ExhaustFan on" onclick="exhaustfan()"></td></tr></table></div>
		      <%  break;
		    case "FanHeater":%><div id=image6><table><tr><td><img src="/DemoProject/images/fan heater.jfif"></td></tr>
		    <tr><td><input type="button"  id="FanHeater" name="appliance" value="FanHeater on" onclick="fanheater()"></td></tr></table></div>
		  <%  break;
		    case "CeilingFan":%><div id=image6><table><tr><td><img src="/DemoProject/images/fan2.jfif"></td></tr>
		    <tr><td><input type="button" id="CeilingFan" name="appliance" value="CeilingFan on" onclick="ceilingfan()"></td></tr></table></div>
		   <%  break;
		    case "Griller":%><div id=image6><table><tr><td><img src="/DemoProject/images/griller.jfif"></td></tr>
		    <tr><td><input type="button" id="Griller" name="appliance" value="Griller on" onclick="griller()"></td></tr></table></div>
		    <% break;
		    case "HairDryer":%><div id=image6><table><tr><td><img src="/DemoProject/images/hair dryer.jfif"></td></tr>
		    <tr><td><input type="button" id="HairDryer" name="appliance" value="HairDryer on" onclick="hairdryer()"></td></tr></table></div>
		   <%  break;
		    case "Humidifier":%><div id=image6><table><tr><td><img src="/DemoProject/images/humidifier.jfif"></td></tr>
		    <tr><td><input type="button"  id="Humidifier"name="appliance" value="Humidifier on" onclick="humidifier();"></td></tr></table></div>
		    <% break;
		    case "InductionStove":%><div id=image6><table><tr><td><img src="/DemoProject/images/induction stove.jfif"></td></tr>
		    <tr><td><input type="button" id="InductionStove" name="appliance" value="InductionStove on" onclick="inductionstove()"></td></tr></table></div>
		    <% break;
		    case "IronBox":%><div id=image6><table><tr><td><img src="/DemoProject/images/iron box.jfif"></td></tr>
		    <tr><td><input type="button" id="IronBox" name="appliance" value="IronBox on" onclick="ironbox()"></td></tr></table></div>
		     <% break;
		    case "LED Lamps":%><div id=image6><table><tr><td><img src="/DemoProject/images/LED Lamps.jpg"></td></tr>
		    <tr><td><input type="button" id="LEDLamps" name="appliance" value="LED Lamps on" onclick="ledlamps()"></td></tr></table></div>
		     <% break;
		    case "LED Tubes":%><div id=image6><table><tr><td><img src="/DemoProject/images/LED tubes.jfif"></td></tr>
		    <tr><td><input type="button"  id="LEDtubes"name="appliance" value="LED Tubes on" onclick="ledtubes()"></td></tr></table></div>
		     <% break;
		    case "Pedestal Fan":%><div id=image6><table><tr><td><img src="/DemoProject/images/pedestal fan.jfif"></td></tr>
		    <tr><td><input type="button"  id="PedestalFan" name="appliance" value="Pedestal Fan on" onclick="pedestalfan"></td></tr></table></div>
		     <% break;
		    case "Refrigerator":%><div id=image6><table><tr><td><img src="/DemoProject/images/refrigerator.jfif"></td></tr>
		    <tr><td><input type="button" id="Refrigerator" name="appliance" value="Refrigerator on" onclick="fridge()"></td></tr></table></div>
		     <% break;
		    case "Rice Cooker":%><div id=image6><table><tr><td><img src="/DemoProject/images/rice cooker.jpeg"></td></tr>
		    <tr><td><input type="button"  id="RiceCooker" name="appliance" value="Rice Cooker on" onclick="ricecooker()"></td></tr></table></div>
		     <% break;
		    case "Sewing Machine":%><div id=image6><table><tr><td><img src="/DemoProject/images/sewingmachine.jpg"></td></tr>
		    <tr><td><input type="button"  id="SewingMachine"name="appliance" value="Sewing Machine on" onclick="sewingmachine()"></td></tr></table></div>
		     <% break;
		    case "T.V":%><div id=image6><table><tr><td><img src="/DemoProject/images/television.jfif"></td></tr>
		    <tr><td><input type="button"  id="T.V" name="appliance" value="T.V on" onclick="television()"></td></tr></table></div>
		     <% break;
		    case "Vacuum Cleaner":%><div id=image6><table><tr><td><img src="/DemoProject/images/vacuum cleaner.jfif"></td></tr>
		    <tr><td><input type="button"  id="VacuumCleaner" name="appliance" value="Vaccum Cleaner on" onclick="vacuumcleaner()"></td></tr></table></div>
		     <% break;
		    case "Washing Machine":%><div id=image6><table><tr><td><img src="/DemoProject/images/washing machine.jfif"></td></tr>
		    <tr><td><input type="button" id="WashingMachine" name="appliance" value="Washing Machine on" onclick="washingmachine()"></td></tr></table></div>
		     <% break;
		    case "Water Heater":%><div id=image6><table><tr><td><img src="/DemoProject/images/water heater.JPG"></td></tr>
		    <tr><td><input type="button" id="WaterHeater" name="appliance" value="Water Heater on" onclick="waterheater()"></td></tr></table></div>
		     <% break;
		    case "Water Purifier":%><div id=image6><table><tr><td><img src="/DemoProject/images/water_purifier.jpg"></td></tr>
		    <tr><td><input type="button" id="WaterPurifier" name="appliance" value="Water Purifier on" onclick="waterpurifier()"></td></tr></table></div>
		     <% break;
		    case "Mixer":%><div id=image6><table><tr><td><img src="/DemoProject/images/mixer.jpg"></td></tr>
		    <tr><td><input type="button" id="Mixer" name="appliance" value="Mixer on" onclick="mixer()"></td></tr></table></div>
		     <% break;
		    case "Grinder":%><div id=image6><table><tr><td><img src="/DemoProject/images/Grinder.jpg"></td></tr>
		    <tr><td><input type="button" id="Grinder" name="appliance" value="Grinder on" onclick="grinder()"></td></tr></table></div>
		     <% break;
		    case "Microwave Ovan":%><div id=image6><table><tr><td><img src="/DemoProject/images/microwave.jpg"></td></tr>
		    <tr><td><input type="button" id="MicrowaveOvan" name="appliance" value="Microwave Ovan on" onclick="microwaveovan()"></td></tr></table></div>
		     <% break;
		    case "Motor":%><div id=image6><table><tr><td><img src="/DemoProject/images/motor.jpg"></td></tr>
		    <tr><td><input type="button" id="Motor"name="appliance" value="Motor on" onclick="motor()"></td></tr></table></div>
		     <% break;
		    }%>
		    </div>
		    <%}%>
		    </div>
		    <br>
		    <div id="tab"><table><tr><td>Total Voltage</td></tr>
		   <tr><td><input type="button" id="total_volts" name="submit" value="submit" onclick="myalert()"></td></tr></table>
		   </div>
		    <%}catch(Exception e)
		    {
		  	out.println(e.getMessage());
		  	}%>
		  	
        
			
</body>
</html>