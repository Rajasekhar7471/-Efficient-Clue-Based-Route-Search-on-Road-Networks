<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Spot Details</title>
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
.style5 {font-size: 18px}
.style6 {font-family: "Times New Roman", Times, serif}
.style7 {font-size: 20px}
.style11 {font-size: 20px; font-family: "Times New Roman", Times, serif; }
.style16 {color: #000000}
.style20 {font-family: "Times New Roman", Times, serif; font-size: 25px; }
.style21 {color: #FF0000}
.style22 {font-size: 15px; }
.style23 {
	font-family: "Times New Roman", Times, serif;
	font-size: 15px;
	color: #000000;
}
.style24 {color: #FF00FF}
.style25 {color: #0000FF}
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
          <h2 align="center">View Spot Details</h2>
		  <p>&nbsp;</p>
		  
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25;
	String ss1="",ss2="",ss3="",ss4="",ss5="",ss6="",ss7="",ss8,ss9="",ss10,ss11,ss12,ss13,ss14,ss15,ss16,ss17,ss18,ss19,ss20,ss21,ss22,ss23,ss24,ss25;
	int ii=0;
	int i=0,j=1,k=0;
	String user=(String)application.getAttribute("sp");
	String loc=request.getParameter("loc");
	String str="";

 try 
	{		
      	                    String query="select * from spots where loc='"+loc+"' and user='"+user+"' "; 
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
								s9=rs.getString(9);
								s10=rs.getString(10);
								s11=rs.getString(11);
								s12=rs.getString(12);//
								s13=rs.getString(13);//sta
								s14=rs.getString(14);
								s15=rs.getString(15);//add
								/*s16=rs.getString(16);//dob
								s17=rs.getString(17);
								s18=rs.getString(18);
								s19=rs.getString(19);
								s20=rs.getString(20);
								s21=rs.getString(21);//
								s22=rs.getString(22);//sta
								s23=rs.getString(23);//
								s24=rs.getString(24);//sta
								s25=rs.getString(25);//sta
								*/
					String[] splitstr = s3.split("to");
					
					String lfrom = splitstr[0];
					String lto = splitstr[1];
					
					            String query2 = "select * from spot_details where loc='"+loc+"' and user='"+user+"' "; 
						    	Statement st2 = connection.createStatement();
						    	ResultSet rs2 = st2.executeQuery(query2);
					   	    	if ( rs2.next() ) 
			                    {
								 ii=rs2.getInt(1);
								ss2=rs2.getString(2);//
								ss3=rs2.getString(3);//
								ss4=rs2.getString(4);//enc_s1 desc
								ss5=rs2.getString(5);
								ss6=rs2.getString(6);//
								ss7=rs2.getString(7);//enc h1 desc
								ss8=rs2.getString(8);
								ss9=rs2.getString(9);
								ss10=rs2.getString(10);//enc_s2 desc
								ss11=rs2.getString(11);
								ss12=rs2.getString(12);//
								ss13=rs2.getString(13);//enc_h2 desc
								ss14=rs2.getString(14);
								ss15=rs2.getString(15);//
								ss16=rs2.getString(16);//enc_s3 desc
								ss17=rs2.getString(17);
								ss18=rs2.getString(18);
								ss19=rs2.getString(19);//enc_h3 desc
								ss20=rs2.getString(20);
								ss21=rs2.getString(21);//
					
					                            String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						                        String decryss4 = new String(Base64.decode(ss4.getBytes()));
												String decryss7 = new String(Base64.decode(ss7.getBytes()));
												
												String decryss10 = new String(Base64.decode(ss10.getBytes()));
												String decryss13 = new String(Base64.decode(ss13.getBytes()));
												
												String decryss16 = new String(Base64.decode(ss16.getBytes()));
					                            String decryss19 = new String(Base64.decode(ss19.getBytes()));
					
								
	  
%>		  
<p align="center" class="style7"><span class="style20"><span class="style16">For the Location(From to To) :</span> <span class="style21"><%=loc%></span> </span></p>
<p align="center"><a href="s_all_spot_details2.jsp?lfrom=<%=lfrom%>&lto=<%=lto%>" class="style7">View Route Path</a></p>
	  

<table width="573" border="0" align="center">
    
    <tr>
      <td colspan="2"><span class="style6 style11 style12 style34"><span class="style11 style6 style24"><strong>Direction '1' Details</strong></span></span></td>
      <td height="58">&nbsp;</td>
    </tr>
    <tr>
      <td width="154">&nbsp;</td>
      <td width="158" height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Direction(1) Name </strong></span></td>
      <td width="247" bgcolor="#669966"><span class="style23"><%=s4%></span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Tourist Spot Name </strong></span></td>
      <td width="247" bgcolor="#669966"><span class="style23"><%=s5%></span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Spot Description </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d13" cols="30" rows="5" readonly="readonly"><%=decryss4%></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Famous For </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d14" cols="30" rows="5" readonly="readonly"><%=ss5%></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Spot Image </strong></span></td>
      <td width="247" bgcolor="#669966"><input  name="image" type="image" style="width:110px; height:90px;" src="spot_Pic1.jsp?id=<%=i%>" /></td>
    </tr>
    <tr>
      <td width="154">&nbsp;</td>
      <td width="158" height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Hotel Name </strong></span></td>
      <td width="247" bgcolor="#669966"><span class="style23"><%=ss6%></span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Hotel Description </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d16" cols="30" rows="5" readonly="readonly"><%=decryss7%></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Available Items </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d17" cols="30" rows="5" readonly="readonly"><%=ss8%></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Address </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d18" cols="30" rows="5" readonly="readonly"><%=ss9%></textarea></td>
    </tr>
	
	<tr>
      <td colspan="2"><span class="style6 style11 style12 style34"><span class="style11 style6 style24"><strong>Direction '2' Details</strong></span></span></td>
      <td height="58">&nbsp;</td>
    </tr>
    <tr>
      <td width="154">&nbsp;</td>
      <td width="158" height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Direction(2) Name </strong></span></td>
      <td width="247" bgcolor="#669966"><span class="style23"><%=s7%></span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Tourist Spot Name </strong></span></td>
      <td width="247" bgcolor="#669966"><span class="style23"><%=s8%></span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Spot Description </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d13" cols="30" rows="5" readonly="readonly"><%=decryss10%></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Famous For </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d14" cols="30" rows="5" readonly="readonly"><%=ss11%></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Spot Image </strong></span></td>
      <td width="247" bgcolor="#669966"><input  name="image" type="image" style="width:110px; height:90px;" src="spot_Pic2.jsp?id=<%=i%>" /></td>
    </tr>
    <tr>
      <td width="154">&nbsp;</td>
      <td width="158" height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Hotel Name </strong></span></td>
      <td width="247" bgcolor="#669966"><span class="style23"><%=ss12%></span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Hotel Description </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d16" cols="30" rows="5" readonly="readonly"><%=decryss13%></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Available Items </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d17" cols="30" rows="5" readonly="readonly"><%=ss14%></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Address </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d18" cols="30" rows="5" readonly="readonly"><%=ss15%></textarea></td>
    </tr>
    
	<tr>
      <td colspan="2"><span class="style6 style11 style12 style34"><span class="style11 style6 style24"><strong>Direction '3' Details</strong></span></span></td>
      <td height="58">&nbsp;</td>
    </tr>
    <tr>
      <td width="154">&nbsp;</td>
      <td width="158" height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Direction(3) Name </strong></span></td>
      <td width="247" bgcolor="#669966"><span class="style23"><%=s10%></span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Tourist Spot Name </strong></span></td>
      <td width="247" bgcolor="#669966"><span class="style23"><%=s11%></span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Spot Description </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d13" cols="30" rows="5" readonly="readonly"><%=decryss16%></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Famous For </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d14" cols="30" rows="5" readonly="readonly"><%=ss17%></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Spot Image </strong></span></td>
      <td width="247" bgcolor="#669966"><input  name="image" type="image" style="width:110px; height:90px;" src="spot_Pic3.jsp?id=<%=i%>" /></td>
    </tr>
    <tr>
      <td width="154">&nbsp;</td>
      <td width="158" height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Hotel Name </strong></span></td>
      <td width="247" bgcolor="#669966"><span class="style23"><%=ss18%></span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Hotel Description </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d16" cols="30" rows="5" readonly="readonly"><%=decryss19%></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Available Items </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d17" cols="30" rows="5" readonly="readonly"><%=ss20%></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td height="40" bgcolor="#CCCC00"><span class="style38 style17 style6 style20 style22 style25"><strong>Address </strong></span></td>
      <td width="247" bgcolor="#669966"><textarea id="s" name="d18" cols="30" rows="5" readonly="readonly"><%=ss21%></textarea></td>
    </tr>
	
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2" width="158" height="40" bgcolor="#99CCFF"><span class="style38 style17 style25 style22 style6"><strong>Journey Distance(in KM) </strong></span></td>
      <td width="247" bgcolor="#99CCFF"><span class="style23"><%=s15%>km</span></td>
    </tr>
    
	<tr>
      <td colspan="2" width="158" height="40" bgcolor="#99CCFF"><span class="style38 style17 style25 style22 style6"><strong>Rank </strong></span></td>
      <td width="247" bgcolor="#99CCFF"><span class="style23"><%=s14%></span></td>
    </tr>
    <tr>
      <td colspan="2" height="40" bgcolor="#99CCFF"><span class="style38 style17 style25 style22 style6"><strong>Ratings </strong></span></td>
      <td width="247" bgcolor="#99CCFF"><span class="style14">
			            <%
		int rank=Integer.parseInt(s14);
					 
    if(rank==3)
    {
    	%>
                        <input  name="image2" type="image" src="Gallery/1.png" width="30" height="30" />
                        <%
    }
    if(rank>3 && rank<=6)
    {

    	%>
                        <input  name="image2" type="image" src="Gallery/2.png" width="80" height="30" />
                        <%
    }
    if(rank>6 && rank<=9)
    {
    	%>
                        <input  name="image2" type="image" src="Gallery/3.png" width="100" height="30" />
                        <%
    }
    if(rank>9 && rank<=12)
    {
    	%>
                        <input  name="image2" type="image" src="Gallery/4.png" width="120" height="30" />
                        <%
    }
    if(rank>12 && rank<=15)
    {
    	%>
                        <input  name="image2" type="image" src="Gallery/5.png" width="140" height="30" />
                        <%
    }
    if(rank>15)
    {
    	%>
                        <input  name="image2" type="image" src="Gallery/6.png" width="170" height="30" />
                        <%
    }
    %>                      
                      </span></td>
    </tr>
  </table>



<%
}
}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>















<p>&nbsp;</p>
<p align="right"><a href="s_all_spot_details.jsp" class="style5">Back</a></p>
		  
		  
		  
          
          
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
