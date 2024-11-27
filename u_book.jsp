<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Booking Status</title>
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
.style13 {font-family: "Times New Roman", Times, serif}
.style14 {color: #000000}
.style16 {font-size: 20px; color: #000000; }
.style17 {color: #FF0000}
.style18 {font-size: 25px; font-family: "Times New Roman", Times, serif; color: #FF0000; }
.style19 {font-size: 20px}
.style20 {color: #0000FF}
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
          <h2 align="center">Booking Status</h2>
		  <p>&nbsp;</p>
		  
		  







<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
            
<%

			   
    try
	{
			int amount1 =0,amount2 =0,pprice=0,uamount=0,sub=0;
			int accno=0;
  			String s1,s2,s3,s4;
			String loc=request.getParameter("loc");
			String sp=request.getParameter("sp");
			//int usid=Integer.parseInt(request.getParameter("usid"));
			
			String user=(String)application.getAttribute("user");
			
			
			Statement stmt = connection.createStatement();
			String sql="SELECT * FROM account where user='"+user+"' ";
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			
			
								uamount=Integer.parseInt(rs.getString(8));				
																
								String sql2="SELECT price,rank FROM spots where loc='"+loc+"' and user='"+sp+"' ";
								ResultSet rs2 =stmt.executeQuery(sql2);
								if(rs2.next()==true)
								{
								
										
										pprice=Integer.parseInt(rs2.getString(1));
										
										if(pprice>uamount)
										{
											

%>
   <span class="style13"> <span class="style18">Insufficiant Amount !!!</span> <br /> 
   <span class="style18">Still need <%= (pprice-uamount)%>Rs</span> </span> 
   
     <p><a href="u_add_money.jsp?type=<%="two"%>" class="style12 style19">Add Amount</a></p>
	 <p align="right"><a href="u_view_tourist_spots1.jsp?loc=<%=loc%>&sp=<%=sp%>" class="style9">Back </a></p>

<%

                                         }
										else
										{
												
												sub=uamount-pprice;
												String leftamount=String.valueOf(sub);
												
												String sql22="Update account set amount='"+leftamount+"'  where user='"+user+"' ";
												Statement stmt22 = connection.createStatement();
												stmt22.executeUpdate(sql22);
												
												SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
												SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
												Date now = new Date();
												String strDate = sdfDate.format(now);
												String strTime = sdfTime.format(now);
												String dt = strDate + "   " + strTime;
												
												     
																									
												PreparedStatement ps1=connection.prepareStatement("insert into spot_book(loc,user,date,price,sp) values(?,?,?,?,?)");
														ps1.setString(1,loc);
														ps1.setString(2,user);
														ps1.setString(3,dt);
														ps1.setInt(4,pprice);
														ps1.setString(5,sp);
														
														
                                                     int x=ps1.executeUpdate();
													 if(x>0) {
													 
													 String task="Spot Booked";
													 String strQuery222 = "insert into transaction(user,loc,task,dt,price) values('"+user+"','"+loc+"','"+task+"','"+dt+"','"+pprice+"')";
													 connection.createStatement().executeUpdate(strQuery222);
													 
													 int rk2=Integer.parseInt(rs2.getString(2));
													 int rk=rk2+1;
													 
													 String query2="update spots set rank="+rk+" where loc='"+loc+"' and user='"+sp+"' ";
					                                 Statement st2=connection.createStatement();
					                                 st2.executeUpdate(query2);    
					
					
																   
%>
     <p align="center" class="style16 style9 style13 style20">You Have Successfully Booked this Spot</p>
     <p>&nbsp;</p>
     <p align="right"><a href="u_view_tourist_spots.jsp" class="style9">Back </a></p>
     <br />
<%
															 }
													
																
											}
								
						
									}
					
					}
					
					else
					{
%>
     <p align="center" class="style16 style17 style9 style14">Account Not Found. Please Create Account First.</p>
     <p align="right"><a href="u_view_tourist_spots.jsp" class="style9">Back </a></p>
     <br />
<%						
						
						
					}
									

					
		
		
		
		connection.close();
	}
	catch(Exception e)
	{
		out.print(e);
	}

%>















		  
		  
		  
		  
		  
		  
         
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User </span>MENU</h2>
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
