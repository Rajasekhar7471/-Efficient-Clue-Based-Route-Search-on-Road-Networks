<title>Add Spot </title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,c=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0,n = 0,n1 = 0;
					String bin = "";
					
					String loc=null;
					     
        			String hotel1=null;
					String desc1=null;
					String desc12=null;
					String addr1=null;
					
					String hotel2=null;
					String desc2=null;
					String desc21=null;
					String addr2=null;
					
					String spot1=null;
					String sdesc1=null;
					String sdesc11=null;
					//String image1=null;
					
					String spot2=null;
					String sdesc2=null;
					String sdesc21=null;
					//String image2=null;
					
					String spot3=null;
					String sdesc3=null;
					String sdesc31=null;
					//String image3=null;
					
					String user=(String)application.getAttribute("sp");
					
					
					
				
					FileInputStream fs=null,fs2=null,fs3=null;
					File file1 = null,file12 = null,file13 = null;	
					
					try {
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("loc"))
							{
								loc=multi.getParameter(paramname);
							}
							
							
							if(paramname.equalsIgnoreCase("hotel1"))
							{
								hotel1=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("desc1"))
							{
								desc1=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("desc12"))
							{
								desc12=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("addr1"))
							{
								addr1=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("hotel2"))
							{
								hotel2=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("desc2"))
							{
								desc2=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("desc21"))
							{
								desc21=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("addr2"))
							{
								addr2=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("hotel1"))
							{
								hotel1=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("spot1"))
							{
								spot1=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("sdesc1"))
							{
								sdesc1=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("sdesc11"))
							{
								sdesc11=multi.getParameter(paramname);
							}								
							if(paramname.equalsIgnoreCase("pic1"))
							{
								image=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("spot2"))
							{
								spot2=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("sdesc2"))
							{
								sdesc2=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("sdesc21"))
							{
								sdesc21=multi.getParameter(paramname);
							}								
							
							
							if(paramname.equalsIgnoreCase("spot3"))
							{
								spot3=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("sdesc3"))
							{
								sdesc3=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("sdesc31"))
							{
								sdesc31=multi.getParameter(paramname);
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
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) {
									if (i != -1) {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++){
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4){
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						
						
						
						
						
						
						
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						//String as="0";
						//image = image.replace(".", "_b.");
			 			String query1="select * from spots where loc='"+loc+"' and user='"+user+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		
								out.println("You Have Already Added Details For This Spot");							
							%>
							<p><a href="s_add_dir.jsp">Back</a>  </p>
							<%
					   }
					   else
					   {
					
					PreparedStatement ps=connection.prepareStatement("insert into spots(user,loc,hotel1,desc1,desc12,addr1,hotel2,desc2,desc21,addr2,spot1,sdesc1,sdesc11,image1,spot2,sdesc2,sdesc21,spot3,sdesc3,sdesc31) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,user);
						ps.setString(2,loc);
						
						ps.setString(3,hotel1);	
						ps.setString(4,desc1);
						ps.setString(5,desc12);
						ps.setString(6,addr1);
						
						ps.setString(7,hotel2);	
						ps.setString(8,desc2);
						ps.setString(9,desc21);
						ps.setString(10,addr2);
						
						ps.setString(11,spot1);	
						ps.setString(12,sdesc1);
						ps.setString(13,sdesc11);
						ps.setBinaryStream(14, (InputStream)fs, (int)(file1.length()));
						
						ps.setString(15,spot2);	
						ps.setString(16,sdesc2);
						ps.setString(17,sdesc21);
						//ps.setBinaryStream(18, (InputStream)fs2, (int)(file12.length()));
						
						ps.setString(18,spot3);	
						ps.setString(19,sdesc3);
						ps.setString(20,sdesc31);
						//ps.setBinaryStream(22, (InputStream)fs3, (int)(file13.length()));	
						
						if(f == 0)
							ps.setObject(10,null);
						else if(f == 13)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(10,fs1,fs1.available());
						}
					   
						
						int x=ps.executeUpdate();
						if(x>0){
						
													out.println("Spots Added Sucessfully");							
							
			%>
			<p><a href="s_add_dir.jsp">Back</a>   <a href="index.html">Home</a> </p>

			
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
