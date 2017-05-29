<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<% 
String name=request.getParameter("name");
String password=request.getParameter("password");
String email=request.getParameter("email");

Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","root");
Statement st=con.createStatement();
ResultSet rs;
int i= st.executeUpdate("Insert into jsp.users values( '"+name+"', '"+password+"' ,' "+email+"' )");
out.println("registered");

%>
</body>
</html>