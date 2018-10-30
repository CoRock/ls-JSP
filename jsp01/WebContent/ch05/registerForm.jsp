<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="registerPro.jsp">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input name="id">
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input name="passwd">
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="name">
		</tr>
		<tr>
			<!-- colspan: 셀 합치기, rowspan: 행 합치기 -->
			<td align="center" colspan="2">
				<input type="submit" value="Confirm">
			</td>
		</tr>
	</table>
</form>

</body>
</html>