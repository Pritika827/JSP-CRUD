<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
%>
<!DOCTYPE html>
<html>
<body>
<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>eno</td>
<td>ename</td>
<td>esal</td>
</tr>
<%
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pritika","root","123456");
Statement st=conn.createStatement();
String sql ="select * from employee";
ResultSet rs= st.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
</tr>
<%
}
conn.close();
%>
</table>
</body>
</html>