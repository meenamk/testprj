<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@ page import="java.io.*" %>
     <%@ page import="java.util.ArrayList" %>
     <%@page import="java.io.OutputStream" %>
     <%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Decentralizing energy</title>
<link rel="stylesheet" type="text/css" href="design2.css">
<link rel="stylesheet" type="text/css" href="design.css">
<style>
#image1,#image2,#image3,#image4,#image5,#image6,#image7{
width:300px;
height:300px;
float:left;
margin-left:30px;
margin-top:20px;}
#tab{
margin-top:400px;
text-align:center;}
</style>

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

function airconditioner_on()
{
AirConditioner=220;
document.getElementById("on_airconditioner").disabled=true;
document.getElementById("off_airconditioner").disabled=false;
alert("you have turned Ac on");
}
function airconditioner_off(){
AirConditioner=0;
document.getElementById("on_airconditioner").disabled=false;
document.getElementById("off_airconditioner").disabled=true;
alert("you have turned Ac off");
}
function aircooler_on()
{
AirCooler=120;
document.getElementById("on_aircooler").disabled=true;
document.getElementById("off_aircooler").disabled=false;
alert("you have turned Aircooler on");
}
function aircooler_off()
{
AirCooler=0;
document.getElementById("on_aircooler").disabled=false;
document.getElementById("off_aircooler").disabled=true;
alert("you have turned Aircooler off");
}

function computer_on()
{
Computer=60;
document.getElementById("on_computer").disabled=true;
document.getElementById("off_computer").disabled=false;
alert("you have turned computer on");
}

function computer_off()
{
Computer=0;
document.getElementById("on_computer").disabled=false;
document.getElementById("off_computer").disabled=true;
alert("you have turned computer off");
}
function dishwasher_on()
{
Dishwasher=220;
document.getElementById("on_dishwasher").disabled=true;
document.getElementById("off_dishwasher").disabled=false;
alert("you have turned Dishwasher on");
}
function dishwasher_off()
{
Dishwasher=0;
document.getElementById("on_dishwasher").disabled=false;
document.getElementById("off_dishwasher").disabled=true;
alert("you have turned Dishwasher off");
}

function waterkettle_on()
{
ElectricWaterKettle=220;
document.getElementById("on_waterkettle").disabled=true;
document.getElementById("off_waterkettle").disabled=false;
alert("you have turned WaterKettle on");
}
function waterkettle_off()
{
ElectricWaterKettle=0;
document.getElementById("on_waterkettle").disabled=false;
document.getElementById("off_waterkettle").disabled=true;
alert("you have turned WaterKettle off");
}

function exhaustfan_on()
{
ExhaustFan=120;
document.getElementById("on_exhaustfan").disabled=true;
document.getElementById("off_exhaustfan").disabled=false;
alert("you have turned ExhaustFan on");
}
function exhaustfan_off()
{
ExhaustFan=0;
document.getElementById("on_exhaustfan").disabled=false;
document.getElementById("off_exhaustfan").disabled=true;
alert("you have turned ExhaustFan off");
}

function fanheater_on()
{
FanHeater=120;
document.getElementById("on_fanheater").disabled=true;
document.getElementById("off_fanheater").disabled=false;
alert("you have turned FanHeater on");
}
function fanheater_off()
{
FanHeater=0;
document.getElementById("on_fanheater").disabled=false;
document.getElementById("off_fanheater").disabled=true;
alert("you have turned FanHeater off");
}

function griller_on()
{
Griller=220;
document.getElementById("on_griller").disabled=true;
document.getElementById("off_fanheater").disabled=false;
alert("you have turned Griller on");
}
function griller_off()
{
Griller=0;
document.getElementById("on_griller").disabled=false;
document.getElementById("off_griller").disabled=true;
alert("you have turned Griller off");
}
function hairdryer_on()
{
HairDryer=120;
document.getElementById("on_hairdryer").disabled=true;
document.getElementById("off_hairdryer").disabled=false;
alert("you have turned hairdryer on");
}

function hairdryer_off()
{
HairDryer=0;
document.getElementById("on_hairdryer").disabled=false;
document.getElementById("off_hairdryer").disabled=true;
alert("you have turned hairdryer off");
}
function humidifier_on()
{
Humidifier=120;
document.getElementById("on_humidifier").disabled=true;
document.getElementById("off_humidifier").disabled=false;
alert("you have turned Humidifier on");
}
function humidifier_off()
{
Humidifier=0;
document.getElementById("on_humidifier").disabled=false;
document.getElementById("off_humidifier").disabled=true;
alert("you have turned Humidifier off");
}
function ceilingfan_on()
{
CeilingFan=120;
document.getElementById("on_fan").disabled=true;
document.getElementById("off_fan").disabled=false;
alert("you have turned fan on");
}
function ceilingfan_off()
{
CeilingFan=0;
document.getElementById("on_fan").disabled=false;
document.getElementById("off_fan").disabled=true;
alert("you have turned fan off");
}
function inductionstove_on()
{
InductionStove=220;
document.getElementById("on_inductionstove").disabled=true;
document.getElementById("off_inductionstove").disabled=false;
alert("you have turned InductionStove on");
}
function inductionstove_off()
{
InductionStove=0;
document.getElementById("on_inductionstove").disabled=false;
document.getElementById("off_inductionstove").disabled=true;
alert("you have turned InductionStove off");
}


function ironbox_on()
{
IronBox=120;
document.getElementById("on_ironbox").disabled=true;
document.getElementById("off_ironbox").disabled=false;
alert("you have turned ironbox on");
}

function ironbox_off()
{
IronBox=0;
document.getElementById("on_ironbox").disabled=false;
document.getElementById("off_ironbox").disabled=true;
alert("you have turned ironbox off");
}
function ledlamps_on()
{
LEDLamps=40;
document.getElementById("on_ledlamps").disabled=true;
document.getElementById("off_ledlamps").disabled=false;
alert("you have turned lamps on");
}
function ledlamps_off()
{
LEDLamps=0;
document.getElementById("on_ledlamps").disabled=false;
document.getElementById("off_ledlamps").disabled=true;
alert("you have turned lamps off");
}
function ledtubes_on()
{
LEDTubes=40;
document.getElementById("on_ledtubes").disabled=true;
document.getElementById("off_ledtubes").disabled=false;
alert("you have turned LED tubes  on");
}
function ledtubes_off()
{
LEDTubes=0;
document.getElementById("on_ledtubes").disabled=false;
document.getElementById("off_ledtubes").disabled=true;
alert("you have turned LED tubes  off");
}
function pedestalfan_on()
{
PedestalFan=120;
document.getElementById("on_pedestalfan").disabled=true;
document.getElementById("off_pedestalfan").disabled=false;
alert("you have turned Pedestal fan on");
}
function pedestalfan_off()
{
PedestalFan=0;
document.getElementById("on_pedestalfan").disabled=false;
document.getElementById("off_pedestalfan").disabled=true;
alert("you have turned Pedestal fan off");
}
function fridge_on()
{
Refrigerator=220;
document.getElementById("on_fridge").disabled=true;
document.getElementById("off_fridge").disabled=false;
alert("you have turned Fridge on");
}
function fridge_off()
{
Refrigerator=0;
document.getElementById("on_fridge").disabled=false;
document.getElementById("off_fridge").disabled=true;
alert("you have turned Fridge off");
}


function ricecooker_on()
{
RiceCooker=220;
document.getElementById("on_ricecooker").disabled=true;
document.getElementById("off_ricecooker").disabled=false;
alert("you have turned rice cooker on");
}
function ricecooker_off()
{
RiceCooker=0;
document.getElementById("on_ricecooker").disabled=false;
document.getElementById("off_ricecooker").disabled=true;
alert("you have turned rice cooker off");
}

function sewingmachine_on()
{
SewingMachine=120;
document.getElementById("on_sewingmachine").disabled=true;
document.getElementById("off_sewingmachine").disabled=false;
alert("you have turned sewing machine on");
}
function sewingmachine_off()
{
SewingMachine=0;
document.getElementById("on_sewingmachine").disabled=false;
document.getElementById("off_sewingmachine").disabled=true;
alert("you have turned sewing machine off");
}
function television_on()
{
T_V=120;
document.getElementById("on_television").disabled=true;
document.getElementById("off_television").disabled=false;
alert("you have turned television on");
}
function television_off()
{
T_V=0;
document.getElementById("on_television").disabled=false;
document.getElementById("off_television").disabled=true;
alert("you have turned television off");
}

function vacuumcleaner_on()
{
VacuumCleaner=220;
document.getElementById("on_vacuumcleaner").disabled=true;
document.getElementById("off_vacuumcleaner").disabled=false;
alert("you have turned vacuum cleaner on");
}
function vacuumcleaner_off()
{
VacuumCleaner=0;
document.getElementById("on_vacuumcleaner").disabled=false;
document.getElementById("off_vacuumcleaner").disabled=true;
alert("you have turned vacuum cleaner off");
}
function washingmachine_on()
{
WashingMachine=220;
document.getElementById("on_washingmachine").disabled=true;
document.getElementById("off_washingmachine").disabled=false;
alert("you have turned washing machine on");
}
function washingmachine_off()
{
WashingMachine=0;
document.getElementById("on_washingmachine").disabled=false;
document.getElementById("off_washingmachine").disabled=true;
alert("you have turned washing machine off");
}

function waterheater_on()
{
WaterHeater=220;
document.getElementById("on_waterheater").disabled=true;
document.getElementById("off_waterheater").disabled=false;
alert("you have turned water heater on");
}
function waterheater_off()
{
WaterHeater=0;
document.getElementById("on_waterheater").disabled=false;
document.getElementById("off_waterheater").disabled=true;
alert("you have turned water heater off");
}
function waterpurifier_on()
{
WaterPurifier=220;
document.getElementById("on_waterpurifier").disabled=true;
document.getElementById("off_waterpurifier").disabled=false;
alert("you have turned water purifier on");
}

function waterpurifier_off()
{
WaterPurifier=0;
document.getElementById("on_waterpurifier").disabled=false;
document.getElementById("off_waterpurifier").disabled=true;
alert("you have turned water purifier off");
}
function mixer_on()
{
Mixer=120;
document.getElementById("on_mixer").disabled=true;
document.getElementById("off_mixer").disabled=false;
alert("you have turned mixer on");
}
function mixer_off()
{
Mixer=0;
document.getElementById("on_mixer").disabled=false;
document.getElementById("off_mixer").disabled=true;
alert("you have turned mixer off");
}

function grinder_on()
{
Grinder=220;
document.getElementById("on_grinder").disabled=true;
document.getElementById("off_grinder").disabled=false;
alert("you have turned grinder on");
}
function grinder_off()
{
Grinder=0;
document.getElementById("on_grinder").disabled=false;
document.getElementById("off_grinder").disabled=true;
alert("you have turned grinder off");
}

function motor_on()
{
Motor=220;
document.getElementById("on_motor").disabled=true;
document.getElementById("off_motor").disabled=false;
alert("you have turned motor on");
}
function motor_off()
{
Motor=0;
document.getElementById("on_motor").disabled=false;
document.getElementById("off_motor").disabled=true;
alert("you have turned motor off");
}

function microwave_on()
{
MicrowaveOvan=220;
document.getElementById("on_microwave").disabled=true;
document.getElementById("off_microwave").disabled=false;
alert("you have turned microwave ovan on");
}
function microwave_off()
{
MicrowaveOvan=0;
document.getElementById("on_microwave").disabled=false;
document.getElementById("off_microwave").disabled=true;
alert("you have turned microwave ovan off");
}
request.setAttribute("Ac", AirConditioner);

function totalvolts(){

var total = AirConditioner + AirCooler + Computer + CeilingFan + InductionStove+ IronBox + LEDLamps + Dishwasher + ElectricWaterKettle
+ ExhaustFan + FanHeater + Griller + HairDryer + Humidifier + LEDTubes + PedestalFan + Refrigerator + RiceCooker +
SewingMachine + T_V + VacuumCleaner + WashingMachine + WaterHeater + WaterPurifier + Mixer + Grinder + Motor + MicrowaveOvan;
if(total>720){
alert("You power consumption has exceeded!! Please turn off some appliances!!");
alert(total);}
else if(total==0){
alert("No appliances running");
alert(total);}
else{
alert("your power consumption is normal");
alert(total);

}
}
</script>

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
<img src="/DemoProject/images/energy.png" ></img>
<br><br>

<%
int AirConditioner, AirCooler, Computer,Dishwasher,ElectricWaterKettle,ExhaustFan, FanHeater,Griller,HairDryer,
		Humidifier,CeilingFan, InductionStove, IronBox,LEDLamps, LEDTubes,PedestalFan, Refrigerator,RiceCooker,SewingMachine,
		Television, VacuumCleaner,WashingMachine,WaterHeater, WaterPurifier,Mixer, Grinder,Motor, MicrowaveOvan;
		AirConditioner=220;
		AirCooler=120;
		 Computer=60;
		 Dishwasher=220;
		 ElectricWaterKettle=220;
		 ExhaustFan=120;
		 FanHeater=120;
		 Griller=220;
		 HairDryer=120;
		Humidifier=120;
		CeilingFan=120;
		InductionStove=220;
		IronBox=120;
		LEDLamps=40;
		LEDTubes=40;
		PedestalFan=120;
		Refrigerator=220;
		RiceCooker=220;
		SewingMachine=120;
		Television=120;
		 VacuumCleaner=220;
		 WashingMachine=220;
		 WaterHeater=220;
		 WaterPurifier=220;
		 Mixer=120;
		 Grinder=220;
		 Motor=220;
		 MicrowaveOvan=220;
String username=(String)session.getAttribute("username");
try{
			Class.forName("com.mysql.jdbc.Driver");
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthome", "root","root");
		    String sql = "select list_appliances.ImageName , appliances.Image from list_appliances inner join appliances on list_appliances.ImageName=appliances.ImageName where username='"+username+"' ";
		    PreparedStatement stmt = conn.prepareStatement(sql);
		    ResultSet resultSet = stmt.executeQuery();%>
		 	<div>
		    <%  while(resultSet.next()){
		    String name=resultSet.getString(1);	%>	
		    <div>
		    <%switch(name){
		    case "AirConditioner":%><div id=image1><table><tr><td><img src="/DemoProject/images/air conditioner.jfif"></td></tr>
		    <tr><td><input type="button" value="On" id="on_airconditioner" onclick="airconditioner_on()"/>
		    <input type="button" value="Off" id="off_airconditioner" disabled onclick="airconditioner_off()"/></td></tr></table></div>
		  <%   break;
		    case "AirCooler":%><div id=image2><table><tr><td><img src="/DemoProject/images/aircooler.jfif"></td></tr>
		    <tr><td><input type="button" value="On" id="on_aircooler" onclick="aircooler_on()" />
		    <input type="button" value="Off" id="off_aircooler" disabled onclick="aircooler_off()" /></td></tr></table></div>
		   <% break;
		    case "Computer":%><div id=image3><table><tr><td><img src="/DemoProject/images/computer.jpg"></td></tr>
		    <tr><td><input type="button" value="On" id="on_computer" onclick="computer_on()"/>
		    <input type="button" value="Off" id="off_computer" disabled onclick="computer_off()"/></td></tr></table></div>
		   <% break;
		    case "Dishwasher":%><div id=image4><table><tr><td><img src="/DemoProject/images/dishwasher.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_dishwasher" onclick="dishwasher_on()"/>
		    <input type="button"  value="Off" id="off_dishwasher" disabled onclick="dishwasher_off()"/></td></tr></table></div>
		   <% break;
		    case "ElectricWaterKettle":%><div id=image5><table><tr><td><img src="/DemoProject/images/electric_water_heater.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_waterkettle" onclick="waterkettle_on()"/>
		    <input type="button" value="Off" id="off_waterkettle" disabled onclick="waterkettle_off()" /></td></tr></table></div>
			    <% break;
		    case "ExhaustFan":%><div id=image6><table><tr><td><img src="/DemoProject/images/exhaust fan.jfif"></td></tr>
		    <tr><td><input type="button" value="On" id="on_exhaustfan" onclick="exhaustfan_on()" />
		    <input type="button" value="Off" id="off_exhaustfan"  disabled onclick="exhaustfan_off()"/></td></tr></table></div>
		      <%  break;
		    case "FanHeater":%><div id=image6><table><tr><td><img src="/DemoProject/images/fan heater.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_fanheater" onclick="fanheater_on()"/>
		    <input type="button" value="Off" id="off_fanheater"  disabled onclick="fanheater_off()"/></td></tr></table></div>
		  <%  break;
		    case "CeilingFan":%><div id=image6><table><tr><td><img src="/DemoProject/images/fan2.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_fan" onclick="ceilingfan_on()"/>
		    <input type="button" value="Off" id="off_fan"  onclick="ceilingfan_off()" disabled/></td></tr></table></div>
		   <%  break;
		    case "Griller":%><div id=image6><table><tr><td><img src="/DemoProject/images/griller.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_griller" onclick="griller_on()"/>
		    <input type="button" value="Off" id="off_griller"  onclick="griller_off()" disabled/></td></tr></table></div>
		    <% break;
		    case "HairDryer":%><div id=image6><table><tr><td><img src="/DemoProject/images/hair dryer.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_hairdryer" onclick="hairdryer_on()"/>
		    <input type="button" value="Off" id="off_hairdryer"  disabled onclick="hairdryer_off()"/></td></tr></table></div>
		   <%  break;
		    case "Humidifier":%><div id=image6><table><tr><td><img src="/DemoProject/images/humidifier.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_humidifier" onclick="humidifier_on()"/>
		    <input type="button" value="Off" id="off_humidifier"  disabled onclick="humidifier_off()"/></td></tr></table></div>
		    <% break;
		    case "InductionStove":%><div id=image6><table><tr><td><img src="/DemoProject/images/induction stove.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_inductionstove" onclick="inductionstove_on()"/>
		    <input type="button" value="Off" id="off_inductionstove" onclick="inductionstove_off()" disabled /></td></tr></table></div>
		    <% break;
		    case "IronBox":%><div id=image6><table><tr><td><img src="/DemoProject/images/iron box.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_ironbox" onclick="ironbox_on()"/>
		    <input type="button" value="Off" id="off_ironbox" onclick="ironbox_off()" disabled/></td></tr></table></div>
		     <% break;
		    case "LED Lamps":%><div id=image6><table><tr><td><img src="/DemoProject/images/LED Lamps.jpg"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_ledlamps" onclick="ledlamps_on()"/>
		    <input type="button" value="Off" id="off_ledlamps" onclick="ledlamps_off()"  disabled/></td></tr></table></div>
		     <% break;
		    case "LED Tubes":%><div id=image6><table><tr><td><img src="/DemoProject/images/LED tubes.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_ledtubes" onclick="ledtubes_on()"/>
		    <input type="button" value="Off" id="off_ledtubes" onclick="ledtubes_off()" disabled/></td></tr></table></div>
		     <% break;
		    case "Pedestal Fan":%><div id=image6><table><tr><td><img src="/DemoProject/images/pedestal fan.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_pedestalfan" onclick="pedestalfan_on()"/>
		    <input type="button" value="Off" id="off_pedestalfan" onclick="pedestalfan_off()" disabled/></td></tr></table></div>
		     <% break;
		    case "Refrigerator":%><div id=image6><table><tr><td><img src="/DemoProject/images/refrigerator.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_fridge" onclick="fridge_on()"/>
		    <input type="button" value="Off" id="off_fridge" disabled onclick="fridge_off()" /></td></tr></table></div>
		     <% break;
		    case "Rice Cooker":%><div id=image6><table><tr><td><img src="/DemoProject/images/rice cooker.jpeg"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_ricecooker" onclick="ricecooker_on()"/>
		    <input type="button" value="Off" id="off_ricecooker" onclick="ricecooker_off()" disabled/></td></tr></table></div>
		     <% break;
		    case "Sewing Machine":%><div id=image6><table><tr><td><img src="/DemoProject/images/sewingmachine.jpg"></td></tr>
		    <tr><td><input type="button" id="value1" value="On" id="on_sewingmachine" onclick="sewingmachine_on()">
		    <input type="button" value="Off" id="off_sewingmachine" onclick="sewingmachine_off()" disabled /></td></tr></table></div>
		     <% break;
		    case "T.V":%><div id=image6><table><tr><td><img src="/DemoProject/images/television.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_television" onclick="television_on()"/>
		    <input type="button" value="Off" id="off_television" onclick="television_off()" disabled/></td></tr></table></div>
		     <% break;
		    case "Vaccum Cleaner":%><div id=image6><table><tr><td><img src="/DemoProject/images/vacuum cleaner.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_vacuumcleaner" onclick="vacuumcleaner_on()"/>
		    <input type="button" value="Off" id="off_vacuumcleaner" onclick="vacuumcleaner_off()" disabled/></td></tr></table></div>
		     <% break;
		    case "Washing Machine":%><div id=image6><table><tr><td><img src="/DemoProject/images/washing machine.jfif"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_washingmachine" onclick="washingmachine_on()"/>
		    <input type="button" value="Off" id="off_washingmachine" disabled onclick="washingmachine_off()" /></td></tr></table></div>
		     <% break;
		    case "Water Heater":%><div id=image6><table><tr><td><img src="/DemoProject/images/water heater.JPG"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_waterheater" onclick="waterheater_on()"/>
		    <input type="button" value="Off" id="off_waterheater" onclick="waterheater_off()" disabled/></td></tr></table></div>
		     <% break;
		    case "Water Purifier":%><div id=image6><table><tr><td><img src="/DemoProject/images/water_purifier.jpg"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_waterpurifier" onclick="waterpurifier_on();"/>
		    <input type="button" value="Off" id="off_waterpurifier" onclick="waterpurifier_off()" disabled/></td></tr></table></div>
		     <% break;
		    case "Mixer":%><div id=image6><table><tr><td><img src="/DemoProject/images/mixer.jpg"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_mixer" onclick="mixer_on()"/>
		    <input type="button" value="Off" id="off_mixer" onclick="mixer_off()" disabled/></td></tr></table></div>
		     <% break;
		    case "Grinder":%><div id=image6><table><tr><td><img src="/DemoProject/images/Grinder.jpg"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_grinder" onclick="grinder_on()"/>
		    <input type="button" value="Off" id="off_grinder" onclick="grinder_off()" disabled/></td></tr></table></div>
		     <% break;
		    case "Microwave Ovan":%><div id=image6><table><tr><td><img src="/DemoProject/images/microwave.jpg"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_microwave" onclick="microwave_on()"/>
		    <input type="button" value="Off" id="off_microwave" onclick="microwave_off()"disabled/></td></tr></table></div>
		     <% break;
		    case "Motor":%><div id=image6><table><tr><td><img src="/DemoProject/images/motor.jpg"></td></tr>
		    <tr><td><input type="button"  value="On" id="on_motor" onclick="motor_on()"/>
		    <input type="button" value="Off" id="off_motor" onclick="motor_off()" disabled/></td></tr></table></div>
		     <% break;
		    }%>
		    </div>
		    <%}%>
		    </div>
		    <br>
		    <div id="tab"><table><tr><td>Total Voltage</td></tr>
		   <tr><td><input type=submit name="submit" value="submit" onclick="totalvolts()"></td></tr></table>
		   </div>
		    <%}catch(Exception e)
		    {
		  	out.println(e.getMessage());
		  	}%>
		  	


		  	
</body>
</html>