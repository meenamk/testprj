<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="design2.css">
<link rel="stylesheet" type="text/css" href="design.css">
<title>Welcome Page</title>
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
 	%></div>
 	</div>
<img src="/DemoProject/images/energy.png" width=50% height=100  ></img>
<br><br>
<p>Smart grids offer better energy management for consumers as well
		as energy companies using bi-directional communication and control.
		With the advent of smart homes, energy companies can balance energy
		supply and demand to a large extent using many sensors/meters
		deployed. They can also nudge consumers to shift their demands to
		off-peak hours for load balancing and monetary benefits. We propose a
		decentralized demand scheduling algorithm that minimizes consumer
		discomfort and electricity cost of a household. Our algorithm utilizes
		only aggregated energy consumption of a household to derive optimal
		appliance level demand schedules. Furthermore, a low-complexity energy
		disaggregation algorithm is proposed to derive fine-grained appliance
		information and consumer preferences. We propose three important
		coefficients related to the energy usage of consumers. We utilize them
		to derive optimal day-ahead demand schedules. The decentralized
		algorithm is empirically evaluated using real-world energy usage data
		from open datasets, which include our own deployment. Our proposed
		scheduling algorithm saves up to 30% energy cost. This paper is one of
		the first to derive day-ahead schedules using real-world data from
		multiple households.</p>

</body>
</html>