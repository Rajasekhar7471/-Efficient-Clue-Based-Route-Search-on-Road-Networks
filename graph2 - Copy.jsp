

<html>
<head>
<title>Account Type Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<style type="text/css">
<!--
.style4 {color: #FF0000}
.style5 {color: #0000FF}
-->
</style>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];



<%@ include file="connect.jsp"%>
<%
    int i=0,j=1,k=0,count=0;;
	String s1="",s2="";
	
try
{
	                        String query="select distinct user from spot_book "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 //i=rs.getInt(1);
								s1=rs.getString(1);//name
								
								
								String query2="select distinct loc from spot_book where user='"+s1+"' "; 
						   	    Statement st2=connection.createStatement();
						     	ResultSet rs2=st2.executeQuery(query2);
					   		    while ( rs2.next() ) 
			                    {
								  s2=rs2.getString(1);//name
								  
								  String query3="select * from spot_book where user='"+s1+"' and loc='"+s2+"' "; 
						   	      Statement st3=connection.createStatement();
						     	  ResultSet rs3=st3.executeQuery(query3);
					   		      
					
	
	

	while( rs3.next() ) 
	{
	 count++;
	}
	
	%>
	
	
	myData["<%=i%>"]=["<%= s1%>:<%= s2%>",<%= count%>];
        
	<%
	count=0;
	                
	i++;
	}}                
					
	
	
	
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF3300');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#FFFFFF');
	myChart.setBarValues(true);
	myChart.setTitleColor('#FF0000');
	myChart.setAxisColor('#000000');
	myChart.setAxisValuesColor('#0000FF');
	myChart.setSize(900,300);
	myChart.draw();
	
</script>



<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

</body>
</html>