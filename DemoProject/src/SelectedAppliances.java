

import java.io.IOException;
//import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.ArrayList;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SelectedAppliances
 */
@WebServlet("/SelectedAppliances")
public class SelectedAppliances extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectedAppliances() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	//@SuppressWarnings("null")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=(String) request.getSession().getAttribute("username");
		request.setAttribute("username", username);
	
		
		//ArrayList<String> imagelocation=new ArrayList<String>();
		String[] appliances=(request.getParameterValues("appliance"));
		//String[] imagelocation=null;
	//	for(int i=0; i<appliances.length;i++){
			//List_appliances.add(appliances[i]);
		//}
		try{
			//int totalsize=List_appliances.size();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthome", "root","root");
			for(int j=0; j<appliances.length;j++){
			PreparedStatement ps=con.prepareStatement("insert into list_appliances values(?,?)");
			ps.setString(1, username);
			ps.setString(2, appliances[j]);
			ps.executeUpdate();
			}
			response.sendRedirect("NewFile.jsp");
		}catch(Exception e){
			System.out.println(e);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
