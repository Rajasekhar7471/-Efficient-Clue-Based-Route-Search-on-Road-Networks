<title>Add Location Status</title>

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
String user=(String)application.getAttribute("sp");

String from=request.getParameter("from");
String to=request.getParameter("to");

%>		



<%
					
  try 
  {
					
				        String query1="select * from locations where lfrom='"+from+"' and lto='"+to+"' and user='"+user+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
					    if ( rs1.next() )
					    {
					   		
								out.println("You Have Already Added This Locations");							
							%>
							<p><a href="s_add_location.jsp">Back</a>  </p>
							<%
					    }
					    else
					    {
						
						
						
						PreparedStatement ps=connection.prepareStatement("insert into locations(user,lfrom,lto) values(?,?,?)");
						ps.setString(1,user);
						ps.setString(2,from);
						ps.setString(3,to);
																		
						int x=ps.executeUpdate();
						if(x>0)
						{
					%>
					<p>Location Added Successfully</p>
					<p><a href="s_add_location.jsp">Back</a></p>
					<%
						}
						
						}
					
					
					
}
catch(Exception e)
{
out.print(e);
}

					
					
					



%>