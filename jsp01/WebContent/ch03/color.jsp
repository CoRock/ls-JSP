<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <body bgcolor="${map.color}"> --%>

<%
	// (CASTING) request.getAttribute("VALUE_NAME");
	Map<String, Object> map = (Map<String, Object>) request.getAttribute("map");
	String name = (String) map.get("name");
	String color = (String) map.get("color");
	String message = (String) map.get("message");
	String[] hobby = (String[]) map.get("hobby");
%>
<%= name %>님이 좋아하는 색상은
<span style="color: <%= color %>"><%= color %>이고</span>
<%= message %>
<br>
취미: 
<%
	if (hobby != null) {
		for (String str : hobby) {
			out.println(str + " ");
		}
	}
%>
<br>
<br>
${map.name}님이 좋아하는 색상은
<span style="color:${map.color}">${map.color}</span>이고 ${map.message}

</body>
</html>