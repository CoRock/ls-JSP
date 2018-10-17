<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	// cf. session.setAttribute(KEY, VALUE): 세션에 저장
	// (CASTING) session.getAttribute("변수명"): 세션 변수 값 조회
	String name = (String) session.getAttribute("name");
	int age = (Integer) session.getAttribute("age");
%>

이름: <%= name %><br>
나이: <%= age %><br>
세션 ID: <%= session.getId() %><br>
<a href="session_result2.jsp">Session Variables Confirm</a>
<hr>
<h2>Request Information</h2>
이름: <%= request.getAttribute("name") %><br>
나이: <%= request.getAttribute("age") %><br>

</body>
</html>