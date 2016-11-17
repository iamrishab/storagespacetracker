<!DOCTYPE HTML>
<html>

<head>
  <title>information</title>
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
          <h3>Useful Links</h3>
          <ul>
            <li><a href="profile.jsp">View Profile</a></li>
            <li><a href="user_update.jsp">Update Profile</a></li>
            <li><a href="room_details.jsp">View All Rooms</a></li>
          
          </ul>
        </div>
        <div class="sidebar">
          <h3>Contact</h3>
            <p>Phone: +44 (0)1234 567891</p>
            <p>Email: <a href="mailto:info@youremail.co.uk">rishav.creation@gmail.com</a></p>
        </div>
      </div>
      <div class="content">
	  
	  <div class="content_item">
	  <% session=request.getSession();
        	 String id=(String)session.getAttribute("id"); %>
	  <ul>
	  <li><a href="available_room.jsp">Available Room Details</a></li>
	  <li><a href="release_room.jsp">Release Room</a></li>
	  <li><a href="room_details.jsp" target="_self">All Room Details</a></li>
	  </ul>
	  </div>
       
	   <div class="content_container">       
			  <h3>Room1</h3>
			  <p>This room is 1st room of this warehouse.This room have no of racks and slaves.This room capacity is 20 sqft.And the rent of this room is 3000rs per month.</p>
            </div><!--close content_container-->
			
			<div class="content_container">			  
			  <h3>Room2</h3>
			  <p>This room is 2nd room of this warehouse.This room have no of racks and slaves.This room capacity is 30 sqft.And the rent of this room is 4000rs per month</p>
			</div><!--close content_container-->
	   
	   <div class="content_container">			  
			  <h3>Room3</h3>
			  <p>This room is 3rd room of this warehouse.This room have no of racks and slaves.This room capacity is 40 sqft.And the rent of this room is 5000rs per month</p>
			</div><!--close content_container-->
	   
	   <div class="content_container">			  
			  <h3>Room4</h3>
			  <p>This room is 4th room of this warehouse.This room have no of racks and slaves.This room capacity is 20 sqft.And the rent of this room is 3000rs per month</p>
			</div><!--close content_container-->
	   
	    <div class="content_container">			  
			  <h3>Room5</h3>
			  <p>This room is 5th room of this warehouse.This room have no of racks and slaves.This room capacity is 20 sqft.And the rent of this room is 3000rs per month</p>
			  <div class="button_small">
		      <a href="#">Read more</a>
		    </div><!--close button_small-->	
			</div><!--close content_container-->
			
			 <div class="content_container">			  
			  <h3>Room6</h3>
			  <p>This room is 6th room of this warehouse.This room have no of racks and slaves.The room capacity is 30 sqft.And the rent of this room is 4000rs per month</p>
			  <div class="button_small">
		      <a href="#">Read more</a>
		    </div><!--close button_small-->	
			</div><!--close content_container-->
	   
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
