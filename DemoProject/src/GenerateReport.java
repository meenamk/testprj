import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;

public class GenerateReport {
	public static void Report(Date date, String name, int AC,int Cooler,int pc, int dishwasher,int kettle,
		int exhaustfan, int fanheater,int griller, int hairdryer, int humidifier, int fan, int inductionstove, int ironbox,
		int ledlamps,int ledtubes, int pedestalfan,int fridge,int ricecooker,int sewingmachine,int television,int vacuumcleaner, 
		int washingmachine,int waterheater, int waterpurifier,int  mixer,int grinder, int motor, int microwave){
		Date date1=date;
		String UserName=name;
		int AirConditioner, AirCooler, Computer,Dishwasher,ElectricWaterKettle,ExhaustFan, FanHeater,Griller,HairDryer,
		Humidifier,CeilingFan, InductionStove, IronBox,LEDLamps, LEDTubes,PedestalFan, Refrigerator,RiceCooker,SewingMachine,
		Television, VacuumCleaner,WashingMachine,WaterHeater, WaterPurifier,Mixer, Grinder,Motor, MicrowaveOvan;
		AirConditioner=AC;
		AirCooler=Cooler;
		Computer=pc;
		Dishwasher=dishwasher;
		ElectricWaterKettle=kettle;
		ExhaustFan=exhaustfan;
		FanHeater=fanheater;
		Griller=griller;
		HairDryer=hairdryer;
		Humidifier=humidifier;
		CeilingFan=fan;
		InductionStove=inductionstove;
		IronBox=ironbox;
		LEDLamps=ledlamps;
		LEDTubes=ledtubes;
		PedestalFan=pedestalfan;
		Refrigerator=fridge;
		RiceCooker=ricecooker;
		SewingMachine=sewingmachine;
		Television=television;
		VacuumCleaner=vacuumcleaner;
		WashingMachine=washingmachine;
		WaterHeater=waterheater;
		WaterPurifier=waterpurifier;
		Mixer=mixer;
		Grinder=grinder;
		Motor=motor;
		MicrowaveOvan=microwave;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthome", "root","root");
				PreparedStatement ps=conn.prepareStatement("insert into report(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setDate(1, date1);
				ps.setString(2, UserName);
				ps.setInt(3, AirConditioner);
				ps.setInt(4, AirCooler);
				ps.setInt(5, Computer);
				ps.setInt(6, Dishwasher);
				ps.setInt(7, ElectricWaterKettle);
				ps.setInt(8, ExhaustFan);
				ps.setInt(9, FanHeater);
				ps.setInt(10, Griller);
				ps.setInt(11, HairDryer);
				ps.setInt(12, Humidifier);
				ps.setInt(13, CeilingFan);
				ps.setInt(14, InductionStove);
				ps.setInt(15, IronBox);
				ps.setInt(16, LEDLamps);
				ps.setInt(17, LEDTubes);
				ps.setInt(18, PedestalFan);
				ps.setInt(19, Refrigerator);
				ps.setInt(20, RiceCooker);
				ps.setInt(21, SewingMachine);
				ps.setInt(22, Television);
				ps.setInt(23, VacuumCleaner);
				ps.setInt(24, WashingMachine);
				ps.setInt(25, WaterHeater);
				ps.setInt(26, WaterPurifier);
				ps.setInt(27, Mixer);
				ps.setInt(28,Grinder);
				ps.setInt(29, Motor);
				ps.setInt(30, MicrowaveOvan);
				ps.executeUpdate();
				System.out.println("inserted");
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	
		
	}

}
