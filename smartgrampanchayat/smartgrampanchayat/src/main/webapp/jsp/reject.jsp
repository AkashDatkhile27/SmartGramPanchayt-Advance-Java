<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");


try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sg", "root", "12345");
Statement stmt=con.createStatement();  
stmt.executeUpdate("update schemereg set status='Rejected' where id="+id);



}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}

%>
<jsp:forward page="schemeapllications.jsp" />
</html>