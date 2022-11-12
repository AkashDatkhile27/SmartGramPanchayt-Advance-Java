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
String name =request.getParameter("name");
String email =request.getParameter("email");
String mobile_no =request.getParameter("mobile");
String gender =request.getParameter("gender");
String birthdate = request.getParameter("dob");
String address = request.getParameter("address");
String city = request.getParameter("city");
int pincode = Integer.parseInt(request.getParameter("pin"));
String state = request.getParameter("state");
String scheme = request.getParameter("Scheme");
String password = request.getParameter("password");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sg","root","12345");

Statement st= con.createStatement();
int i=st.executeUpdate("insert into schemereg(name,email,mobile_no,gender,birthdate,address,city,pincode,State,scheme,password)values('"+name+"','"+email+"','"+mobile_no+"','"+gender+"','"+birthdate+"','"+address+"','"+city+"','"+pincode+"','"+state+"','"+scheme+"','"+password+"')");



	}catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<%response.sendRedirect("http://localhost:8080/smartgrampanchayat/Schemeregistration.html"); %>
</body>
</html>