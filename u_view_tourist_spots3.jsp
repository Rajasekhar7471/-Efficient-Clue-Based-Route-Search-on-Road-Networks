<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Book</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-yanone.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>


<style type="text/css">
<!--
.style9 {font-size: 18px; }
.style22 {font-family: "Times New Roman", Times, serif}
.style23 {
	font-size: 20px;
	color: #0000FF;
}
.style24 {font-family: "Times New Roman", Times, serif; font-size: 20px; }
.style26 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #0000FF; }
.style27 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Efficient Clue-based Route Search on Road Networks</a></h1>
      </div>
     
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="a_login.jsp"><span>Admin</span></a></li>
          <li><a href="s_login.jsp"><span>Service Provider</span></a></li>
          <li><a href="v_login.jsp"><span>Vehicle SP</span></a></li>
          <li class="active"><a href="u_login.jsp"><span>End User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center">Book </h2>
		  <p>&nbsp;</p>
		  
		  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>		  
	  
<%
   String s1="";
   String loc=request.getParameter("loc");
   String sp=request.getParameter("sp");
   
   String vname=request.getParameter("vname");
   String vsp=request.getParameter("vsp");
   
   String price=request.getParameter("price");
   
try {
		
		String query="select distance from spots where loc='"+loc+"' "; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(query);
		if ( rs.next() ) 
		{
		 s1 = rs.getString(1);
		}
		
		int vprice = (Integer.parseInt(price)*Integer.parseInt(s1));
		
		
		
		
%>		  
		  <form name="s" action="u_view_tourist_spots4.jsp" method="post" onSubmit="return valid()"  ons target="_top"> 
          
            
                        <span class="style16 style10 style12 style22 style23">
                        <label for="address">Your Location</label>
                        </span>
                        <p class="style16 style10 style12 style22 style23">
                          <input id="location" name="location" value="<%=loc%>" class="text" readonly="" />
                        </p>
						
						<span class="style16 style10 style12 style22 style23">
                        <label for="address">Service Provider</label>
                        </span>
                        <p class="style16 style10 style12 style22 style23">
                          <input id="sp" name="sp" value="<%=sp%>" class="text" />
                        </p>
						
						<span class="style16 style10 style12 style22 style23">
                        <label for="address">Locations Distance</label>
                        </span>
                        <p class="style16 style10 style12 style22 style23">
                          <input id="distance" name="distance" value="<%=s1%>" class="text" readonly="" />
                        </p>
						
						<span class="style16 style10 style12 style22 style23">
                        <label for="address">Vehicle Name</label>
                        </span>
                        <p class="style16 style10 style12 style22 style23">
                          <input id="vname" name="vname" value="<%=vname%>" class="text" />
                        </p>
						
						<span class="style16 style10 style12 style22 style23">
                        <label for="address">Vehicle Service Provider</label>
                        </span>
                        <p class="style16 style10 style12 style22 style23">
                          <input id="sp" name="vsp" value="<%=vsp%>" class="text" />
                        </p>
						
                        <p class="style16 style22 style23">
                          <span class="style13">
                          <label for="amount">Your Total Booking Price in Rs <span class="style27">(For <%=s1%>km)</span></label>
                          </span> </p>
                        <p>
                          <span class="style26">
                          <input id="amount" name="amount" class="text" value="<%=vprice%>" readonly />
            </span><span class="style24">            </span><span class="style22">            </span> </p>
                        <p><br />
                            <input name="submit" type="submit" value="Confirm and Book" />
                        </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
  </form>  
		  
<%		
		

} 
	catch (Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
%>		  




















		  
		  
		  
		  
		  
<p>&nbsp;</p>
<p align="right"><a href="u_view_tourist_spots.jsp" class="style9">Back</a></p>		  
		  
         
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span><span> </span>MENU</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="u_main.jsp"><span>User Main</span></a></li>
            <li><a href="u_login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
