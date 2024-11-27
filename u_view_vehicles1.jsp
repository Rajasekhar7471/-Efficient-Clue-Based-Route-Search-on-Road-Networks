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



}
</script>


<style type="text/css">
<!--
.style9 {font-size: 18px; }
.style11 {font-size: 25px; font-family: "Times New Roman", Times, serif; }
.style15 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #0000FF; }
.style20 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #000000; }
.style21 {
	font-size: 25px;
	font-family: "Times New Roman", Times, serif;
	color: #000000;
	font-weight: bold;
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
          <h2 align="center">View Vehicle Details</h2>
		  <p>&nbsp;</p>
		  
		  

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25;
	int i=0,j=1,k=0;
	String user=(String)application.getAttribute("user");
	String vname=request.getParameter("vname");
	String sp=request.getParameter("sp");
	String str="";

 try 
	{		
      	                    String query="select * from vehicles where vname='"+vname+"' and user='"+sp+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() ) 
			                {
								i=rs.getInt(1);
								s2=rs.getString(2);//name
								s3=rs.getString(3);//name
								s4=rs.getString(4);//mail
								s5=rs.getString(5);
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								
					
					
								
	  
%>		  

<table width="532" border="0" align="center">
             
			  			  
          
			 
          <tr>
              <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style15">Vehicle Name </div></td>
              <td width="312" bgcolor="#99CC00"><span class="style20"><%=s3%></span></td>
          </tr>
		  
		  
		  
		  <tr>
              <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style15">Vehicle Type </div></td>
              <td width="312" bgcolor="#99CC00"><span class="style20"><%=s4%></span></td>
          </tr>
		  
		  <tr>
              <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style15">Vehicle Price(Per KM) </div></td>
              <td width="312" bgcolor="#99CC00"><span class="style20"><%=s5%> Rs/km</span></td>
          </tr>
		  
		  <tr>
              <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style15">Service Provider </div></td>
              <td width="312" bgcolor="#99CC00"><span class="style20"><%=s2%></span></td>
          </tr>
		  
		  <tr>
              <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style15">SP Email </div></td>
              <td width="312" bgcolor="#99CC00"><span class="style20"><%=s6%></span></td>
          </tr>
		  
		  <tr>
              <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style15">SP Mobile No. </div></td>
              <td width="312" bgcolor="#99CC00"><span class="style20"><%=s7%></span></td>
          </tr>
		  
		  <tr>
              <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style15">SP Address </div></td>
              <td width="312" bgcolor="#99CC00"><textarea cols="30" rows="3" readonly="readonly"> <%=s8%></textarea></td>
          </tr>
			  
          
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center" class="style21">Provide Your Details and Book Vehicle</p>
<p>&nbsp;</p>
<% 
   String email=(String)application.getAttribute("email");
   String mob=(String)application.getAttribute("mob");
   String loc=(String)application.getAttribute("loc");
   String addr=(String)application.getAttribute("addr");
%>

<form name="s" action="u_view_vehicles2.jsp" method="post" onSubmit="return valid()"  ons target="_top"> 
          
            
						
                        <span class="style16 style10 style12 style15">
                        <label for="password">Your Name</label>
                        </span>
                        <p class="style16 style10 style12 style15">
                          <input type="text" id="name" name="name" value="<%=user%>" readonly="readonly" class="text" />
                        </p>
						
                        <span class="style16 style10 style12 style15">
                        <label for="email">Email Id </label>
                        </span>
                        <p class="style16 style10 style12 style15">
                          <input id="email" name="email" value="<%=email%>" readonly="readonly" class="text" />
                        </p>
						
                        <span class="style16 style10 style12 style15">
                        <label for="mobile">Mobile Number</label>
                        </span>
                        <p class="style16 style10 style12 style15">
                          <input id="mobile" name="mobile" value="<%=mob%>" readonly="readonly" class="text" />
                        </p>
						
						<span class="style16 style10 style12 style15">
                        <label for="mobile">Address </label>
                        </span>
                        <p class="style16 style10 style12 style15">
                          <textarea cols="30" rows="3" readonly="readonly"> <%=addr%></textarea>
                        </p>
						
						<span class="style16 style10 style12 style15">
                        <label for="password">Vehicle Name</label>
                        </span>
                        <p class="style16 style10 style12 style15">
                          <input type="text" id="vname" name="vname" value="<%=vname%>" readonly="readonly" class="text" />
                        </p>
						
                        <span class="style16 style10 style12 style15">
                        <label for="email">Service Provider </label>
                        </span>
                        <p class="style16 style10 style12 style15">
                          <input id="sp" name="sp" value="<%=sp%>" readonly="readonly" class="text" />
                        </p>
						
                        <span class="style16 style10 style12 style15">
                        <label for="mobile">Price Per KM (in Rs)</label>
                        </span>
                        <p class="style16 style10 style12 style15">
                          <input id="price" name="price" value="<%=s5%>" readonly="readonly" class="text" />
                        </p>
						
						
						
                        <span class="style16 style10 style12 style15">
                        <label for="address">Your Location</label>
                        </span>
                        <p class="style16 style10 style12">
                          <select name="loc" style="width:230px" >
                  <option>--select--</option>
				  
				  
<%

	String uuu=null;
	
	Statement stmt1=connection.createStatement();
	String strQuery1 = "select distinct loc from spot_book where user='"+user+"' ";
	ResultSet rs1 = stmt1.executeQuery(strQuery1);
	while(rs1.next())
	{
		 loc = rs1.getString(1);
		
		
%>
                  <option> <%=loc%></option>
<%
		
	}
%>
                </select>
                        </p>
                        
                        <p><br />
                            <input name="submit" type="submit" value="Book" />
                        </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
  </form>







<%

}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>





















		  
		  
		  
		  
		  
<p>&nbsp;</p>
<p align="right"><a href="u_view_vehicles.jsp" class="style9">Back</a></p>		  
		  
         
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span><span> </span>MENU</h2>
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
