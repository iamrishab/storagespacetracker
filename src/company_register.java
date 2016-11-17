import java.util.*;
import java.sql.*;
import java.io.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class company_register
 */
@WebServlet("/company_register")
public class company_register extends HttpServlet {
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
		try
		{
		PrintWriter pw=response.getWriter();
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection c=DriverManager.getConnection("jdbc:db2://localhost:50000/ABC","USER","vivacious");
		int num=(int)(Math.random()*10000);
		String id=("com"+num);
		
		String cn=request.getParameter("cn");
		String pass=request.getParameter("pass");
		String add=request.getParameter("add");
		String email=request.getParameter("email");
		String ph=request.getParameter("ph");
		
		String sql="insert into regis values(?,?,?,?,?,?)";
		String sql1="insert into login values(?,?)";
		
		PreparedStatement ps=c.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, cn);
		ps.setString(3, pass);
		ps.setString(4, add);
		ps.setString(5, email);
		ps.setString(6, ph);
		ps.execute();
		
		PreparedStatement ps1=c.prepareStatement(sql1);
		ps1.setString(1, id);
		ps1.setString(2, pass);
		
		ps1.execute();
		pw.print("Thank u for regiser...and this is your login id:"+" "+id);
				HttpSession session=request.getSession();
				session.setAttribute("id", id);
				RequestDispatcher rd=request.getRequestDispatcher("company_user.jsp");
				rd.forward(request, response);
		
		
		
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
