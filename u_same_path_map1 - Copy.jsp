
<title>Mapping </title>
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

		int count=0;
		String s1="",s2="",s3="",s4="";
		String d1="",d2="",us="";
		String user=(String)application.getAttribute("user");
		String loc = request.getParameter("loc");
			
int i=0;

	try{
		   String query2="select user from spot_book where user!='"+user+"' and loc='"+loc+"' "; 
		   Statement st2=connection.createStatement();
		   ResultSet rs2=st2.executeQuery(query2);
		   while(rs2.next())
		   {
		     us = rs2.getString(1);
			 
			 String query="select * from user where name='"+us+"' "; 
		     Statement st=connection.createStatement();
		     ResultSet rs=st.executeQuery(query);

		%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Google Map with Multiple Location</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&key=AIzaSyD0X4v7eqMFcWCR-VZAJwEMfb47id9IZao"></script>
    <script type="text/javascript">
        var contentstring = [];
        var regionlocation = [];
        var markers = [];
        var iterator = 0;
        var areaiterator = 0;
        var map;
        var infowindow = [];
        geocoder = new google.maps.Geocoder();
        
        $(document).ready(function () {
            setTimeout(function() { initialize(); }, 600);
        });
        
        function initialize() {           
            infowindow = [];
            markers = [];

<%
if(rs.next())
{

String uuser=rs.getString(2);
s1="India";
s2="Karnataka";
s3= rs.getString(9);//loc
d1=rs.getString(10);//lct
d2=rs.getString(11);//long
      			       
					   String location1 = uuser+" Staying in "+s3;

	 
%>

contentstring["<%=i%>"] = " <%=s1%>, <%=s2%>,<%=location1%>";
            regionlocation["<%=i%>"] = "<%=d1%>"+",<%=d2%>";

<%
i=i+1;

}}%>

            //GetValues();
            iterator = 0;
            areaiterator = 0;
            region = new google.maps.LatLng(regionlocation[areaiterator].split(',')[0], regionlocation[areaiterator].split(',')[1]);
            map = new google.maps.Map(document.getElementById("Map"), { 
                zoom: 10,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                center: region,
            });
            drop();
        }
        
        
               
        function drop() {
            for (var i = 0; i < contentstring.length; i++) {
                setTimeout(function() {
                    addMarker();
                }, 800);
            }
        }

        function addMarker() {
            var address = contentstring[areaiterator];
            var icons = 'http://maps.google.com/mapfiles/ms/icons/red-dot.png';
            var templat = regionlocation[areaiterator].split(',')[0];
            var templong = regionlocation[areaiterator].split(',')[1];
            var temp_latLng = new google.maps.LatLng(templat, templong);
            markers.push(new google.maps.Marker(
            {
                position: temp_latLng,
                map: map,
                icon: icons,
                draggable: false
            }));            
            iterator++;
            info(iterator);
            areaiterator++;
        }

        function info(i) {
            infowindow[i] = new google.maps.InfoWindow({
                content: contentstring[i - 1]
            });
            infowindow[i].content = contentstring[i - 1];
            google.maps.event.addListener(markers[i - 1], 'click', function() {
                for (var j = 1; j < contentstring.length + 1; j++) {
                    infowindow[j].close();
                }
                infowindow[i].open(map, markers[i - 1]);
            });
        }
    </script>

</head>
<body>
    <div id="Map" style="width: 921px; height: 629px;">
    </div>
</body>
</html>

<%
}
		catch(Exception e)
		{
		e.printStackTrace();
		}
%>
