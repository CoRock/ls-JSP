<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="member.MemberDTO" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="../include/jquery-3.2.1.min.js"></script>
<script>
	$(function() {
		// id가 btnUpdate인 태그를 클릭하면
		$("#btnUpdate").click(function() {
			// 폼 데이터를 제출할 주소
			document.form1.action="/jsp02/member_servlet/update.do";
			// 폼 데이터를 서버에 제출
			document.form1.submit();
		});
		
		$("#btnDelete").click(function() {
			if (confirm("삭제하시겠습니까?")) {
				document.form1.action="/jsp02/member_servlet/delete.do";
				document.form1.submit();
			}
		});
	});
</script>

</head>
<body>

<% MemberDTO dto = (MemberDTO) request.getAttribute("dto"); %>

<form name="form1" method="post">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><%= dto.getUserid() %></td>
			<%-- <td>${dto.userid}</td> --%>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="passwd" value="<%= dto.getPasswd() %>"></td>
			<%-- <td><input type="password" name="passwd" value="${dto.passwd}"></td> --%>
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="name" value="<%= dto.getName() %>"></td>
			<%-- <td><input type="name" value="${dto.name}"></td> --%>
		</tr>
		<tr>
			<td>회원가입일자</td>
			<td><%= dto.getJoin_date() %></td>
			<%-- <td>${dto.reg_date}</td> --%>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input name="email" value="<%= dto.getEmail() %>"></td>
			<%-- <td><input name="email" value="${dto.email}"></td> --%>
		</tr>
		<tr>
			<td>휴대폰</td>
			<td><input name="hp" value="<%= dto.getHp() %>"></td>
			<%-- <td><input name="hp" value="${dto.hp}"></td> --%>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="hidden" name="userid" value="${dto.userid}">
				<button type="button" id="btnUpdate">수정</button>
				<button type="button" id="btnDelete">삭제</button>
			</td>
		</tr>
	</table>
</form>

</body>
</html>