<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Mini Statement</title>
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
.style5 {font-family: "Times New Roman", Times, serif}
.style9 {font-size: 18px; }
.style10 {font-size: 20px}
.style11 {color: #0000FF}
.style12 {color: #000000}
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
          <h2 align="center">My MiniStatements</h2>
		  <p>&nbsp;</p>
		  
		  







<table width="545" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
            <tr>
              <td width="62" height="37" bgcolor="#9eb8dd"><div align="center" class="style21 style25 style15 style16 style18 style5 style10 style11">Id</div></td>
              <td width="179" bgcolor="#9eb8dd"><div align="center" class="style26 style15 style16 style18 style5 style10 style11">Purpose</div></td>
		      <td width="145" bgcolor="#9eb8dd"><div align="center" class="style26 style15 style16 style18 style5 style10 style11">Date</div></td>
		      <td width="149" bgcolor="#9eb8dd"><div align="center" class="style26 style15 style16 style18 style5 style10 style11">Price</div></td>
			</tr>
			   
 <%@ include file="connect.jsp" %>
 <%@ page import="java.sql.*"%>		
 <%@ page import="org.bouncycastle.util.encoders.Base64"%>
 <%	  
			  
    String user=(String)application.getAttribute("user");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

try 
{
	
      		String query="select * from transaction where user='"+user+"'"; 
            Statement st=connection.createStatement();
            ResultSet rs=st.executeQuery(query);
	        while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);//task
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		%>
            
            <tr>
              <td height="52" bgcolor="#00FFFF"><div align="center" class="style25 style15 style16 style18 style13 style5 style10 style12"><%=j%></div></td>
              <td height="52" bgcolor="#00FFFF"><div align="center" class="style25 style15 style16 style18 style13 style5 style10 style12"><%=s4%></div></td>
			   <td height="52" bgcolor="#00FFFF"><div align="center" class="style25 style15 style16 style18 style13 style5 style10 style12"><%=s5%></div></td>
			   <td height="52" bgcolor="#00FFFF"><div align="center" class="style25 style15 style16 style18 style13 style5 style10 style12"><%=s6%></div></td>
		  </tr>
			 
			   <%	
			   
			
	  j=j+1;}

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>		  















		  
		  
		  
		  
		  
<p>&nbsp;</p>
<p align="right"><a href="u_accounts.jsp" class="style9">Back</a></p>		  
		  
         
          
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
