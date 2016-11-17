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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class user_update
 */
@WebServlet("/user_update")
public class user_update extends HttpServlet {
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
		//HttpSession session=request.getSession(false);
   	   // String id=(String)session.getAttribute("id");
		String id=request.getParameter("id");
   	    String name=request.getParameter("name");
   	    String pass=request.getParameter("pass"); 
   	    String addr=request.getParameter("addr");
   	    String email=request.getParameter("email");
   	    String ph=request.getParameter("ph");
   	    pw.print(id);
   	
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection c=DriverManager.getConnection("jdbc:db2://localhost:50000/ABC","USER","vivacious");
		
		String sql= "update regis set name=?, pass=?, addr=?, email=?, ph=? where id=?";
		String sql2="update login set pass=? where id=?";
		PreparedStatement ps=c.prepareStatement(sql);
		PreparedStatement ps2=c.prepareStatement(sql2);
		//ps.setString(1, id);
		ps.setString(1, name);
		ps.setString(2, pass);
		ps.setString(3, addr);
		ps.setString(4, email);
		ps.setString(5, ph);
		ps.setString(6, id);
		
		ps2.setString(1, pass);
		ps2.setString(2, id);
		
		ps.execute();
		ps2.execute();
		
		String flag="invalid";
		HttpSession session2=request.getSession();
		HttpSession session1=request.getSession();
		
		 RequestDispatcher r=request.getRequestDispatcher("user_update.jsp");
		   session2.setAttribute("flag", flag);
			session1.setAttribute("id", id);
			r.forward(request, response);
		
		
	   }catch(Exception e)
	     {
	    	e.printStackTrace();
	     }
	
	

	  }
 }	
