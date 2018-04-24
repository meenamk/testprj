

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginValidation
 */
@WebServlet("/LoginValidation")
public class LoginValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginValidation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		//PrintWriter out=response.getWriter();
		String Phone_no=request.getParameter("Phone_no");
		String Password=request.getParameter("pwdvalue");
		if(LoginPage.validate(Phone_no, Password)){
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthome", "root","root");
				PreparedStatement ps=con.prepareStatement("select Name from userdata where Phone_no=? and Password=?");
				ps.setString(1, Phone_no);
				ps.setString(2, Password);
				ResultSet rs=ps.executeQuery();
				if(rs.next()){
					String Name = rs.getString(1);
					HttpSession session = request.getSession();
					session.setAttribute("username", Name);
					RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
					rd.forward(request, response);
				}
			}catch(Exception e){System.out.println(e);}
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher("NewFile.html");
			rd.include(request, response);
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
