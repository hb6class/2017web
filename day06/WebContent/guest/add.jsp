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
				<a href="<%=rootPath %>/login/login.jsp">로그인</a>||
				<a href="<%=rootPath %>/login/join.jsp">회원가입</a>
			</td>
		</tr>
		<tr>
			<td align="center" height="50" colspan="2" bgcolor="red">
				<a href="<%=rootPath %>/">HOME</a>||
				<a href="<%=rootPath %>/guest/list.jsp">리스트</a>||
				<a href="<%=rootPath %>/guest/add.jsp">입력</a>||
				<a href="#">menu4</a>
			</td>
		</tr>
		<tr>
			<td height="316" width="211"  background="<%=rootPath %>/imgs/aside.png">
			</td>
			<td valign="top" bgcolor="#ffffff">
				<h1>입력페이지</h1>
				<form action="insert.jsp">
					<p>
					사번:<input type="text" name="sabun">
					</p>
					<p>
					이름:<input type="text" name="name">
					</p>
					<p>
					금액:<input type="text" name="pay">
					</p>
					<p>
						<input type="submit" value="전송">
						<input type="reset" value="취소">
					</p>
				</form>
			</td>
		</tr>
		<tr>
			<td height="158" width="943" background="<%=rootPath %>/imgs/footer.png" colspan="2">
				(주)한빛이엔아이 ｜ 사업자등록번호 : 220-85-43667 ｜ 통신판매신고 : 마포 제 0358호
한빛ENI : 02-707-1480 / (121-854) 서울시 마포구 신수동 63-14 구프라자 3층 / 대표이사 : 염기호
개인정보보호관리책임자 : 허윤
Copyright (c) 2015 한빛교육센터 All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>