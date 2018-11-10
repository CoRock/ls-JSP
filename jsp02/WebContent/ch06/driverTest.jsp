<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>
<%
	Connection conn = null;
	
	// DB connection string
	// jdbc:oracle:thin:@SERVER_ADDR:PORT_NUMBER:SID
	try {
		String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
		String dbId = "jsp";			// 오라클 접속 아이디
		String dbPass = "1234";	// 오라클 접속 비밀번호

		// loading jdbc driver
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// getConnection(연결문자열, 아이디, 비밀번호): DB에 접속
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

		out.println("Oracle에 접속되었습니다.");
	} catch (Exception e) {
		out.println("Oracle 접속 에러!");
		e.printStackTrace();
	}
%>

</body>
</html>