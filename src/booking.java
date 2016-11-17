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
 * Servlet implementation class booking
 */
@WebServlet("/booking")
public class booking extends HttpServlet {
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
		
		try{
			PrintWriter pw=response.getWriter();
			String space_id=request.getParameter("space_id");
			
			String booking_date=request.getParameter("booking_date");
			HttpSession session=request.getSession(false);
			 String id=(String)session.getAttribute("id"); 
			pw.print(id);
			 
			 
			 
			 Class.forName("com.ibm.db2.jcc.DB2Driver");
		  		Connection c=DriverManager.getConnection("jdbc:db2://localhost:50000/ABC","USER","vivacious");
		  		
		  		
		  		
		  		String sql="insert into booking values (?,?,?)";
		  		
		  		String sql1="update space set status='booked' where space_id=?";
		  		
		  
		  		
		  		PreparedStatement ps=c.prepareStatement(sql);
		  		ps.setString(1, id);
		  		ps.setString(2, space_id);
		  		ps.setString(3, booking_date);
		  		ps.execute();
		  		
			 PreparedStatement ps1=c.prepareStatement(sql1);
			 ps1.setString(1, space_id);
			 ps1.execute();
			 
			
			 HttpSession se=request.getSession();
			 se.setAttribute("space_id", space_id);
		
			 
			 
	              RequestDispatcher r=request.getRequestDispatcher("booking_details.jsp");
					r.forward(request,response);
			 
			
			
		}catch(Exception e){
			e.printStackTrace();
		}

		
	}

}
