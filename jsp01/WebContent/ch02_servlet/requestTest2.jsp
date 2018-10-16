<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Enumeration" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>the methods of request object</h2>
<%
	// 일부 header만 확인
	String[] names = { "PROTOCOL", "SERVER NAME", "METHOD", "CONTEXT", "URI", "URL", "IP" };

	// uri: /jsp01/ch02_servlet/requestTest2.jsp
	// url: http://localhost:8181/jsp01/ch02_servlet/requestTest2.jsp
	String[] values = {
			request.getProtocol(), request.getServerName(),
			request.getMethod(), request.getContextPath(),
			request.getRequestURI(),
			request.getRequestURL().toString(),
			request.getRemoteAddr()
	};
			
	for (int i = 0; i < names.length; i++) {
		out.println("<b>" + names[i] + ": " + "</b>" + values[i] + "<br>");
	}
	
	// save request header variables to Enumeration(집합처리객체)
	out.println(request.getHeaderNames());
	Enumeration<String> en = request.getHeaderNames();
	String headerName = "";
	String headerValue = "";
	out.println("<h2>header information</h2>");
	// out.println(request.getHeader("user-agent"));
	
	// 다음 요소가 있으면
	while (en.hasMoreElements()) {
		headerName = en.nextElement();						// 다음 요소 조회
		headerValue = request.getHeader(headerName);	// request 헤더 값 저장
		out.println(headerName + ": " + headerValue + "<br>");
	}
%>

</body>
</html>