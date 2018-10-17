<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	표현식(expression): 웹브라우저에 우변의 값을 html로 출력
-->
<br>
<!--
	Ctrl+Shift+/ : 주석처리
	Ctrl+Shift+\ : 주석해제
-->
<%-- <!-- <%= 식 or 값 %> -->		html 주석
<!-- <%//="hello" %> -->
<%= "hello" %>		html + java 주석 --%>
<%
	String[] str = { "jsp", "java", "android", "html5" };
	//	String[] str = null;
%>
<ul>
<% for (String s : str) { %>
	<%-- <li><%= s %></li> --%>		<!-- 표현식 -->
	<li><% out.println(s); %></li>
<% } %>
</ul>

</body>
</html>