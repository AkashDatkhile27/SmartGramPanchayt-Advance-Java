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
 <% String email = request.getParameter("email");
        String password = request.getParameter("password");
        

        try
        {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sg","root","12345");
            PreparedStatement statement = con.prepareStatement("select email, password from schemereg where email =? and password=?");
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet result = statement.executeQuery();
            if(result.next()){
                response.sendRedirect("http://localhost:8080/smartgrampanchayat/jsp/schemeapllications.jsp");
            }else{
                out.println("Email and password are incorrect");
            }
        }catch(Exception e){
            System.out.println("DB related Error");
            e.printStackTrace();
        }   
    
    %>
</body>
</html>