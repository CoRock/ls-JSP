<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>forwardTo.jsp Page</h2>
<br>
id: <%= request.getAttribute("id") %><br>
name: <%= request.getAttribute("name") %><br>
<br>
id: ${id}<br>
name: ${name}

</body>
</html>