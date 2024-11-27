<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Spot Details</title>
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
.style6 {font-size: 20px}
.style7 {color: #0000FF}
.style9 {font-size: 18px; }
.style10 {font-size: 20px; font-family: "Times New Roman", Times, serif; }
.style11 {font-size: 25px; font-family: "Times New Roman", Times, serif; }
.style13 {font-family: "Times New Roman", Times, serif}
.style14 {color: #000000}
.style15 {font-size: 20px; font-family: "Times New Roman", Times, serif; color: #000000; }
.style16 {font-size: 20px; color: #000000; }
.style18 {font-size: 25px}
.style19 {color: #FF0000}
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
	int i=0,j=1,k=0;
	String user=(String)application.getAttribute("user");
	String loc=request.getParameter("loc");
	String sp=request.getParameter("sp");
	String str="";

 try 
	{		
      	                    String query="select * from spots where loc='"+loc+"' and user='"+sp+"' "; 
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
								s16=rs.getString(16);//dob
								s17=rs.getString(17);
								s18=rs.getString(18);
								s19=rs.getString(19);
								s20=rs.getString(20);
								s21=rs.getString(21);//
								s22=rs.getString(22);//sta
								s23=rs.getString(23);//
								s24=rs.getString(24);//sta
								s25=rs.getString(25);//sta
								
					String[] splitstr = s3.split("to");
					
					String lfrom = splitstr[0];
					String lto = splitstr[1];
					
					                            String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						   
						                        String decrys5 = new String(Base64.decode(s5.getBytes()));
												String decrys9 = new String(Base64.decode(s9.getBytes()));
												
												String decrys13 = new String(Base64.decode(s13.getBytes()));
												String decrys17 = new String(Base64.decode(s17.getBytes()));
												String decrys21 = new String(Base64.decode(s21.getBytes()));
					
					
								
	  
%>		  
<p align="center" class="style10 style18"><span class="style7">For the Location(From to To) :</span></span> <span class="style19"><%=loc%></span> </p>

<table width="532" border="0" align="center">
             
			  			  
          
			 
          <tr>
              <td width="195" height="46" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Hotel(1) Name </div></td>
               <td width="312" bgcolor="#99CC00"><span class="style15"><%=s4%></span></td>
          </tr>
			  
          <tr>
              <td width="195" height="48" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Hotel(1) Description </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15">
                  <textarea id="s" name="desc2" cols="30" readonly="readonly"><%=decrys5%></textarea>
                </span></td>
          </tr>
			  
          <tr>
              <td width="195" height="48" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Hotel(1) Available Items </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15">
                  <textarea id="s" name="desc2" cols="30" readonly="readonly"><%=s6%></textarea>
                </span></td>
          </tr>
			  
          <tr>
              <td width="195" height="48" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Hotel(1) Address </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15">
                  <textarea id="s" name="desc2" cols="30" readonly="readonly"><%=s7%></textarea>
                </span></td>
          </tr>
			  
			  <tr>
			     <td></td>
				 <td><span class="style14"></span></td>
			  </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Hotel(2) Name </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15"><%=s8%></span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="53" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Hotel(2) Description </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15">
                  <textarea id="s" name="desc2" cols="30" readonly="readonly"><%=decrys9%></textarea>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Hotel(2) Available Items </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15">
                  <textarea id="s" name="desc2" cols="30" readonly="readonly"><%=s10%></textarea>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="48" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Hotel(2) Address </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15">
                  <textarea id="s" name="desc2" cols="30" readonly="readonly"><%=s11%></textarea>
                </span></td>
              </tr>
			  
			  
			  
			  <tr>
			     <td height="15">&nbsp;</td>
				 <td><span class="style14"></span></td>
			  </tr>
			  
			  
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Spot(1) Name </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15"><%=s12%></span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="53" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Spot(1) Description </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15">
                  <textarea id="s" name="desc2" cols="30" readonly="readonly"><%=decrys13%></textarea>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Spot(1) Famous For </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15">
                  <textarea id="s" name="desc2" cols="30" readonly="readonly"><%=s14%></textarea>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Spot(1) Image </div></td>
                <td width="312" bgcolor="#99CC00"><input  name="image" type="image" style="width:110px; height:90px;" src="spot_Pic1.jsp?id=<%=i%>" /></td>
              </tr>
			  
			  <tr>
			     <td></td>
				 <td><span class="style14"></span></td>
			  </tr>
			  
			   <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Spot(2) Name </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15"><%=s16%></span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="53" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Spot(2) Description </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15">
                  <textarea id="s" name="desc2" cols="30" readonly="readonly"><%=decrys17%></textarea>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Spot(2) Famous For </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15">
                  <textarea id="s" name="desc2" cols="30" readonly="readonly"><%=s18%></textarea>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Spot(2) Image </div></td>
				<td width="312" bgcolor="#99CC00"><span class="style16" style="font-family: &quot;Times New Roman&quot;, Times, serif">
			    <input  name="image" type="image" style="width:110px; height:90px;" src="spot_Pic2.jsp?id=<%=i%>" />
			    </td>
              </tr>
			  
			  <tr>
			     <td></td>
				 <td><span class="style14"></span></td>
			  </tr>
			  
			   <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Spot(3) Name </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15"><%=s20%></span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="53" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Spot(3) Description </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15">
                  <textarea id="s" name="desc2" cols="30" readonly="readonly"><%=decrys21%></textarea>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Spot(3) Famous For </div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15">
                  <textarea id="s" name="desc2" cols="30" readonly="readonly"><%=s22%></textarea>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Spot(3) Image </div></td>
				<td width="312" bgcolor="#99CC00"><span class="style16" style="font-family: &quot;Times New Roman&quot;, Times, serif">
			    <input  name="image" type="image" style="width:110px; height:90px;" src="spot_Pic3.jsp?id=<%=i%>" />
                </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Tour Package Price<br />(in Rs)</div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15"><%=s24%></span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Rank</div></td>
                <td width="312" bgcolor="#99CC00"><span class="style15"><%=s25%></span></td>
              </tr>
			  
			  <tr>
                <td width="195" height="51" bgcolor="#CC9900"><div align="left" class="style6 style15 style10 style13 style7">Ratings</div></td>
                <td width="312" bgcolor="#99CC00"><span class="style13 style6 style14">
			            <%
		int rank=Integer.parseInt(s25);
					 
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
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>





















		  
		  
		  
		  
		  
<p>&nbsp;</p>
<p align="right"><a href="u_me_reommended.jsp" class="style9">Back</a></p>		  
		  
         
          
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
