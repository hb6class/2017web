<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../template/header.jsp" %>
	<p>HOME>LIST>ADD</p>
	<h1>입력페이지</h1>
		<%
		String msg=request.getParameter("msg"); 
		%>
	<form action="insert.jsp">
		<p><label for="sabun">사번</label>
		<% if(msg!=null){
			out.print("<input type='text' name='sabun' value='"
				+msg+"'><font color='red'>중복</font>");	
		}else{
			out.print("<input type='text' name='sabun'>");
		}
		%>
		</p>
		<p><label for="name">이름</label>
			<input type="text" name="name"></p>
		<p>
			<input type="submit" value="입력">
			<input type="reset" value="취소">
		</p>
	</form>
	<%@ include file="/template/footer.jsp" %>
</body>
</html>







