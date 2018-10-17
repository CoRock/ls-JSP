<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% String context = request.getContextPath(); %>
<!-- session(세션): 서버에서 사용자를 인증하는 기술 -->
<form method="post" action="<%= context %>/ch02_servlet/login.do">
	아이디 <input name="userid"><br>
	비밀번호 <input type="password" name="passwd"><br>
	<input type="submit" value="Sign In">
</form>

<!-- 로그인 실패 시 로그아웃 메세지를 출력할 태그 -->
<!-- param.변수 => request.getParameter("변수"); -->
<%-- <span style="color: red;">${param.message}</span> --%>
<%
	String message = request.getParameter("message");
	if (message != null) {
%>
	<span style="color: red;"><%= message %></span>
<%
	}
%>

</body>
</html>