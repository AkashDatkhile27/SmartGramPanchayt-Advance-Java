<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*,java.util.*"%>
<%! String userdbName;

String userdbPsw;

%>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/sg";

String user = "root";

String dbpsw = "12345";



String sql = "select * from user where uname=? and pass=?";



String name = request.getParameter("uname");

String password = request.getParameter("pass");




if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || 
password.equals(""))))

{

try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

ps = con.prepareStatement(sql);

ps.setString(1, name);

ps.setString(2, password);



rs = ps.executeQuery();

if(rs.next())

{ 

userdbName = rs.getString("uname");

userdbPsw = rs.getString("pass");


if(name.equals(userdbName) && password.equals(userdbPsw) )

{

session.setAttribute("name",userdbName);


response.sendRedirect("http://localhost:8080/smartgrampanchayat/jsp/schemeapllications.jsp"); 

} 

}

else

response.sendRedirect("http://localhost:8080/smartgrampanchayat/AdminLogin.html");

rs.close();

ps.close(); 

}catch(SQLException sqe)

{

out.println(sqe);

} 

}

else

{

%>

<center><p style="color:red">Error In Login</p></center>

<% 

getServletContext().getRequestDispatcher("/home.jsp").include(request, 
response);

}

%>
</body>
</html>