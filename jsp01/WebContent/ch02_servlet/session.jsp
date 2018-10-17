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
	// session obejct: 사용자의 정보를 저장(로그아웃할 때까지)
	// setAttribute("변수명", 값);
	// 사용자가 로그아웃할 때까지 모든 페이지에서 정보가 유지됨
	session.setAttribute("name", "이도훈");
	session.setAttribute("age", 20);
	
	// 다음 페이지까지만 정보가 유지됨
	request.setAttribute("name", "이도훈");
	request.setAttribute("age", 20);
	
	// sendRedirect()를 호출하면 request 영역의 자료는 삭제됨
	// 페이지 이동
	// response.sendRedirect("session_result.jsp");
	
	// forward(주소가 바뀌지 않음, 데이터 유지)
	RequestDispatcher rd = request.getRequestDispatcher("session_result.jsp");
	rd.forward(request, response);
%>

<!-- jsp 액션 태그를 이용한 forward -->
<%-- <jsp:forward page="session_result.jsp"></jsp:forward> --%>

</body>
</html>