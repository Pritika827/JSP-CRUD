<%@page import="java.sql.*" %>
<%
	Integer eno=Integer.parseInt(request.getParameter("eno"));
	String ename=request.getParameter("ename");
	Integer esal=Integer.parseInt(request.getParameter("esal"));
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pritika","root","123456");
	
	String sql="update employee set ename=?,esal=? where eno=?";
	PreparedStatement pst = conn.prepareStatement(sql);
	
	pst.setString(1,ename);
	pst.setInt(2,esal);
	pst.setInt(3,eno);
	pst.executeUpdate();
	
	conn.close();
	out.println("Record updated in a table");
%>