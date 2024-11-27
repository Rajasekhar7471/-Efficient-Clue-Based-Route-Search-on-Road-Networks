<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Vehicle Details</title>
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


var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter Vehicle Name");
document.s.userid.focus();
return false;
}

var na9=document.s.vtype.value;
if(na9=="--------------Select--------------")

{
alert("Please Select Vehicle Type");
document.s.vtype.focus();
return false;
}

var na4=document.s.price.value;
if(na4=="")

{
alert("Please Enter Price Per KM");
document.s.price.focus();
return false;
}


}
</script>

<style type="text/css">
<!--
.style6 {font-family: "Times New Roman", Times, serif}
.style8 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #000000; }
.style14 {font-size: 20px}
.style15 {font-size: 18px; }
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
          <li class="active"><a href="v_login.jsp"><span>Vehicle SP</span></a></li>
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
          <h2 align="center">Add Your Vehicle Details</h2>
		  <p>&nbsp;</p>

<%

String email=(String)application.getAttribute("email");
String mob=(String)application.getAttribute("mob");
String addr=(String)application.getAttribute("addr");

%>



<form name="s" action="v_add_vehicle1.jsp" method="post" onSubmit="return valid()"  ons target="_top">
		  
			
                  <span class="style9 style14 style20 style5 style6  style7 style8 style1">
                  <label for="name">Vehicle Name (required)<br />
                  </label>
                  </span>
                  <p class="style14 style5 style6  style7 style8 style1"><input id="name" name="userid" class="text" />
                  </p>
				  
				  <span class="style9 style14 style20 style5 style6  style7 style8 style1">
                  <label for="vtype">Vehicle Type (required)<br />
                  </label>
                  </span>
                  <p class="style9 style20 style5 style6  style7 style8 style1">
                    <select id="s" name="vtype" class="text" style="width:170px">
                      <option>--------------Select--------------</option>
                      <option>AC</option>
                      <option>Non-AC</option>
                    </select>
                  </p>
				  
				  <span class="style19 style9 style14 style23 style5 style6  style7 style8 style1">
                  <label for="price">Price per KM (required)<br />
                  </label>
                  </span>
                  <p class="style9 style20 style5 style6  style7 style8 style1">
                    <input id="s" name="price" class="text" />
                  </p>
				  
				  <span class="style9 style14 style20 style5 style6  style7 style8 style1">
                  <label for="email">Email id (required)<br />
                  </label>
                  </span>
                  <p class="style14 style5 style6  style7 style8 style1">
                    <input id="email" name="email" value="<%=email%>" />
                  </p>
				  
                  <span class="style9 style14 style20 style5 style6  style7 style8 style1">
                  <label for="mobile">Mobile Number (required)<br />
                  </label>
                  </span>
                  <p class="style14 style5 style6  style7 style8 style1">
                    <input id="mobile" name="mobile" value="<%=mob%>" />
                  </p>
				  
                  <span class="style14 style5 style6  style7 style8 style1">
                  <label for="address">Your Address<br />
                  </label>
                  </span>
                  <p class="style14 style5 style6  style7 style8 style1">
                    <textarea name="address" cols="20" rows="5" id="s"><%=addr%></textarea>
                  </p>
				  
 				  
                  <p class="style15">
                    <input name="submit" type="submit" value="Add Vehicle" />
                  </p>
</form>




<p>&nbsp;</p>
<p align="right"><a href="v_main.jsp" class="style15">Back</a></p>
		  
		  
		  
		  
		  
          
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Vehicle SP</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="v_main.jsp"><span>Vehicle SP Main</span></a></li>
            <li><a href="v_login.jsp"><span>Log Out</span></a></li>
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
