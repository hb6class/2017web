<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>ȸ������</h1>
	<form action="ex09.jsp">
		<p>�̸�:<input type="text" name="name"></p>
		<p>�ּ�:<input type="text" name="addr"> </p>
		<p>��й�ȣ:<input type="password" name="pw"> </p>
		<p>
			<textarea rows="3" cols="10" name="area"></textarea>
		</p>
		<p>
			���� <select name="sel1">
				<option value="a1">item1</option>
				<option value="a2">item2</option>
				<option value="a3">item3</option>
			</select>
		</p>
		<p>
			����2 
			<input type="radio" name="sel2" value="item1">item1
			<input type="radio" name="sel2" value="item2">item2
			<input type="radio" name="sel2" value="item3">item3
		</p>
		<p>
			����3
			<input type="checkbox" name="sel3" value="c1">�߱�
			<input type="checkbox" name="sel3" value="c2">��
			<input type="checkbox" name="sel3" value="c3">�豸
		</p>
		<p><input type="submit" value="����"> </p>
	</form>
</body>
</html>