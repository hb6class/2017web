<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String path = request.getParameter("path");
%>
	<table cellspacing="0" align="center" width="943">
		<tr>
			<td align="right" height="120" colspan="2"  background="<%=path %>./imgs/header.png">
	<%
		String name=(String)session.getAttribute("name");
		System.out.println("login:"+name);
		if(name==null){
	%>
				<a href="<%=path %>./user/login.jsp">�α���</a>||
				<a href="<%=path %>./user/join.jsp">ȸ������</a>
	<%
		}else{
				out.print(name);
	%>
				�� ȯ���մϴ�[<a href="<%=path %>./user/logout.jsp">�α׾ƿ�</a>]
	<%	} %>
			</td>
		</tr>
