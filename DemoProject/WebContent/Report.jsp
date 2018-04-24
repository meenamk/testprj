<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*, javax.servlet.*,org.json.JSONObject,org.json.JSONException" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report</title>
 <script src="https://cdn.anychart.com/js/8.0.1/anychart-core.min.js"></script>
      <script src="https://cdn.anychart.com/js/8.0.1/anychart-pie.min.js"></script>
      <link rel="stylesheet" type="text/css" href="design2.css">
<link rel="stylesheet" type="text/css" href="design.css">
<script>
window.onload = function () {
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	
	title:{
		text:"Monthly Report"
	},
	axisX:{
		interval: 1
	},
	axisY2:{
		interlacedColor: "rgba(1,77,101,.2)",
		gridColor: "rgba(1,77,101,.1)",
		title: "Volts"
	},
	data: [{
		type: "bar",
		name: "appliances",
		axisYType: "secondary",
		color: "#014D65",
		dataPoints: <%out.print(session.getAttribute("points"));%>
	}]
});
chart.render();

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
<a href="LogoutServlet">Logout</a><br><br>
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
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
String username=(String)session.getAttribute("username");
	int ac, cooler, computer,dishwasher, waterkettle,exhaustfan, fanheater,griller, hairdryer,humidifier,fan,
	inductionstove, ironbox, lamps, tubes,pedestalfan,fridge,cooker,sewingmachine, tv,vacuum, washingmachine, heater,
	purifier,mixer, grinder, motor, ovan;
try{
			Class.forName("com.mysql.jdbc.Driver");
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthome", "root","root");
		    String sql="select distinct ImageName from list_appliances where UserName='"+username+"' ";
		    PreparedStatement stmt = conn.prepareStatement(sql);
		    ResultSet rs = stmt.executeQuery();
		    while(rs.next()){
		    	String app=rs.getString(1);
		    	switch(app){
		    		case "AirConditioner":
		    			String query1="select sum(AirConditioner) from report where UserName='"+username+"' ";
		    			PreparedStatement st1=conn.prepareStatement(query1);
		    			ResultSet a=st1.executeQuery();
		    			while(a.next()){
		    				ac=a.getInt(1);
		    				map = new HashMap<Object,Object>(); 
		    				map.put("label", "AirConditioner"); 
		    				map.put("y", ac); list.add(map);
		    				//out.println(ac);
		    			}break;
		    		case "AirCooler":
		    			String query2="select sum(AirCooler) from report where UserName='"+username+"' ";
		    			PreparedStatement st2=conn.prepareStatement(query2);
		    			ResultSet b=st2.executeQuery();
		    			while(b.next()){
		    				cooler=b.getInt(1);
		    				map = new HashMap<Object,Object>(); 
		    				map.put("label", "AirCooler"); 
		    				map.put("y", cooler); list.add(map);
		    				//out.println(cooler);
		    			}break;
		    		
		    		case "Computer":
		    			String query3="select sum(Computer) from report where UserName='"+username+"' ";
		    			PreparedStatement st3=conn.prepareStatement(query3);
		    			ResultSet c=st3.executeQuery();
		    			while(c.next()){
		    				computer=c.getInt(1);
		    				map = new HashMap<Object,Object>(); 
		    				map.put("label", "Computer"); 
		    				map.put("y", computer); list.add(map);
		    				//out.println(computer);
		    			} break;
		    		case "Dishwasher":
		    			String query4="select sum(Dishwasher) from report where UserName='"+username+"' ";
		    			PreparedStatement st4=conn.prepareStatement(query4);
		    			ResultSet d=st4.executeQuery();
		    			while(d.next()){
		    				dishwasher=d.getInt(1);
		    				map = new HashMap<Object,Object>(); 
		    				map.put("label", "Dishwasher"); 
		    				map.put("y", dishwasher); list.add(map);
		    				//out.println(dishwasher);
		    			} break;
		    		case "ElectricWaterKettle": 
		    		String query5="select sum(ElectricWaterKettle) from report where UserName='"+username+"' ";
		    			PreparedStatement st5=conn.prepareStatement(query5);
		    			ResultSet e=st5.executeQuery();
		    			while(e.next()){
		    				waterkettle=e.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "ElectricWaterKettle"); 
		    				map.put("y", waterkettle); list.add(map);	//	    				out.println(waterkettle);
		    			}break;
		    		case "ExhaustFan": 
		    		String query6="select sum(ExhaustFan) from report where UserName='"+username+"' ";
		    			PreparedStatement st6=conn.prepareStatement(query6);
		    			ResultSet f=st6.executeQuery();
		    			while(f.next()){
		    				exhaustfan=f.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "ExhaustFan"); 
		    				map.put("y", exhaustfan); list.add(map);//		    				out.println(exhaustfan);
		    			}break;
		    		case "FanHeater": 
		    		String query7="select sum(FanHeater) from report where UserName='"+username+"' ";
		    			PreparedStatement st7=conn.prepareStatement(query7);
		    			ResultSet g=st7.executeQuery();
		    			while(g.next()){
		    				fanheater=g.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "FanHeater"); 
		    				map.put("y", fanheater); list.add(map);		 //   				out.println(fanheater);
		    			}break;
		    		case "Griller": 
		    		String query8="select sum(Griller) from report where UserName='"+username+"' ";
		    			PreparedStatement st8=conn.prepareStatement(query8);
		    			ResultSet h=st8.executeQuery();
		    			while(h.next()){
		    				griller=h.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "Griller"); 
		    				map.put("y", griller); list.add(map);//		    				out.println(griller);
		    			}break;
		    		case "HairDryer": 
		    		String query9="select sum(HairDryer) from report where UserName='"+username+"' ";
		    			PreparedStatement st9=conn.prepareStatement(query9);
		    			ResultSet i=st9.executeQuery();
		    			while(i.next()){
		    				hairdryer=i.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "HairDryer"); 
		    				map.put("y", hairdryer); list.add(map);	//	    				out.println(hairdryer);
		    			}break;
		    		case "Humidifier": 
		    		String query10="select sum(Humidifier) from report where UserName='"+username+"' ";
		    			PreparedStatement st10=conn.prepareStatement(query10);
		    			ResultSet j=st10.executeQuery();
		    			while(j.next()){
		    				humidifier=j.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "Humidifier"); 
		    				map.put("y", humidifier); list.add(map);		  //  				out.println(humidifier);
		    			}break;
		    		case "CeilingFan": 
		    		String query11="select sum(CeilingFan) from report where UserName='"+username+"' ";
		    			PreparedStatement st11=conn.prepareStatement(query11);
		    			ResultSet k=st11.executeQuery();
		    			while(k.next()){
		    				fan=k.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "CeilingFan"); 
		    				map.put("y", fan); list.add(map);	//	    				out.println(fan);
		    			}break;
		    		case "InductionStove": 
		    		String query12="select sum(InductionStove) from report where UserName='"+username+"' ";
		    			PreparedStatement st12=conn.prepareStatement(query12);
		    			ResultSet l=st12.executeQuery();
		    			while(l.next()){
		    				inductionstove=l.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "InductionStove"); 
		    				map.put("y", inductionstove); list.add(map);	//	    				out.println(inductionstove);
		    			}break;
		    		case "IronBox": 
		    		String query13="select sum(IronBox) from report where UserName='"+username+"' ";
		    			PreparedStatement st13=conn.prepareStatement(query13);
		    			ResultSet m=st13.executeQuery();
		    			while(m.next()){
		    				ironbox=m.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "IronBox"); 
		    				map.put("y", ironbox); list.add(map);		   // 				out.println(ironbox);
		    			}break;
		    		case "LEDLamps": 
		    		String query14="select sum(LEDLamps) from report where UserName='"+username+"' ";
		    			PreparedStatement st14=conn.prepareStatement(query14);
		    			ResultSet n=st14.executeQuery();
		    			while(n.next()){
		    				lamps=n.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "LEDLamps"); 
		    				map.put("y", lamps); list.add(map);		    //				out.println(lamps);
		    			}break;
		    		case "LEDTubes": 
		    		String query15="select sum(LEDTubes) from report where UserName='"+username+"' ";
		    			PreparedStatement st15=conn.prepareStatement(query15);
		    			ResultSet o=st15.executeQuery();
		    			while(o.next()){
		    				tubes=o.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "LEDTubes"); 
		    				map.put("y", tubes); list.add(map);		    	//			out.println(tubes);
		    			}break;
		    		case "PedestalFan": 
		    		String query16="select sum(PedestalFan) from report where UserName='"+username+"' ";
		    			PreparedStatement st16=conn.prepareStatement(query16);
		    			ResultSet p=st16.executeQuery();
		    			while(p.next()){
		    				pedestalfan=p.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "PedestalFan"); 
		    				map.put("y", pedestalfan); list.add(map);		//    				out.println(pedestalfan);
		    			}break;
		    		case "Refrigerator": 
		    		String query17="select sum(Refrigerator) from report where UserName='"+username+"' ";
		    			PreparedStatement st17=conn.prepareStatement(query17);
		    			ResultSet q=st17.executeQuery();
		    			while(q.next()){
		    				fridge=q.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "Refrigerator"); 
		    				map.put("y", fridge); list.add(map);	//	    				out.println(fridge);
		    			}break;
		    		case "RiceCooker": 
		    		String query18="select sum(RiceCooker) from report where UserName='"+username+"' ";
		    			PreparedStatement st18=conn.prepareStatement(query18);
		    			ResultSet r=st18.executeQuery();
		    			while(r.next()){
		    				cooker=r.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "RiceCooker"); 
		    				map.put("y", cooker); list.add(map);		    //				out.println(cooker);
		    			}break;
		    		case "SewingMachine": 
		    		String query19="select sum(SewingMachine) from report where UserName='"+username+"' ";
		    			PreparedStatement st19=conn.prepareStatement(query19);
		    			ResultSet s=st19.executeQuery();
		    			while(s.next()){
		    				sewingmachine=s.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "SewingMachine"); 
		    				map.put("y", sewingmachine); list.add(map);	//	    				out.println(sewingmachine);
		    			}break;
		    		case "Television": 
		    		String query20="select sum(Television) from report where UserName='"+username+"' ";
		    			PreparedStatement st20=conn.prepareStatement(query20);
		    			ResultSet t=st20.executeQuery();
		    			while(t.next()){
		    				tv=t.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "Television"); 
		    				map.put("y", tv); list.add(map);		//    				out.println(tv);
		    			}break;
		    		case "VacuumCleaner": 
		    		String query21="select sum(Computer) from report where UserName='"+username+"' ";
		    			PreparedStatement st21=conn.prepareStatement(query21);
		    			ResultSet u=st21.executeQuery();
		    			while(u.next()){
		    				vacuum=u.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "VacuumCleaner"); 
		    				map.put("y", vacuum); list.add(map);	//	    				out.println(vacuum);
		    			}break;
		    		case "WashingMachine": 
		    		String query22="select sum(Computer) from report where UserName='"+username+"' ";
		    			PreparedStatement st22=conn.prepareStatement(query22);
		    			ResultSet v=st22.executeQuery();
		    			while(v.next()){
		    				washingmachine=v.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "WashingMachine"); 
		    				map.put("y", washingmachine); list.add(map);	//	    				out.println(washingmachine);
		    			}break;
		    		case "WaterHeater": 
		    		String query23="select sum(WaterHeater) from report where UserName='"+username+"' ";
		    			PreparedStatement st23=conn.prepareStatement(query23);
		    			ResultSet w=st23.executeQuery();
		    			while(w.next()){
		    				heater=w.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "WaterHeater"); 
		    				map.put("y", heater); list.add(map);		//    				out.println(heater);
		    			}break;
		    		case "WaterPurifier": 
		    		String query24="select sum(WaterPurifier) from report where UserName='"+username+"' ";
		    			PreparedStatement st24=conn.prepareStatement(query24);
		    			ResultSet x=st24.executeQuery();
		    			while(x.next()){
		    				purifier=x.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "WaterPurifier"); 
		    				map.put("y", purifier); list.add(map);	//	    				out.println(purifier);
		    			}break;
		    		case "Mixer": 
		    		String query25="select sum(Mixer) from report where UserName='"+username+"' ";
		    			PreparedStatement st25=conn.prepareStatement(query25);
		    			ResultSet y=st25.executeQuery();
		    			while(y.next()){
		    				mixer=y.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "Mixer"); 
		    				map.put("y", mixer); list.add(map);		//    				out.println(mixer);
		    			}break;
		    		case "Grinder": 
		    		String query26="select sum(Grinder) from report where UserName='"+username+"' ";
		    			PreparedStatement st26=conn.prepareStatement(query26);
		    			ResultSet z=st26.executeQuery();
		    			while(z.next()){
		    				grinder=z.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "Grinder"); 
		    				map.put("y", grinder); list.add(map);	//	    				out.println(grinder);
		    			}break;
		    		case "Motor": 
		    		String query27="select sum(Motor) from report where UserName='"+username+"' ";
		    			PreparedStatement st27=conn.prepareStatement(query27);
		    			ResultSet aa=st27.executeQuery();
		    			while(aa.next()){
		    				motor=aa.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "Motor"); 
		    				map.put("y", motor); list.add(map);	//	    				out.println(motor);
		    			}break;
		    		case "MicrowaveOvan": 
		    		String query28="select sum(MicrowaveOvan) from report where UserName='"+username+"' ";
		    			PreparedStatement st28=conn.prepareStatement(query28);
		    			ResultSet ab=st28.executeQuery();
		    			while(ab.next()){
		    				ovan=ab.getInt(1);
							map = new HashMap<Object,Object>(); 
		    				map.put("label", "MicrowaveOvan"); 
		    				map.put("y", ovan); list.add(map);		 //   				out.println(ovan);
		    			}break;
		    			
		    	}
		    	}	
		    String dataPoints = gsonObj.toJson(list);   
		   // response.getWriter().write(dataPoints);
		    	
		    session.setAttribute("points", dataPoints);
		   // out.print(dataPoints);
	}catch(Exception e){
		    out.println(e);} %>		    
		    <div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>