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
	// request 영역에 변수 저장
	// pageContext, request, session, application
	// 현재 페이지	요청+응답	사용자	서버
	request.setAttribute("id", "lee");
	request.setAttribute("name", "이도훈");
	
	// 포워드할 페이지 주소
	/* String url = "forwardTo.jsp";
	// 포워드할 주소의 정보 분석
	RequestDispatcher rd = request.getRequestDispatcher(url);
	// 포워드(화면 전환 + 데이터 전달)
	rd.forward(request, response); */
	// response.sendRedirect(url);
%>

<!-- jsp 액션 태그 -->
<jsp:forward page="forwardTo.jsp"></jsp:forward>
<% // response.sendRedirect("forwardTo.jsp"); %>

</body>
</html>