<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Session Information</h2>
이름: <%= session.getAttribute("name") %><br>
나이: <%= session.getAttribute("age") %><br>

<h2>Request Information</h2>
이름: <%= request.getAttribute("name") %><br>
나이: <%= request.getAttribute("age") %><br>

</body>
</html>