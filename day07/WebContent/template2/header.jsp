<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String rootPath = request.getParameter("path");
%>
	<table cellspacing="0" align="center" width="943">
		<tr>
			<td align="right" height="120" colspan="2"  background="<%=rootPath %>/imgs/header.png">
				<a href="<%=rootPath %>/login/login.jsp">�α���</a>||
				<a href="<%=rootPath %>/login/join.jsp">ȸ������</a>
			</td>
		</tr>
