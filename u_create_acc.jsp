<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Create Account</title>
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
var na3=document.s.accno.value;
if(na3=="")

{
alert("Please Enter Account number");
document.s.accno.focus();
return false;
}
else
{

}
var na4=document.s.branch.value;
if(na4=="")

{
alert("Please Enter Branch");
document.s.branch.focus();
return false;
}



var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

if (na6.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.email.focus();
return false;
}

if (na6.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.email.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}


var na8=document.s.location.value;
if(na8=="")

{
alert("Please Enter the Location ");
document.s.location.focus();
return false;
}

var na9=document.s.amount.value;
if(na9=="")

{
alert("Please Enter Amount");
document.s.amount.focus();
return false;
}


}
</script>


<style type="text/css">
<!--
.style5 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #FF0000;
}
.style9 {font-size: 18px; }
.style10 {font-family: "Times New Roman", Times, serif}
.style11 {
	font-size: 20px;
	color: #FF0000;
}
.style12 {
	font-size: 20px;
	color: #0000FF;
}
.style13 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #0000FF;
}
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
          <h2 align="center">Create Account</h2>
		  <p>&nbsp;</p>
		  





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>		  
	  
<%
   String email=(String)application.getAttribute("email");
   String mob=(String)application.getAttribute("mob");
   String loc=(String)application.getAttribute("loc");
   String user=(String)application.getAttribute("user");
   
try {
		
		String sql = "SELECT * FROM account where user='" + user+ "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);

		if (rs.next()==true)
		{
		 %> 
             <p class="style15 style5"> Already You Have Created Your Account. </p>
          <p class="style15 style10 style11">Go back to View The Details </p>
            <%
		}
		else
		{
%>		  
		  <form name="s" action="u_create_acc_ins.jsp" method="post" onSubmit="return valid()"  ons target="_top"> 
          
            <span class="style13 style10 style12">
            <label for="name">Account Number(required)</label>
            </span>
            <p class="style16 style10 style12">
                          <input id="name" name="accno" class="text" />
            </p>
						
                        <span class="style16 style10 style12">
                        <label for="password">Branch (required)</label>
                        </span>
                        <p class="style16 style10 style12">
                          <input type="text" id="branch" name="branch" class="text" />
                        </p>
						
                        <span class="style16 style10 style12">
                        <label for="email">Email Address (required)</label>
                        </span>
                        <p class="style16 style10 style12">
                          <input id="email" name="email" value="<%=email%>" class="text" />
                        </p>
                        <span class="style16 style10 style12">
                        <label for="mobile">Mobile Number (required)</label>
                        </span>
                        <p class="style16 style10 style12">
                          <input id="mobile" name="mobile" value="<%=mob%>" class="text" />
                        </p>
                        <span class="style16 style10 style12">
                        <label for="address">Your Location</label>
                        </span>
                        <p class="style16 style10 style12">
                          <input id="location" name="location" value="<%=loc%>" class="text" />
                        </p>
                        <p class="style16">
                          <span class="style13">
                          <label for="amount">Amount (required)</label>
                          </span> </p>
                        <p>
                          <input id="amount" name="amount" class="text" />
                        </p>
                        <p><br />
                            <input name="submit" type="submit" value="Create Account" />
                        </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
  </form>  
		  
<%		
		}

} 
	catch (Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
%>		  













		  
		  
		  
		  
		  
		  
<p>&nbsp;</p>
<p align="right"><a href="u_accounts.jsp" class="style9">Back</a></p>		  
		  
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> MENU</h2>
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
