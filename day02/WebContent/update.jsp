<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
			<h1>�����Է� ������</h1>
			<%-- <p>num:<%=request.getParameter("num") %> </p>
			<p>kor:<%=request.getParameter("kor") %></p>
			<p>eng:<%=request.getParameter("eng") %></p>
			<p>math:<%=request.getParameter("math") %></p> --%>
<%
	String param1=request.getParameter("num");
	String param2=request.getParameter("kor");
	String param3=request.getParameter("eng");
	String param4=request.getParameter("math");
	int num=Integer.parseInt(param1.trim());
	int kor=Integer.parseInt(param2.trim());
	int eng=Integer.parseInt(param3.trim());
	int math=Integer.parseInt(param4.trim());
	String sql="update student01 set ";
	sql+=" kor="+kor;
	sql+=",eng="+eng;
	sql+=",math="+math;	
	sql+=" where num="+num;
	System.out.println(sql);
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String id="scott";
	String pw="tiger";
	String driver="oracle.jdbc.driver.OracleDriver";
	Connection conn=null;
	Statement stmt=null;
	int result=0;
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url,id,pw);
		stmt=conn.createStatement();
		result=stmt.executeUpdate(sql);
	}catch(Exception ex){
		out.print("<h2>����</h2><p>�������غ��ð� �����ڿ��� �����ϼ���</p>");
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	if(result>0)out.print("<h2>�����Է� �Ϸ�</h2>");
	else
		out.print("<h2>����</h2><p>�Է��� Ȯ���ϼ���</p>");
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