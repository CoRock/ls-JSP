<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% String pageName = request.getParameter("pageName"); %>
포함하는 페이지는 <%= pageName %> 입니다.
<br>
<%-- jsp 액션태그: <jsp:....>, 변수 공유는 안됨 --%>
<%-- 변수 공유를 하려면 <%@ include %> 사용 --%>
<%-- <jsp:include page="includedTest.jsp"></jsp:include> --%>
<%@ include file="includedTest.jsp" %>
MESSAGE: <%= message %>

</body>
</html>