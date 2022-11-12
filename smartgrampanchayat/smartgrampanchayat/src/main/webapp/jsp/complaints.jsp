<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display scheme application</title>
<style>

#SchemeList {
  font-family: Arial, Helvetica, sans-serif;
  font-size:14px;
  border:2px solid black;
  border-collapse: collapse;
  width: 100%;
  table-layout:auto;
}

#SchemeList td, #SchemeList th {
  border: 1px solid white;
  padding: 8px;
}

#SchemeList tr:nth-child(even){background-color: #f2f2f2;}

#SchemeList tr:hover {background-color: #ddd;}

#SchemeList th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}

.button {
  background-color: #4CAF50; 
  border: none;
  color: white;
  
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.approved {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.approved:hover {
  background-color: #4CAF50;
  color: white;
}
.reject {
  background-color: white; 
  color: black; 
  border: 2px solid #f44336;
}

.reject:hover {
  background-color: #f44336;
  color: white;
}
<style>
body {
  font-family: "Lato", sans-serif;
  transition: background-color .5s;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

<!-- right slidebar-->
#count a {
  position: absolute;
  right:-80px;
  transition: 0.3s;
  padding: 15px;
  width: 100px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  border-radius: 0 5px 5px 0;
}

#count a:hover {
  right: 0;
}

#ca {
  top: 20px;
  background-color: #04AA6D;
}

#cr {
  top: 80px;
  background-color: #2196F3;
}

</style>
</head>
<body>
<div id="mySidenav" class="sidenav">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  	<a href="schemeapllications.jsp">Scheme</a>
  <a href="complaints.jsp">Complaints</a>
   <a href="http://localhost:8080/smartgrampanchayat/member.html">About</a>
<a  href="http://localhost:8080/smartgrampanchayat/jsp/logout.jsp">Log Out</a></div>


<div id="main">
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;Admin Dashboard</span>
</div>
<div id="count" class="count">
  <a href="ccompleted.jsp" id="ca">View Solved Complaints</a>
  <a href="complaints.jsp" id="cr">View Pending And New Complaints</a>
</div>

<h3><center>New Complaints</center></h3>
<div style="overflow-x:auto;">
<table  id="SchemeList">
<tr>
<th>Complaint Number</th>
<th>Date of Complaint</th>
<th>Name</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Address</th>
<th>Location of Incident</th>
<th>Detail of complaint </th>
<th>Desired Outcome For Complaint </th>
<th>Status</th>  
<th>Action</th>
</tr>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*,java.util.*"%>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sg","root","12345");
String sql="select * from complaintbox where status='In Progress'";
Statement st= con.createStatement();
ResultSet  resultSet = st.executeQuery(sql);	
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("complaintdate") %></td>
<td><%=resultSet.getString("Name") %></td>
<td><%=resultSet.getString("mno") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("incidentLocation") %></td>
<td><%=resultSet.getString("complaintDetails") %></td>
<td><%=resultSet.getString("desiredoutcome") %></td>
<td><%=resultSet.getString("status") %></td>
 <td><a href="done.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="button approve">Done</button></a>
 </td>


<% 
}

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</table>



<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
  document.body.style.backgroundColor = "white";
}
</script>
   
</body>
</html>