import java.util.*;
import java.io.*;
import java.sql.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class release
 */
@WebServlet("/release")
public class release extends HttpServlet {
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
			pw.print(space_id);
			HttpSession session=request.getSession(false);
			 String id=(String)session.getAttribute("id"); 
			 pw.print(id);
			 
			 Class.forName("com.ibm.db2.jcc.DB2Driver");
		  		Connection c=DriverManager.getConnection("jdbc:db2://localhost:50000/ABC","USER","vivacious");
		  		
		  		String sql="delete booking where id=? and space_id=?";
		  		
		  		String sql1="update space set status='free' where space_id=?";
		  		
		  		PreparedStatement ps=c.prepareStatement(sql);
		  		ps.setString(1, id);
		  		ps.setString(2, space_id);
			
			    ps.execute();
			    
			    PreparedStatement ps1=c.prepareStatement(sql1);
			    ps1.setString(1, space_id);
			    ps1.execute();
			    
			    String flag="invalid";
				HttpSession session2=request.getSession();
				HttpSession session1=request.getSession();
				
			   RequestDispatcher r=request.getRequestDispatcher("release_room.jsp");
			   session2.setAttribute("flag", flag);
				session1.setAttribute("space_id", space_id);
				r.forward(request, response);
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
