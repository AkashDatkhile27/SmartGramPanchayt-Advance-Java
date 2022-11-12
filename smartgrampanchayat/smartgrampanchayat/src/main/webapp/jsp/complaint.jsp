<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Scheme Register</title>
</head>
<body>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String date =request.getParameter("date");
String name =request.getParameter("name");
String mno =request.getParameter("mno");
String email =request.getParameter("email");
String address = request.getParameter("address");
String location = request.getParameter("location");
String details = request.getParameter("complaintdetails");
String outcome = request.getParameter("Outcome");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sg","root","12345");

Statement st= con.createStatement();
int i=st.executeUpdate("insert into complaintbox(complaintdate,Name,mno,email,address,incidentLocation,complaintDetails,desiredoutcome)values('"+date+"','"+name+"','"+mno +"','"+email+"','"+address+"','"+location+"','"+details+"','"+outcome+"')");
	
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>