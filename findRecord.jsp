<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
%>
<!DOCTYPE html>
<html>
<body>
<table border="1">
<tr>
<td>eno</td>
<td>ename</td>
<td>esal</td>
</tr>
<%
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pritika","root","123456");
String sql ="select * from employee where eno=?";
Integer eno=Integer.parseInt(request.getParameter("eno"));
PreparedStatement pst = conn.prepareStatement(sql);
pst.setInt(1,eno);
ResultSet rs= pst.executeQuery();
if(rs.next()==true){
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