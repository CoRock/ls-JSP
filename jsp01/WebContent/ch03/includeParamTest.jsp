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
	request.setCharacterEncoding("utf-8");
	String name = "이도훈";
	String pageName = "includedParamTest.jsp";
%>

포함하는 페이지입니다.
<jsp:include page="<%= pageName %>">
	<jsp:param value="<%= name %>" name="name" />
	<jsp:param value="<%= pageName %>" name="pageName" />
</jsp:include>

</body>
</html>