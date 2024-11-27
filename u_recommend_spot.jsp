<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Recommend Spot</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-yanone.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">
function valid()
{
var na3=document.s.rto.value;
if(na3=="--select--")

{
alert("Please Select Recommending User");
document.s.rto.focus();
return false;
}


}
</script>


<style type="text/css">
<!--
.style5 {font-family: "Times New Roman", Times, serif}
.style6 {font-size: 20px}
.style9 {font-size: 18px; }
.style10 {color: #0000FF}
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
          <h2 align="center">Recommend Spot</h2>
		  <p>&nbsp;</p>
		  
		  




<%
    String loc=request.getParameter("loc");
	String sp=request.getParameter("sp");
%>		
 
<form name="s" action="u_recommend_spot1.jsp" method="post" id="form1" onSubmit="return valid()"  ons target="_top">		  
<table width="428" border="0" align="center">
              <tr>
               <td width="215" height="35" bgcolor="#9eb8dd"><div align="center" class="style15 style16 style13 style21 style5 style6 style10">Location </div></td>
               <td width="203" bgcolor="#00FFFF"><span class="style19">
                  <label>
                  <input type="text" name="loc" value="<%=loc%>" readonly="readonly" style="width:175px" />
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
               <td width="215" height="35" bgcolor="#9eb8dd"><div align="center" class="style15 style16 style13 style21 style5 style6 style10">Sercice Provider </div></td>
               <td width="203" bgcolor="#00FFFF"><span class="style19">
                  <label>
                  <input type="text" name="sp" value="<%=sp%>" readonly="readonly" style="width:175px" />
                  </label>
                </span></td>
              </tr>
			  
			  			  
              <tr>
                <td width="215" height="35" bgcolor="#9eb8dd"><div align="center" class="style16 style15 style21 style13 style5 style6 style10">Recommend to </div></td>
                <td bgcolor="#00FFFF"><select name="rto" style="width:175px" >
                  <option>--select--</option>
				  
				  
				  
<%@ include file="connect.jsp" %>
<%
try{

	String uuu=null;
	String uname1 = (String)application.getAttribute("user");
	
	Statement stmt1=connection.createStatement();
	String strQuery1 = "select name from user where name!='"+uname1+"' ";
	ResultSet rs1 = stmt1.executeQuery(strQuery1);
	while(rs1.next())
	{
		String username = rs1.getString(1);
		
		
%>
                  <option> <%=username%></option>
<%
		
	}
%>
                </select></td>
             </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><label>
                  <input type="submit" name="Submit" value="Recommend" />
                </label></td>
              </tr>
</table>
</form>		  

<%
	  
connection.close();
}
         
catch(Exception e)
{
out.println(e.getMessage());
}
%>


















		  
		  
		  
		  
		  
<p>&nbsp;</p>
<p align="right"><a href="u_booked_spot.jsp" class="style9">Back</a></p>		  
		  
         
          
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
