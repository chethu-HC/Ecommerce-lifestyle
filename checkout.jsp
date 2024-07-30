<html>
<head>
<title>Student Information</title>
<%@page import="java.sql.*,java.util.*"%>
</head>
<body>
<%
try
{
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String country=request.getParameter("country");
String addr=request.getParameter("addr");
String town=request.getParameter("town");
String coun=request.getParameter("coun");
String post=request.getParameter("post");
String phone=request.getParameter("phone");
String email=request.getParameter("email");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st=con.createStatement();
String s="insert into checkout values('"+fname+"','"+lname+"','"+country+"','"+addr+"','"+town+"','"+coun+"','"+post+"','"+phone+"','"+email+"')";   
st.executeUpdate(s);

out.println("<h3>Date Saved Successfully!</h3>");
}
catch(Exception e)
{
out.println(e);
//out.println("Insertion of date failed!");
//out.println("<H3>Enter Valid Input! ...<H3>");
}
%>
</body>
</html>