import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginPage {
	public static boolean validate(String Phone_no,String Password){
		boolean status=false;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthome", "root","root");
		PreparedStatement ps=con.prepareStatement("select * from userdata where Phone_no=? and Password=?");
		ps.setString(1, Phone_no);
		ps.setString(2, Password);
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		
	}catch(Exception e){System.out.println(e);
	}	
	return status;
	}

}
