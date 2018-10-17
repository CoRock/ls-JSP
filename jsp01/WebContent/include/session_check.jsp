<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.net.URLEncoder" %>
<%
	// select a session variable
	String userid = (String) session.getAttribute("userid");
	// if the value doesn't exists in a sesstion variable 
	if (userid == null) {
		String message = "먼저 로그인한 후 사용 가능합니다.";
		message = URLEncoder.encode(message, "utf-8");
		// transfer login page
		response.sendRedirect("sessionTestForm.jsp?message=" + message);
	}
%>