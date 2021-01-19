<%@page import="java.sql.*" %>
<%
	Integer eno=Integer.parseInt(request.getParameter("eno"));
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pritika","root","123456");
	
	String sql="delete from employee where eno=?";
	PreparedStatement pst = conn.prepareStatement(sql);
	pst.setInt(1,eno);

	
	Integer i =pst.executeUpdate();
	out.println(i+"Record deleted in a table");
%>