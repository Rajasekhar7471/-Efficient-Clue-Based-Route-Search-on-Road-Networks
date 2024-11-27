<title>Registration Status</title>
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


<%
					
  try 
  {
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery/");
					String paramname=null;
					String image=null;
					String com=null;
					String uname=null;     
    				String pass=null;	
					String email=null;
					String mno=null;
					String gen=null;
					String dateOfBirth=null;
					String addr=null;
					String cont=null;
					String state=null;
					String loc=null;
					String lat=null;
					String lon=null;
					FileInputStream fs=null;
					File file1 = null;	
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("userid"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dateOfBirth=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("gender"))
							{
								gen=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("loc"))
							{
								loc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("lat"))
							{
								lat=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("lon"))
							{
								lon=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
							
						
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
														
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
							}		
						}
				
						
						String str = "select * from user where name='"+uname+"' ";
						Statement st = connection.createStatement();
						ResultSet rs = st.executeQuery(str);
						
						if(rs.next())
						{
						%>
						<p>&nbsp;</p>
						<p>User Name Already Exist</p>
						<p><a href="u_register.jsp">Back</a></p>
						<%
						
						}
			 			else
						{
					   
						PreparedStatement ps=connection.prepareStatement("insert into user(name,pass,email,mobile,dob,gender,addr,location,latitude,longitude,status,image) values(?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,email);	
						ps.setString(4,mno);
						ps.setString(5,dateOfBirth);
						ps.setString(6,gen);
						ps.setString(7,addr);
						ps.setString(8,loc);
						ps.setString(9,lat);
						ps.setString(10,lon);
						ps.setString(11,"Waiting");
						ps.setBinaryStream(12, (InputStream)fs, (int)(file1.length()));
							
						if(f == 0)
							ps.setObject(15,null);
					
						
						int x=ps.executeUpdate();
					
					%>
					<p>&nbsp;</p>
					<p>User Registered Successfully</p>
					<p><a href="u_register.jsp">Back</a></p>
					<%
						}
						}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
				%>  
	






          


















