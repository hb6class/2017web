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
			<h1>�л���� ������</h1>
			<form action="insert.jsp">
			<label for="name">�̸�:</label>
			<input type="text" name="name" id="name">	
			<input type="submit" value="���">
			<input type="reset" value="�ʱ�ȭ">
			</form>
			
			
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