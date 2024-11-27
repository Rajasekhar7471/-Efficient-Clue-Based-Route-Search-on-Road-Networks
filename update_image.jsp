
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

String loc = request.getParameter("loc");	
					
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
					//String loc=null;
					String lat=null;
					String lon=null;
					FileInputStream fs=null;
					File file1 = null;
					
					
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("loc"))
							{
								loc=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("pic1"))
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
				
						
                        
					   
						PreparedStatement ps=connection.prepareStatement("update spots set image2=? where loc='"+loc+"' ");
						ps.setBinaryStream(1, (InputStream)fs, (int)(file1.length()));
							
						int x=ps.executeUpdate();
						if(x>0)
						{
					%>
					<p>Image Added Successfully</p>
					<p><a href="s_all_spot_details1.jsp?loc=<%=loc%>">Back</a></p>
					<%
						}
					
					
						
}
catch (Exception e) 
{
out.println("Please Select Image");
%>
<p><a href="s_all_spot_details1.jsp?loc=<%=loc%>">Back</a></p>
<%
}
%>  
	






          


















