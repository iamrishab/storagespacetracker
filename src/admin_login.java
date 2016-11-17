import java.sql.*;
import java.util.*;
import java.io.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class admin_login
 */
@WebServlet("/admin_login")
public class admin_login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter pw=response.getWriter();
		try
		{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection c=DriverManager.getConnection("jdbc:db2://localhost:50000/ABC","USER","vivacious");
			String name=request.getParameter("un");
			String pass=request.getParameter("pass");
			
			String sql="select user_name, pass from ad_login where user_name=? and pass=?";
			PreparedStatement ps=c.prepareStatement(sql);
			
			ps.setString(1, name);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				RequestDispatcher r=request.getRequestDispatcher("view.jsp");
				r.forward(request,response);
			}
			else
			{
				pw.print("wrong user id or password");
				RequestDispatcher r=request.getRequestDispatcher("ad_login.jsp");
				r.include(request, response);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}

	


