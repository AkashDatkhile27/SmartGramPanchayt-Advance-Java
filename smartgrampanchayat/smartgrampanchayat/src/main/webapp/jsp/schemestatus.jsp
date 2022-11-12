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
<h3><center>My Applications</center></h3>
<div style="overflow-x:auto;">
<table  id="SchemeList">
<tr>
<th>Application Number</th>
<th>Name</th>
<th>Email</th>
<th>Mobile Number</th>
<th>Gender</th>
<th>Birth-date</th>
<th>Address</th>
<th>City</th>
<th>Pin-code</th>
<th>State</th>
<th>Selected Scheme</th>
<th>Status</th>

</tr>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("mobile_no");
//String pass=request.getParameter("password");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sg","root","12345");
//String sql="select id,name,email,mobile_no,gender,birthdate,address,city,pincode,State,scheme_name,status from scheme,schemereg where scheme.scheme_id=schemereg.scheme and mobile_no="+mobile_no+" and password="+ password ;
Statement st= con.createStatement();
ResultSet  resultSet = st.executeQuery("select id,name,email,mobile_no,gender,birthdate,address,city,pincode,State,scheme_name,status from scheme,schemereg where scheme.scheme_id=schemereg.scheme and mobile_no="+id);	
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("mobile_no") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("birthdate") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("pincode") %></td>
<td><%=resultSet.getString("State") %></td>
<td><%=resultSet.getString("scheme_name") %></td>
<td><%=resultSet.getString("status") %></td>

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