<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 5*4 table -->
	<!-- 1,3,4 low : 1 -->
	<!-- 2 low : 5 -->
	<table width="100%" border="0">
		<tr>
			<td colspan="5">
			<!-- header -->
			<a href="index.jsp">
			<img alt="logo" src="imgs/logo.jpg">
			</a>
			</td>
		</tr>
		<tr align="center" bgcolor="red">
			<!-- �޴� -->
			<td></td>
			<td width="150"><a href="list.jsp">����</a></td>
			<td width="150"><a href="add.jsp">�л����</a></td>
			<td width="150"><a href="edit.jsp">�����Է�</a></td>
			<td></td>
		</tr>
		<tr>
			<td colspan="5">
			<!-- content -->
			<h1>�л���� ������</h1>
			
			<%
String name=request.getParameter("name");
name=name.trim();
if(name==null || "".equals(name)){
	response.sendRedirect("add.jsp");
	return;
}
String sql="insert into student01 (num,name) values ";
sql+="(student01_seq.nextval,'"+name+"')";
System.out.println(sql);			
String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
String user="scott";
String password="tiger";
Connection conn=null;
Statement stmt=null;
int result=0;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection(url, user, password);
	stmt=conn.createStatement();
	result=stmt.executeUpdate(sql);
}catch(Exception ex){
	out.print("<h2>�Է½���</h2>");		
	out.print("<p>�����ͺ��̽� ����</p>");		
}finally{
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}
if(result>0){
	out.print("<h2>�Է¿Ϸ�</h2>");
	out.print("<p>"+name+" �л��� �߰��Ǿ����ϴ�</p>");		
}else{
	out.print("<h2>�Է½���</h2>");	
	out.print("<p>�ٽ� �Է¹ٶ��ϴ�</p>");		
}
			%>
			<!-- content end -->
			</td>
		</tr>
		<tr>
			<td colspan="5">
			<!-- footer -->
			<img alt="logo2" src="imgs/logo2.jpg" align="left">
(��)�Ѻ��̿����� �� ����ڵ�Ϲ�ȣ : 220-85-43667 �� ����ǸŽŰ� : ���� �� 0358ȣ<br>
�Ѻ�ENI : 02-707-1480 / (121-854) ����� ������ �ż��� 63-14 �������� 3�� / ��ǥ�̻� : ����ȣ<br>
����������ȣ����å���� : ����<br>
Copyright (c) 2015 �Ѻ��������� All rights reserved.<br>
			
			</td>
		</tr>
	
	
	</table>
</body>
</html>