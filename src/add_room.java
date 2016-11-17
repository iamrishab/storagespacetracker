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
 * Servlet implementation class add_room
 */
@WebServlet("/add_room")
public class add_room extends HttpServlet {
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
		//PrintWriter pw=response.getWriter();
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection c=DriverManager.getConnection("jdbc:db2://localhost:50000/ABC","USER","vivacious");
		
		
		String space_id=request.getParameter("sd");
		String room_no=request.getParameter("rn");
		String capacity=request.getParameter("cp");
		String price=request.getParameter("pr");
		String status=request.getParameter("st");
		
		
		String sql="insert into space values(?,?,?,?,?)";
		
		PreparedStatement ps=c.prepareStatement(sql);
		ps.setString(1, space_id);
		ps.setString(2, room_no);
		ps.setString(3, capacity);
		ps.setString(4, price);
		ps.setString(5, status);
		ps.execute();
		
		RequestDispatcher rd=request.getRequestDispatcher("add_room.jsp");
			rd.forward(request, response);
		
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}



}


