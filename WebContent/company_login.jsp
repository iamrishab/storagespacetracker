<!DOCTYPE HTML>
<%@page import="java.io.PrintWriter"%>
<html>

<head>
  <title>company login</title>
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
          <h1><a href="index.html">StorageSpace<span class="logo_colour">Tracker</span></a></h1>
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
         <p>Welcome to our website. New rooms are added very soon and new features are also added. Hope you all are benefited by our sevice..<a href="#">Read more</a></p>
        </div>
        <div class="sidebar">
           <h2>Contact</h2>
            <p>Phone: +44 (0)1234 567891</p>
            <p>Email: <a href="mailto:info@youremail.co.uk">rishav.creation@gmail.com</a></p>
        </div>
      </div>
      
      <div class="content">
	  <br>
	    <span href="#" class="button" id="toggle-login">Company Login</span>
	  
	   <div id="login">
	   <div id="triangle"></div>
	   <h1>Log in</h1>
        <form action="company_login" method="post">
		<input type="text" placeholder="User id" name="id">
		<input type="password" placeholder="Password" name="pass">
		<input type="submit" value="Log in">
		</form>
		
		<br><br>
        
		

        <p align="center">Not a member? <a href="company_register.jsp">Sign up now</a><span class="fontawesome-arrow-right"></span></p>

       <!-- end login -->
	  
	  </div>
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
   <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>

  <script src="js/index.js"></script>
   
   
  <script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
      $('.top').click(function() {$('html, body').animate({scrollTop:0}, 'fast'); return false;});
    });
  </script>
</body>
</html>
