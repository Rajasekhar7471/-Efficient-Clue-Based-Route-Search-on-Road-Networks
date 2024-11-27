<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>No.of User Travelled to a Spots</title>
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
.style9 {font-size: 18px; }
.style10 {color: #FFFFFF}
.style11 {font-family: "Times New Roman", Times, serif; font-size: 20px; }
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
          <h2 align="center">View No.of Time the Same User Travelled to Same Tourist Spot</h2>
		  <p>&nbsp;</p>
		  <p align="center"><a href="a_chart21.jsp" class="style11">View in Chart</a></p>
		  <p>&nbsp;</p>
		  
		  







<table width="610" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="80" height="54" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style13 style5 style12 style7"><strong>Id  </strong></div></td>
		   <td width="259" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style13 style5 style12 style7"><strong>User</strong></div></td>
		   <td width="259" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style13 style5 style12 style7"><strong>Location<br />(From to To)</strong></div></td>           
		   <td width="263" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style13 style5 style12 style7"><strong>No. Of Time Travelled</strong></div></td>
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0,count=0;;

 try 
	{		
      	                    String query="select distinct user from spot_book "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 //i=rs.getInt(1);
								s1=rs.getString(1);//name
								
								
								String query2="select distinct loc from spot_book where user='"+s1+"' "; 
						   	    Statement st2=connection.createStatement();
						     	ResultSet rs2=st2.executeQuery(query2);
					   		    while ( rs2.next() ) 
			                    {
								  s2=rs2.getString(1);//name
								  
								  String query3="select * from spot_book where user='"+s1+"' and loc='"+s2+"' "; 
						   	      Statement st3=connection.createStatement();
						     	  ResultSet rs3=st3.executeQuery(query3);
					   		      while ( rs3.next() ) 
			                      {
								   count++;
								  }
								
		
		
		%>
                    
                    <tr>
                      <td height="37" bgcolor="#CC0000"><div align="center" class="style13 style5 style6 style11 style10"><%=j%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style13 style5 style6 style11 style10"><a href="a_user_profile.jsp?user=<%=s1%>&type=<%="five"%>"><%=s1%></a></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style13 style5 style6 style11 style10"><%=s2%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style13 style5 style6 style11 style10"><%=count%></div></td>
	      </tr>
					  
        <%
		
	    j=j+1;
	  count=0;}}
	  
	      


		  
connection.close();
}
         
catch(Exception e)
{
out.println(e.getMessage());
}
%>
        </table>













		  
		  
		  
		  
		  
<p>&nbsp;</p>
<p align="right"><a href="a_main.jsp" class="style9">Back</a></p>		  
		  
         
          
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
