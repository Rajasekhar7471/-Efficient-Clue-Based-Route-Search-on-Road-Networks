<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Vehicle Details</title>
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
          <p>&nbsp;</p>
		  <h2 align="center">Vehicle Details</h2>
		  <p align="center">&nbsp;</p>
		  








<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;
	//int id=Integer.parseInt(request.getParameter("id"));
	String vname = request.getParameter("vname");
	String vsp = request.getParameter("vsp");
	String user = request.getParameter("user");

 try 
	{		
      	                    
								String query2="select vtype,vprice from vehicles where user='"+vsp+"' and vname='"+vname+"' "; 
						   	    Statement st2=connection.createStatement();
						   	    ResultSet rs2=st2.executeQuery(query2);
					   		    if ( rs2.next() ) 
			                    {
								  
								  s9=rs2.getString(1);//name
								  s10=rs2.getString(2);//name
								  
					
								
								
								
		
		
		%>
                    
<table width="532" border="0" align="center">
             
			  			  
          
			 
          <tr>
              <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style15 style5 style10 style11">Vehicle Name </div></td>
              <td width="312" bgcolor="#99CC00"><span class="style20 style5 style10 style12"><%=vname%></span></td>
          </tr>
		  
		  
		  
		  <tr>
              <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style15 style5 style10 style11">Vehicle Type </div></td>
              <td width="312" bgcolor="#99CC00"><span class="style20 style5 style10 style12"><%=s9%></span></td>
          </tr>
		  
		  <tr>
              <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style15 style5 style10 style11">Vehicle Price(Per KM) </div></td>
              <td width="312" bgcolor="#99CC00"><span class="style20 style5 style10 style12"><%=s10%> Rs/km</span></td>
          </tr>
		  
		  <tr>
              <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style15 style5 style10 style11">Service Provider </div></td>
              <td width="312" bgcolor="#99CC00"><span class="style20 style5 style10 style12"><%=vsp%></span></td>
          </tr>
</table>
					  
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
<p align="right"><a href="a_tree_spot.jsp?user=<%=user%>" class="style9">Back</a></p>		  
		  
         
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> MENU</h2>
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
