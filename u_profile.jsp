<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>My Profile</title>
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
          <h2 align="center">My Profile</h2>
		  <p>&nbsp;</p>
		  
		  
		  
<table width="615" height="344" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%
						
						String user=(String)application.getAttribute("user");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14;
						int i=0;
						try 
						{
						   	String query="select * from user where name='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//email
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);//loc
								s11=rs.getString(11);//image
								s12=rs.getString(12);
								
								
								
								
								
%>
            <tr>
              <td width="200" rowspan="5" ><div>
                  <input  name="image" type="image" src="u_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;" />
              </a></div></td>
            </tr>
            <tr>
              <td  width="167" height="40" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style5 style6 style7">
                <div align="left">Name</div>
              </div></td>
              <td  width="240" height="40" valign="middle" bgcolor="#CC3300" style="color:#000000;"><div align="left" class="style10 style5 style6 style8">
                  <%out.println(s2);%>
              </div></td>
            </tr>
            <tr>
              <td  width="167" height="40" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style5 style6 style7">
                <div align="left">E-Mail</div>
              </div></td>
              <td  width="240" height="40" valign="middle" bgcolor="#CC3300"><div align="left" class="style12 style5 style6 style8">
                  <%out.println(s4);%>
              </div></td>
            </tr>
            <tr>
              <td  width="167" height="40" align="left" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style5 style6 style7">
                <div align="left">Mobile</div>
              </div></td>
              <td  width="240" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style12 style5 style6 style8">
                  <%out.println(s5);%>
              </div></td>
            </tr>
            <tr>
              <td  width="167" height="40" align="left" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style5 style6 style7">
                <div align="left">DOB</div>
              </div></td>
              <td  width="240" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style12 style5 style6 style8">
                  <%out.println(s6);%>
              </div></td>
            </tr>
            <tr>
			<td></td>
              <td  width="167" height="40" align="left" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style5 style6 style7">
                <div align="left">Gender</div>
              </div></td>
              <td  width="240" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style12 style5 style6 style8">
                  <%out.println(s7);%>
              </div></td>
            </tr>
            <tr>
              <td></td>
              <td  width="167" height="40" align="left" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style5 style6 style7">
                <div align="left">Address</div>
              </div></td>
              <td  width="240" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style12 style5 style6 style8">
                  <%out.println(s8);%>
              </div></td>
            </tr>
			
			<tr>
              <td></td>
              <td  width="167" height="40" align="left" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style5 style6 style7">
                <div align="left">Location</div>
              </div></td>
              <td  width="240" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style12 style5 style6 style8">
                  <%out.println(s9);%>
              </div></td>
            </tr>
			
            <tr>
              <td></td>
              <td  width="167" height="40" align="left" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style5 style6 style7">
                <div align="left">Status</div>
              </div></td>
              <td  width="240" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style12 style5 style6 style8">
                  <%out.println(s12);%>
              </div></td>
            </tr>
            
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>		  
		  
		  
		  
<p>&nbsp;</p>
<p align="right"><a href="u_main.jsp" class="style9">Back</a></p>		  
		  
		  
		  
		  
		  
          
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
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
