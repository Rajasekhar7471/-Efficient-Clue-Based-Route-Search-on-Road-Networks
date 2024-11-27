<title>Spot Recommend Status</title>

<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
					
					
			
    String loc=request.getParameter("loc");
	String sp=request.getParameter("sp");
	String rto=request.getParameter("rto");
	
	String user=(String)application.getAttribute("user");
					
					
try {
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						Date now = new Date();
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						
						String str = "select * from recommend where rfrom='"+user+"' and rto='"+rto+"' and loc='"+loc+"' and sp='"+sp+"' ";
						Statement st = connection.createStatement();
						ResultSet rs = st.executeQuery(str);
						if(rs.next())
						{
						%>
						<p align="left">You Already Recommended this Spot to <%=rto%></p>
	                    <p align="left"><a href="u_booked_spot.jsp">Back</a></p>
						<%
						
						}
			 			else
						{
						
						PreparedStatement ps=connection.prepareStatement("insert into recommend (loc,sp,rfrom,rto,dt) values(?,?,?,?,?)");
						ps.setString(1,loc);
						ps.setString(2,sp);	
						ps.setString(3,user);	
						ps.setString(4,rto);
						ps.setString(5,dt);
					
						int x=ps.executeUpdate();
						if(x>0)
						{
						
						  
							
							
							
			%> 
		<p align="left">Recommend Successfully</p>
	    <p align="left"><a href="u_booked_spot.jsp">Back</a></p>
			<%
					   }
					   
					   }
					   
					   
}
catch (Exception e) 
{
out.println(e.getMessage());
e.printStackTrace();
}
%>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  