<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Directions</title>
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

var na1=document.s.loc.value;
if(na1=="--select--")

{
alert("Please Select Location");
document.s.loc.focus();
return false;
}

var na2=document.s.hotel1.value;
if(na2=="")

{
alert("Please Enter Hotel Name(1)");
document.s.hotel1.focus();
return false;
}

var na3=document.s.desc1.value;
if(na3=="")

{
alert("Please Enter Hotel(1) Description");
document.s.desc1.focus();
return false;
}

var na4=document.s.desc12.value;
if(na4=="")

{
alert("Please Enter Hotel(1) Available Items");
document.s.desc12.focus();
return false;
}

var na5=document.s.addr1.value;
if(na5=="")

{
alert("Please Enter Hotel(1) Address");
document.s.addr1.focus();
return false;
}

var na21=document.s.hotel2.value;
if(na21=="")

{
alert("Please Enter Hotel Name(2)");
document.s.hotel2.focus();
return false;
}

var na31=document.s.desc2.value;
if(na31=="")

{
alert("Please Enter Hotel(2) Description");
document.s.desc2.focus();
return false;
}

var na4=document.s.desc21.value;
if(na4=="")

{
alert("Please Enter Hotel(2) Available Items");
document.s.desc21.focus();
return false;
}

var na51=document.s.addr2.value;
if(na51=="")

{
alert("Please Enter Hotel(2) Address");
document.s.addr2.focus();
return false;
}

var na91=document.s.spot1.value;
if(na91=="")

{
alert("Please Enter Spot(1) Name");
document.s.spot1.focus();
return false;
}
var na92=document.s.sdesc1.value;
if(na92=="")

{
alert("Please Enter Spot(1) Description");
document.s.sdesc1.focus();
return false;
}
var na93=document.s.sdesc11.value;
if(na93=="")

{
alert("Please Enter Spot(1) Famous For");
document.s.sdesc11.focus();
return false;
}
var na94=document.s.pic1.value;
if(na94=="")

{
alert("Please Enter Spot(1) Picture");
document.s.pic1.focus();
return false;
}

var na81=document.s.spot2.value;
if(na81=="")

{
alert("Please Enter Spot(2) Name");
document.s.spot2.focus();
return false;
}
var na82=document.s.sdesc2.value;
if(na82=="")

{
alert("Please Enter Spot(2) Description");
document.s.sdesc2.focus();
return false;
}
var na83=document.s.sdesc21.value;
if(na83=="")

{
alert("Please Enter Spot(2) Famous For");
document.s.sdesc21.focus();
return false;
}

var na71=document.s.spot3.value;
if(na71=="")

{
alert("Please Enter Spot(3) Name");
document.s.spot3.focus();
return false;
}
var na72=document.s.sdesc3.value;
if(na72=="")

{
alert("Please Enter Spot(3) Description");
document.s.sdesc3.focus();
return false;
}
var na73=document.s.sdesc31.value;
if(na73=="")

{
alert("Please Enter Spot(3) Famous For");
document.s.sdesc31.focus();
return false;
}

var na62=document.s.distance.value;
if(na62=="")

{
alert("Please Enter Journey Distance");
document.s.distance.focus();
return false;
}

var na63=document.s.price.value;
if(na63=="")

{
alert("Please Enter Package Price");
document.s.price.focus();
return false;
}




}
</script>

<style type="text/css">
<!--
.style5 {font-size: 18px}
.style6 {font-family: "Times New Roman", Times, serif}
.style7 {color: #0000FF}
.style9 {
	color: #FFFFFF;
	font-size: 24px;
}
.style10 {font-size: 24px}
.style11 {font-size: 20px}
.style13 {font-family: "Times New Roman", Times, serif; color: #000000; }
.style16 {color: #000000}
.style18 {color: #000000; font-size: 12px; }
.style19 {font-size: 12px}
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
          <li class="active"><a href="s_login.jsp"><span>Service Provider</span></a></li>
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
          <h2 align="center">Add Location’s Directions</h2>
		  <p>&nbsp;</p>
		  
		  
		  
<form name="s" action="s_add_dir1.jsp" method="post" id="form1" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">

		  
<table width="517" border="0" align="center">
             
			  			  
          <tr>
            <td width="195" height="57" bgcolor="#993300"><div align="left" class="style10 style16 style6 style15 style21 style13  style9">Select Locations<br />
              <span class="style5">(From and To)</span> </div></td>
            <td bgcolor="#993300"><select name="loc" style="width:230px" >
                  <option>--select--</option>
				  
				  
<%
String lfrom="",lto="";
%>				  
<%@ include file="connect.jsp" %>
<%
try{

	String uuu=null;
	String uname1 = (String)application.getAttribute("sp");
	
	Statement stmt1=connection.createStatement();
	String strQuery1 = "select * from locations where user='"+uname1+"' ";
	ResultSet rs1 = stmt1.executeQuery(strQuery1);
	while(rs1.next())
	{
		 lfrom = rs1.getString(3);
		 lto = rs1.getString(4);
		
		
%>
                  <option> <%=lfrom%> to <%=lto%></option>
<%
		
	}
%>
                </select></td>
          </tr>


			 
          <tr>
               <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Hotel(1) Name </div></td>
               <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <input type="text" name="hotel1" class="text" style="width:230px" />
                  </label>
                </span></td>
          </tr>
			  
          <tr>
               <td width="195" height="48" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Hotel(1) Description </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <textarea id="s" name="desc1" cols="30"></textarea>
                  </label>
                </span></td>
          </tr>
			  
          <tr>
                <td width="195" height="48" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Hotel(1) Available Items </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <textarea id="s" name="desc12" cols="30"></textarea>
                  </label>
                </span></td>
          </tr>
			  
          <tr>
                <td width="195" height="48" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Hotel(1) Address </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <textarea id="s" name="addr1" cols="30"></textarea>
                  </label>
                </span></td>
          </tr>
			  
			  <tr>
			     <td height="5"><span class="style11"></span></td>
				 <td><span class="style10"></span></td>
			  </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Hotel(2) Name </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <input type="text" name="hotel2" class="text" style="width:230px" />
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="53" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Hotel(2) Description </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <textarea id="s" name="desc2" cols="30"></textarea>
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Hotel(2) Available Items </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <textarea id="s" name="desc21" cols="30"></textarea>
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="48" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Hotel(2) Address </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <textarea id="s" name="addr2" cols="30"></textarea>
                  </label>
                </span></td>
              </tr>
			  
			  
			  
			  <tr>
			     <td height="30"><span class="style11"></span></td>
				 <td><span class="style10"></span></td>
			  </tr>
			  
			  
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Spot(1) Name </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <input type="text" name="spot1" class="text" style="width:230px" />
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="53" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Spot(1) Description </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <textarea id="s" name="sdesc1" cols="30"></textarea>
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Spot(1) Famous For </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <textarea id="s" name="sdesc11" cols="30"></textarea>
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Spot(1) Image </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <input type="file" id="pic" name="pic1" class="text" />
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
			     <td height="5"><span class="style11"></span></td>
				 <td><span class="style10"></span></td>
			  </tr>
			  
			   <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Spot(2) Name </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <input type="text" name="spot2" class="text" style="width:230px" />
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="53" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Spot(2) Description </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <textarea id="s" name="sdesc2" cols="30"></textarea>
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Spot(2) Famous For </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <textarea id="s" name="sdesc21" cols="30"></textarea>
                  </label>
                </span></td>
              </tr>
			  
			  
			  
			  <tr>
			     <td height="5"><span class="style11"></span></td>
				 <td><span class="style10"></span></td>
			  </tr>
			  
			   <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Spot(3) Name </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <input type="text" name="spot3" class="text" style="width:230px" />
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="53" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Spot(3) Description </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <textarea id="s" name="sdesc3" cols="30"></textarea>
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Spot(3) Famous For </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <textarea id="s" name="sdesc31" cols="30"></textarea>
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Journey Distance<br />(in KM)</div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <input type="text" name="distance" class="text" style="width:230px" />
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style16 style13 style21 style7 style11">Tour Package Price<br />(in Rs)</div></td>
                <td width="312" bgcolor="#99CC00"><span class="style19">
                  <label>
                  <input type="text" name="price" class="text" style="width:230px" />
                  </label>
                </span></td>
              </tr>
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			 
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><label>
                  <input type="submit" name="Submit" value="Add" />
                  <span class="style18">(Hotel Descriptions and Spot Descriptions will get Encrypted)</span>
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
<p align="right"><a href="s_main.jsp" class="style5">Back</a></p>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
          
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>SP</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="s_main.jsp"><span>SP Main</span></a></li>
            <li><a href="s_login.jsp"><span>Log Out</span></a></li>
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
