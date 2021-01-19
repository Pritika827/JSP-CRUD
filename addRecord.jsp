<%@page import="java.sql.*" %>
<%
	Integer eno=Integer.parseInt(request.getParameter("eno"));
	String ename=request.getParameter("ename");
	Integer esal=Integer.parseInt(request.getParameter("esal"));
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pritika","root","123456");
	
	String sql="insert into employee values(?,?,?)";
	PreparedStatement pst = conn.prepareStatement(sql);
	pst.setInt(1,eno);
	pst.setString(2,ename);
	pst.setInt(3,esal);
	
	Integer i =pst.executeUpdate();
	out.println(i+"Record added in a table");
%>