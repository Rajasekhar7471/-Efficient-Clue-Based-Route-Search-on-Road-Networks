<title>Add Spot </title>
<%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
			<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
			<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
			<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0,n = 0,n1 = 0;
					String bin = "";
					
					String loc=null;
        			String d11=null,d12=null,d13=null,d14=null,d15=null,d16=null,d17=null,d18=null;
        			String d21=null,d22=null,d23=null,d24=null,d25=null,d26=null,d27=null,d28=null;
        			String d31=null,d32=null,d33=null,d34=null,d35=null,d36=null,d37=null,d38=null;
					String distance=null;
					String price=null;
					String img1=null,img2=null,img3=null;
					
				
					FileInputStream fs=null,fs1=null,fs2=null,fs3=null,fs4=null,fs5=null;
					
					File file1 = null, file2 = null,file3 = null,file4=null,file5=null;	
					
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
							
							
							if(paramname.equalsIgnoreCase("d11"))
							{
								d11=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d12"))
							{
								d12=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d13"))
							{
								d13=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d14"))
							{
								d14=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("d15"))
							{
								d15=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("d16"))
							{
								d16=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d17"))
							{
								d17=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d18"))
							{
								d18=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("d21"))
							{
								d21=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d22"))
							{
								d22=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d23"))
							{
								d23=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d24"))
							{
								d24=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("d25"))
							{
								d25=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("d26"))
							{
								d26=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d27"))
							{
								d27=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d28"))
							{
								d28=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("d31"))
							{
								d31=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d32"))
							{
								d32=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d33"))
							{
								d33=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d34"))
							{
								d34=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("d35"))
							{
								d35=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("d36"))
							{
								d36=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d37"))
							{
								d37=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d38"))
							{
								d38=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("price"))
							{
								price=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("distance"))
							{
								distance=multi.getParameter(paramname);
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
										img1 = multi.getFilesystemName(paramname);
							String fPath = context.getRealPath("Gallery\\"+img1);


										file1 = new File(fPath);


										fs = new FileInputStream(file1);

										list.add(fs);


										if (files.hasMoreElements()) 
										{
											paramname = (String) files.nextElement();
											
											if(paramname != null)
											{
													f = 1;
													img2 = multi.getFilesystemName(paramname);
													String fPath1 = context.getRealPath("Gallery\\"+img2);
													file2 = new File(fPath1);
													fs2 = new FileInputStream(file2);
													list.add(fs2);
													
													if (files.hasMoreElements()) 
													{
														paramname = (String) files.nextElement();
														
														if(paramname != null)
														{
																f = 1;
																img3 = multi.getFilesystemName(paramname);
																String fPath2 = context.getRealPath("Gallery\\"+img3);
																file3 = new File(fPath2);
																fs3 = new FileInputStream(file3);
																list.add(fs3);
																

														}		
													}
											}
										}
								}
						}
						
						
						
						
						
						
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						//String as="0";
						//image = image.replace(".", "_b.");
						
					String user = (String)application.getAttribute("sp");
						
			 			String query1="select * from spots where loc='"+loc+"' and user='"+user+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
					    if ( rs1.next() )
					    {
					   		
								out.println("You Have Already Added Details For This Location");							
							%>
							<p><a href="s_add_dir.jsp">Back</a>  </p>
							<%
					    }
					   else
					   {
					
				String keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			
				String encd13 = new String(Base64.encode(d13.getBytes()));
				String encd16 = new String(Base64.encode(d16.getBytes()));
				
				String encd23 = new String(Base64.encode(d23.getBytes()));
				String encd26 = new String(Base64.encode(d26.getBytes()));
				
				String encd33 = new String(Base64.encode(d33.getBytes()));
				String encd36 = new String(Base64.encode(d36.getBytes()));
					   
				String rank="0";
				PreparedStatement ps=connection.prepareStatement("insert into spots(user,loc,dir1,spot1,pic1,dir2,spot2,pic2,dir3,spot3,pic3,distance,price,rank) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,user);
						ps.setString(2,loc);
						ps.setString(3,d11);
						ps.setString(4,d12);
						ps.setBinaryStream(5, (InputStream)fs, (int)(file1.length()));	
						ps.setString(6,d21);
						ps.setString(7,d22);
						ps.setBinaryStream(8, (InputStream)fs2, (int)(file2.length()));	
						ps.setString(9,d31);
						ps.setString(10,d32);
						ps.setBinaryStream(11, (InputStream)fs3, (int)(file3.length()));	
						ps.setString(12,distance);
						ps.setString(13,price);
						ps.setString(14,rank);	
						int x=ps.executeUpdate();
						if(x>0)
						{
						
						PreparedStatement ps2=connection.prepareStatement("insert into spot_details(user,loc,s1_desc,s1_fam,h1_name,h1_desc,h1_items,addr1,s2_desc,s2_fam,h2_name,h2_desc,h2_items,addr2,s3_desc,s3_fam,h3_name,h3_desc,h3_items,addr3) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						
						ps2.setString(1,user);
						ps2.setString(2,loc);
						
						ps2.setString(3,encd13);	
						ps2.setString(4,d14);
						ps2.setString(5,d15);
						ps2.setString(6,encd16);
						ps2.setString(7,d17);
						ps2.setString(8,d18);
						
						ps2.setString(9,encd23);	
						ps2.setString(10,d24);
						ps2.setString(11,d25);
						ps2.setString(12,encd26);
						ps2.setString(13,d27);
						ps2.setString(14,d28);
						
						ps2.setString(15,encd33);	
						ps2.setString(16,d34);
						ps2.setString(17,d35);
						ps2.setString(18,encd36);
						ps2.setString(19,d37);
						ps2.setString(20,d38);
						
						int y=ps2.executeUpdate();
						

						out.println("Location Directions Added Sucessfully");							
							
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
