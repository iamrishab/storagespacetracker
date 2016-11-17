import java.sql.*;
import java.util.*;
import java.io.*;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class indiv_login
 */
@WebServlet("/indiv_login")
public class indiv_login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
			String id=request.getParameter("id");
			String pass=request.getParameter("pass");
			
			String sql="select id,pass from login where id=? and pass=?";
			PreparedStatement ps=c.prepareStatement(sql);
			
			ps.setString(1, id);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			
			HttpSession session=request.getSession();
			session.setAttribute("id", id);
			
			if(rs.next())
			{
				RequestDispatcher r=request.getRequestDispatcher("info.jsp");
				r.forward(request,response);
			}
			else
			{
				String flag="invalid";
				HttpSession session2=request.getSession();
				HttpSession session1=request.getSession();
				
				session2.setAttribute("flag", flag);
				session1.setAttribute("id", id);
				RequestDispatcher r=request.getRequestDispatcher("indiv_register.jsp");
				r.forward(request, response);
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
