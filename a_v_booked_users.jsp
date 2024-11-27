<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Vehicle Booked Users</title>
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
.style6 {font-size: 20px}
.style7 {color: #0000FF}
.style8 {color: #FFFFFF}
.style9 {font-size: 18px; }
.style10 {font-family: "Times New Roman", Times, serif; font-size: 20px; }
.style11 {color: #FF0000}
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
          <li class="active"><a href="a_login.jsp"><span>Admin</span></a></li>
          <li><a href="s_login.jsp"><span>Service Provider</span></a></li>
          <li><a href="v_login.jsp"><span>Vehicle SP</span></a></li>
          <li><a href="u_login.jsp"><span>End User</span></a></li>
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
          <h2 align="center">Vehicle Booked User Details</h2>
		  <p>&nbsp;</p>
		  
<%
    String vname = request.getParameter("vname");
	String sp = request.getParameter("sp");
%>		  

<p class="style10"><span class="style7">Vehicle Name :</span><span class="style11"><%=vname%></span> </p>
<p class="style10"><span class="style7">Service Provider :</span><span class="style11"><%=sp%></span> </p>
<table width="676" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="51" height="51" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style12 style13 style5 style7"><strong>Id  </strong></div></td>
		  
           <td width="146" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style12 style13 style5 style7"><strong>Booked User</strong></div></td>
		   <td width="182" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style12 style13 style5 style7"><strong>Locations(Spot) </strong></div></td>
		   
           <td width="160" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style12 style13 style5 style7"><strong>Booking Price(Rs)</strong></div></td>
		   <td width="125" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style12 style13 style5 style7"><strong>Date</strong></div></td>
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;
	

 try 
	{		
      	                    String query="select * from v_book where sp='"+sp+"' and vname='"+vname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s3=rs.getString(3);//user
								s4=rs.getString(4);//mail
								s5=rs.getString(5);
								s6=rs.getString(6);//mail
								s7=rs.getString(7);
								
		
		%>
                    
                    <tr>
                      <td height="39" bgcolor="#CC0000"><div align="center" class="style13 style12 style5 style9 style8"><%=j%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style13 style12 style5 style9 style8"><a href="a_user_profile.jsp?user=<%=s3%>&type=<%="three"%>&vname=<%=vname%>&sp=<%=sp%>"><%=s3%></a></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style13 style12 style5 style9 style8"><%=s2%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style13 style12 style5 style9 style8"><%=s5%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style13 style12 style5 style9 style8"><%=s4%></div></td>
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
<p align="right"><a href="a_all_vehicles.jsp" class="style9">Back</a></p>		  
		  
         
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="a_main.jsp"><span>Admin Main</span></a></li>
            <li><a href="a_login.jsp"><span>Log Out</span></a></li>
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
