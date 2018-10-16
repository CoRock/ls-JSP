<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.net.URLEncoder" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- request 객체: 서버의 요청, response 객체: 클라이언트 관련 -->
<%
/*
	페이지 이동
	
	response: 클라이언트의 요청을 처리하는 객체
	sendRedirect("이동할 주소"): 페이지 주소를 이동시킴
	
	response.sendRedirect(): 페이지 이동이 목적!
		소량의 스트링 자료만 get 방식으로 전달 가능
		
	forward(): 데이터 전달이 목적!
		대량의 자료 전달 가능, 모든 자료형
	
	request.setAttribute("name", "kim");
	
	url 뒤에 쿼리스트링으로 값을 전달해야 함
	url?변수=값&변수=값
	?뒤의 문자열을 query string(질의 문자열)이라고 함
	
	URL encoding: url에는 한글, 특수문자 금지
	URLEncoder.encode("인코딩할 문자열", "언어셋")
*/
	
	// 다른 페이지로 이동시킴
	request.setAttribute("name", "김철수");		// null
	
	// get 방식, query string		url?변수=값&변수=값
	// 한글, 특수문자를 넘기고 싶으면 인코딩을 해야 함
	String name = URLEncoder.encode("김철수", "utf-8");
	response.sendRedirect("responseRedirected.jsp?name=" + name + "&age=20");
%>

<!-- cf.
	<script>
		location.href="responseRedirected.jsp";
	</script>
-->

</body>
</html>