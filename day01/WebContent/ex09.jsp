<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>���޹��� ����</h1>
	<p>�̸� : <%=request.getParameter("name") %></p>
	<p>�ּ� : <%=request.getParameter("addr") %></p>
	<p>��й�ȣ : <%=request.getParameter("pw") %></p>
	<p>���� : <%=request.getParameter("area") %></p>
	<p>���� : <%=request.getParameter("sel1") %></p>
	<p>����2 : <%=request.getParameter("sel2") %></p>
	<%
	String[] sel3=request.getParameterValues("sel3");
	if(sel3!=null){
		for(int i=0; i<sel3.length; i++){
	%>
	<p>����3:<%=sel3[i]%></p>
	<%
		}
	}
	Enumeration<String> enu=request.getParameterNames();
	while(enu.hasMoreElements()){
		System.out.println(enu.nextElement());
	}
	
	%>
</body>
</html>