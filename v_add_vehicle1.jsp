<title>Add Vehicle Details</title>

<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.util.Date" %>
<%@ include file="connect.jsp" %>
<%@ page import ="java.security.Key" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="java.math.BigInteger" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
<%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>

<%
String user=(String)application.getAttribute("vsp");

String name=request.getParameter("userid");
String vtype=request.getParameter("vtype");
String price=request.getParameter("price");

String email=request.getParameter("email");
String mob=request.getParameter("mobile");
String addr=request.getParameter("address");
%>		



<%
					
  try 
  {
                        String query1="select * from vehicles where vname='"+name+"' and user='"+user+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
					    if ( rs1.next() )
					   {
					   		
								out.println("You Have Already Added This Vehicle");							
							%>
							<p><a href="v_add_vehicle.jsp">Back</a>  </p>
							<%
					   }
					   else
					   {
					
					
				        PreparedStatement ps=connection.prepareStatement("insert into vehicles(user,vname,vtype,vprice,email,mobile,address) values(?,?,?,?,?,?,?)");
						ps.setString(1,user);
						ps.setString(2,name);
						ps.setString(3,vtype);
						ps.setString(4,price);	
						ps.setString(5,email);
						ps.setString(6,mob);
						ps.setString(7,addr);
												
						int x=ps.executeUpdate();
						if(x>0)
						{
					%>
					<p>You Have Added Your Vehicle Successfully</p>
					<p><a href="v_add_vehicle.jsp">Back</a></p>
					<%
						}
					
					}
					
}
catch(Exception e)
{
out.print(e);
}

					
					
					



%>