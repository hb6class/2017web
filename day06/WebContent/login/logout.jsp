<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="com.hb.util.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	String rootPath = request.getContextPath();
%>
<body background="<%=rootPath %>/imgs/bg.png">
	<table align="center">
		<tr>
			<td align="right" height="155" colspan="2"  background="<%=rootPath %>/imgs/header.png">
				<%
				if(session.getAttribute("result")==null){
				%>
				<a href="<%=rootPath %>/login/login.jsp">�α���</a>||
				<%}else{ %>
				<a href="<%=rootPath %>/login/logout.jsp">�α׾ƿ�</a>||
				<%} %>
				<a href="<%=rootPath %>/login/join.jsp">ȸ������</a>
			</td>
		</tr>
		<tr>
			<td align="center" height="50" colspan="2" bgcolor="red">
				<a href="<%=rootPath %>/">HOME</a>||
				<a href="<%=rootPath %>/guest/list.jsp">����Ʈ</a>||
				<a href="<%=rootPath %>/guest/add.jsp">�Է�</a>||
				<a href="#">menu4</a>
			</td>
		</tr>
		<tr>
			<td height="316" width="211"  background="<%=rootPath %>/imgs/aside.png">
			</td>
			<td valign="top" bgcolor="#ffffff">
				<h1>�α��ξƿ�</h1>
				<%
					// ���� result�� null ����
					//session.setAttribute("result", null);
					// ���ǿ� �ִ� result�Ӽ� ����
					//session.removeAttribute("result");
					// ���� �������� �ٲ�
					session.invalidate();
				%>
			</td>
		</tr>
		<tr>
			<td height="158" width="943" background="<%=rootPath %>/imgs/footer.png" colspan="2">
				(��)�Ѻ��̿����� �� ����ڵ�Ϲ�ȣ : 220-85-43667 �� ����ǸŽŰ� : ���� �� 0358ȣ
�Ѻ�ENI : 02-707-1480 / (121-854) ����� ������ �ż��� 63-14 �������� 3�� / ��ǥ�̻� : ����ȣ
����������ȣ����å���� : ����
Copyright (c) 2015 �Ѻ��������� All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>