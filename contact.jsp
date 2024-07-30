<html>
<head>
<title>Student Information</title>
<%@page import="java.sql.*,java.util.*"%>
</head>
<body>
<%
try
{
String namee=request.getParameter("namee");
String emaile=request.getParameter("emaile");
String msge=request.getParameter("msge");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st=con.createStatement();
String s="insert into contact values('"+namee+"','"+emaile+"','"+msge+"')";   
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