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
         <p>Welcome to our website. New rooms are added very soon and new features are also added. Hope you all are benefited by our sevice..<a href="#">Read more</a></p>
        </div>
        <div class="sidebar">
           <h2>Contact</h2>
            <p>Phone: +44 (0)1234 567891</p>
            <p>Email: <a href="mailto:info@youremail.co.uk">rishav.creation@gmail.com</a></p>
        </div>
      </div>
      <div class="content">
      <%
String flag=(String)session.getAttribute("flag");
String id=(String)session.getAttribute("id");
if(flag=="invalid"){
	%>
	<label>You Need to register</label>
<%	
}
%>
      
	  <span href="#" class="button" id="toggle-login" style="width:160px">Individual Register</span>	  
	  
	   <div id="login" style="width:430px">
	   <div id="triangle"></div>
	   
        <form name="fm" action="indiv_register" method="post" onsubmit="return check()">
		<label></label>
<table width="400px">
<tr>
<td><label>Enter Individual Name:</label></td><td><input type="text" name="cn"></td></tr>
<tr><td><label>Enter Password:</label></td><td><input type="password" name="pass"></td></tr>
<tr><td><label>Enter Address:</label></td><td><input type="text" name="add"></td></tr>

<tr><td><label>Enter Phone no:</label></td><td><input type="text" name="ph"></td></tr>
<tr><td><label>Enter Email:</label></td><td><input type="text" name="email"></td></tr>
<tr><td><input type="submit" value="save"></td>
<td><input type="reset" value="clear"></td></tr>
</table>
		</form>
		
		<br><br>
        
		

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
    
    
    function check()
	{
	  if(document.fm.cn.value=="")
	   {
	     alert("company name can not be left blank");
		 document.fm.cn.focus();
		 return false;
	   }
	 if(document.fm.pass.value=="")
	   {
	     alert("password can not be left blank");
		 document.fm.pass.focus();
		 return false;
	   }
	
	if(document.fm.add.value=="")
	   {
	     alert("address can not be left blank");
		 document.fm.add.focus();
		 return false;
	   }
	
	if(document.fm.ph.value=="")
	   {
	     alert("Phone no can not be left blank");
		 document.fm.ph.focus();
		 return false;
	   }
	if(isNaN(document.fm.ph.value))
    {
      alert("only numbers are allowed");
     return false;
    }
   if(document.fm.ph.value.length!=10)
         { 
           alert("mobile number should be of 10 digits"); 
           document.fm.ph.focus();
           return false; 
          }
  if(document.fm.ph.value<0)
	{
	 alert("mobile number should be of 10 digits"); 
     document.fm.ph.focus();
      return false; 
	}

	if(document.fm.email.value=="")
	   {
	     alert("email can not be left blank");
		 document.fm.email.focus();
		 return false;
	   }
	 var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
     if(document.fm.email.value.match(mailformat))
	  {
	     document.fm.email.focus();
	     return true;
	  }
   else
    {
     alert("You have entered an invalid email address!");
       document.fm.email.focus();
       return false;
    }
  
	   
}
	
  </script>

</body>
</html>
