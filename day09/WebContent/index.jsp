<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String sabun=request.getParameter("sabun");
	String name=request.getParameter("name");
	String pay=request.getParameter("pay");
	String ur=request.getParameter("url");
	String url="main.jsp";
	if(ur==null)url="main.jsp";
	else if("main".equals(ur))url="main.jsp";
	else if("list".equals(ur))url="list.jsp";
	else if("add".equals(ur))url="add.jsp";
	else if("detail".equals(ur))url="detail.jsp";
	else if("edit".equals(ur))url="edit.jsp";
%>
	<table width="100%" align="center">
		<!-- header -->
		<tr>
			<td height="120" background="imgs/header.png">
			
			</td>
		</tr>
		<!-- menu -->
		<tr>
			<td bgcolor="#cccccc" align="center">
				<a href="index.jsp?url=main">HOME</a>
				<a href="index.jsp?url=list">�Խ��Ǻ���</a>
				<a href="index.jsp?url=add">�Խ����ۼ�</a>
				<a href="#">etc..</a>
			</td>
		</tr>
		<!-- content -->
		<tr>
			<td>
				<jsp:include page="<%=url %>">
					<jsp:param value="<%=sabun %>" name="sabun"/>
					<jsp:param value="<%=name %>" name="name"/>
					<jsp:param value="<%=pay %>" name="pay"/>
				</jsp:include>
			</td>
		</tr>
		<!-- content end -->
		<!-- footer -->
		<tr>
			<td bgcolor="#cccccc">
				(��)�Ѻ��̿����� �� ����ڵ�Ϲ�ȣ : 220-85-43667 �� ����ǸŽŰ� : ���� �� 0358ȣ
				<br>�Ѻ�ENI : 02-707-1480 / (121-854) ����� ������ �ż��� 63-14 �������� 3�� / ��ǥ�̻� : ����ȣ
				<br>����������ȣ����å���� : ����
				<br>Copyright (c) 2015 �Ѻ��������� All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>