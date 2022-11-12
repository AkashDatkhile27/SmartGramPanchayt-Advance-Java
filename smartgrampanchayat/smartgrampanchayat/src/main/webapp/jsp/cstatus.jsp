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

nav{
  width: 100%;

  line-height: 20px;
  background-color: grey;
  transition:0.8s;
}
nav ul li{
  display: inline-block;
  list-style: none;
}
nav ul{
  float: right;
  margin-right: 60px;

}
nav ul li a{
  text-decoration: none;
  background-color: grey;
  color: black;
  padding: 10px;
  margin-right: 10px;
}

nav ul li a:hover{
  background-color: white;
  color: black;
   height: 20px;
 }
</style>
</head>
<body>
<nav>
<img src="glogo.gif" width="300" height="50" style="padiing:5px;">
<ul>
    <li><a href="http://localhost:8080/smartgrampanchayat/home.html">Home</a></li>
    <li><a href="http://localhost:8080/smartgrampanchayat/myschemes.html">Schemes</a></li>
    <li><a href="http://localhost:8080/smartgrampanchayat/mygallery.html">Gallery</a></li>
    <li><a href="http://localhost:8080/smartgrampanchayat/Complaint.html">Complaint Box</a></li>
    <li><a href="http://localhost:8080/smartgrampanchayat/AdminLogin.html">Admin Login</a></li>
  	</ul>
</nav>
<h3><center> Complaint Details and Status</center></h3>
<div style="overflow-x:auto;">
<table  id="SchemeList">
<tr>
<th>ID</th>
<th>Name</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Date of Complaint</th>
<th>Location of Incident</th>
<th>Detail of complaint </th>
<th>Status</th>  

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String no=request.getParameter("mno");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sg","root","12345");
String sql="SELECT id,complaintdate,Name,mno,email,incidentLocation,complaintDetails,status FROM complaintbox WHERE mno="+no;
Statement st= con.createStatement();
ResultSet  resultSet = st.executeQuery(sql);	
//ResultSet  resultSet = st.executeQuery("select id,Name,email,complaintdate,incidentLocation,complaintDetails,status from complaintbox where mno="+mno);	
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("Name") %></td>
<td><%=resultSet.getString("mno") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("complaintdate") %></td>
<td><%=resultSet.getString("incidentLocation") %></td>
<td><%=resultSet.getString("complaintDetails") %></td>
<td><%=resultSet.getString("status") %></td>
</tr>
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

   
</body>
</html>