<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 자바빈을 생성하고 폼에서 입력된 값을 변수에 입력 -->
<%
/*
	ch05.RegisterBean registerBean = new ch05.RegisterBean();
	registerBean.setId(request.getParameter("id")); 
	registerBean.setPasswd(request.getParameter("passwd")); 
	registerBean.setName(request.getParameter("name"));
*/
%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="registerBean" class="ch05.RegisterBean">
	<jsp:setProperty name="registerBean" property="*" />
</jsp:useBean>

<%@ page import="java.sql.Timestamp" %>
<%
	// System.currentTimeMillis(): 시스템의 현재 시간
	// new Timestamp(밀리세컨드)
	out.println("Timestamp: " + System.currentTimeMillis() + "<br>");
	out.println(new Timestamp(System.currentTimeMillis()) + "<br>");
	registerBean.setReg_date(new Timestamp(System.currentTimeMillis()));
%>
<br>
ID: <jsp:getProperty property="id" name="registerBean" />
<br>
PW: <jsp:getProperty property="passwd" name="registerBean" />
<br>
NAME: <jsp:getProperty property="name" name="registerBean" />
<br>
REGISTER DATE: <jsp:getProperty property="reg_date" name="registerBean" />

</body>
</html>