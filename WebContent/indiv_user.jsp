<!DOCTYPE HTML>
<html>

<head>
  <title>individual register</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
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
          <h3>Latest Updates</h3>
        <marquee direction="up" scrollamount="3" onmouseover="this.stop()" onmouseout="this.start()"><p>Welcome to our website. New rooms are added very soon and new features are aloso added. Hope you all are benefited by our sevice..<a href="#">Read more</a></p>
        
        </marquee>
        </div>
        
        <div class="sidebar">
           <h3>Contact</h3>
            <p>Phone: +44 (0)1234 567891</p>
            <p>Email: <a href="mailto:info@youremail.co.uk">rishav.creation@gmail.com</a></p>
        </div>
        
      </div>
      <div class="content">
	   <%@ page import="java.sql.*" %>
       <%@ page import="java.util.*" %>
       <%@ page import="java.io.*" %>
       
       <%
         try{
        	 HttpSession se=request.getSession();
        	 String id=(String)session.getAttribute("id"); 
        	 Class.forName("com.ibm.db2.jcc.DB2Driver");
        	 Connection c=DriverManager.getConnection("jdbc:db2://localhost:50000/ABC","USER","vivacious");
        	 PreparedStatement ps= c.prepareStatement("select * from regis where id=?");
        	 ps.setString(1, id);
        	 ResultSet r=ps.executeQuery();
        	 
        	 while(r.next())
        	 {%>
        	  Your User id:<input type="text" name="id" readonly value=<%=r.getString(1)%>><br>
        	  Your Name:<input type="text" name="name" value=<%=r.getString(2)%>><br>
        	  Your Password:<input type="text" name="pass" value=<%=r.getString(3)%>><br>
        	  Your Address<input type="text" name="addr" value=<%=r.getString(4)%>><br>
        	  Your Email:<input type="text" name="email" value=<%=r.getString(5)%>><br>
        	  Your Phone no:<input type="text" name="ph" value=<%=r.getString(6)%>><br>
        	  
        	  
        <%}
        }catch(Exception e)
               {
	            e.printStackTrace();
               }
             %>
       
      
        
      <p align="center"><a href="user_update.jsp">Update</a> | <a href="index.jsp">Back to Home Page</a></p>
       
        
      </div>
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
