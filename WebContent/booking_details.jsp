<!DOCTYPE HTML>
<html>

<head>
  <title>booking details</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style1.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>

<body>
<div id="bg">
    <img src="images/background.jpg" alt="home">
</div>
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.jsp">StorageSpace<span class="logo_colour">Tracker</span></a></h1>
          <h2>A Warehouse Management System</h2>
        </div>
      </div>
      <nav>
        <div id="menu_container">
          <ul class="sf-menu" id="nav">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="examples.html">Our Works</a></li>
          
         
            <li><a href="#">User Login</a>
             <ul>
                <li><a href="#">Company</a>
				<ul>
                    <li><a href="company_login.jsp">Company Login</a></li>
                    <li><a href="company_register.jsp">Company Registration</a></li>
                  </ul>
                </li>
				
                <li><a href="#">Individual</a>
                  <ul>
                    <li><a href="indiv_login.jsp">Individual Login</a></li>
                    <li><a href="indiv_register.jsp">Individual Registration</a></li>
                  </ul>
                </li>
               
              </ul>
            </li>
            <li><a href="contact.jsp">Contact Us</a></li>
             <li><a href="logout.jsp">Logout</a></li>
          </ul>
        </div>
      </nav>
    </header>
    <div id="site_content">
      <div id="sidebar_container">
        <div class="sidebar">
          <h3>New Website</h3>
          
          <p>Welcome to our new website. Please have a look around, any feedback is much appreciated. <a href="#">Read more</a></p>
        
        </div>
        <div class="sidebar">
          <h3>Useful Links</h3>
          <ul>
           <li><a href="user_update.jsp">View Profile</a></li>
            <li><a href="user_update.jsp">Update Profile</a></li>
            <li><a href="room_details.jsp">All Room Details </a></li>
          </ul>
        </div>
        <div class="sidebar">
         <h3>Contact</h3>
            <p>Phone: +44 (0)1234 567891</p>
            <p>Email: <a href="mailto:info@youremail.co.uk">rishav.creation@gmail.com</a></p>
        </div>
      </div>
      <div class="content">
      <div class="tblplace">
	   <%@ page import="java.sql.*" %>
       <%@ page import="java.util.*" %>
       <%@ page import="java.io.*" %>
       
       
       <% try{
    	   
    	   PrintWriter pw=response.getWriter();
    	   session=request.getSession();
    	   String id=(String)session.getAttribute("id");
    	  // pw.print(id);
    	   
    	   String space_id=(String)session.getAttribute("space_id");
    	   //pw.print(space_id);
    	   
    	   Class.forName("com.ibm.db2.jcc.DB2Driver");
      	 Connection c=DriverManager.getConnection("jdbc:db2://localhost:50000/ABC","USER","vivacious");
      	 
      	 PreparedStatement ps=c.prepareStatement("select id,booking.space_id,space.room_no,space.capacity,space.price,booking.booking_date from booking,space where booking.space_id=space.space_id and booking.space_id=?");
    	   
    	   ps.setString(1, space_id);
    	  // ps.setString(2, id);
    	   
    	   ResultSet rs=ps.executeQuery();
    	   
    	   while(rs.next())
    	   {%>
    		   <table>
    		 <tr><td>Your id:</td><td><input type="text" name="id" value=<%=rs.getString(1)%>  readonly="readonly"></td></tr>
    		 <tr><td>Your Space id:</td><td><input type="text" name="space_id" value=<%=rs.getString(2)%> readonly="readonly"></td></tr>
    		  <tr><td>Your Room no:</td><td><input type="text" name="room_no" value=<%=rs.getString(3)%> readonly="readonly"></td></tr>
    		  <tr><td>Your capacity:</td><td><input type="text" name="capacity" value=<%=rs.getString(4)%> readonly="readonly"></td></tr>
    		 <tr><td>Your Price:</td><td><input type="text" name="price" value=<%=rs.getString(5)%> readonly="readonly"></td></tr>
    		  <tr><td>Your booking date:</td><td><input type="text" name="booking_date" value=<%=rs.getString(6) %> readonly="readonly"></td></tr>
    		  </table>
    	   <%}
    	   
    	   
       }catch(Exception e)
       {
    	   e.printStackTrace();
       }%>
       
       
       
        </div>
        </div>
        <h4 align="right" ><a href="available_room.jsp">BACK</a> </h4>
      
      
    </div>
    <div id="scroll">
      <a title="Scroll to the top" class="top" href="#"><img src="images/top.png" alt="top" /></a>
    </div>
    <footer>
      <p><img src="images/twitter.png" alt="twitter" />&nbsp;<img src="images/facebook.png" alt="facebook" />&nbsp;<img src="images/rss.png" alt="rss" /></p>
      <p><a href="index.jsp">Home</a> | <a href="works.jsp">Our Works</a>  | <a href="contact.jsp">Contact Us</a> | <a href="logout.jsp">Log out</a></p>
      <p>Copyright &copy; warehouse | <a href="http://www.css3templates.co.uk">design by Rishab Pal</a></p>
    </footer>
  </div>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
   <script type="text/javascript" src="js/image_slide.js"></script>
   
  <script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
      $('.top').click(function() {$('html, body').animate({scrollTop:0}, 'fast'); return false;});
    });
  </script>
</body>
</html>
