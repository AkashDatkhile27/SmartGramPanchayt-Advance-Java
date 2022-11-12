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



String sql = "select * from complaintbox where mno=? ";



String mno = request.getParameter("mno");




if((!(mno.equals(null) || mno.equals("")) ))

{

try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

ps = con.prepareStatement(sql);

ps.setString(1, mno);




rs = ps.executeQuery();

if(rs.next())

{ 

mno = rs.getString("mno");



if(mno.equals(mno) )

{

session.setAttribute("mno",mno);


response.sendRedirect("http://localhost:8080/smartgrampanchayat/jsp/cstatus.jsp"); 

} 

}

else

response.sendRedirect("http://localhost:8080/smartgrampanchayat/Complaint.html");

rs.close();

ps.close(); 

}

catch(SQLException sqe)

{

out.println(sqe);

} 

}

%>

</body>
</html>