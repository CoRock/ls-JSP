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
	// application 영역에 저장된 변수 값 확인
	String message = (String) application.getAttribute("message");
	out.println("MESSAGE: " + message);
%>

</body>
</html>