<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="../include/jquery-3.2.1.min.js"></script>
<script>
	// 페이지 로딩이 끝나면 자동으로 실행되는 코드
	$(function() {
		list();
		$("#btnSave").click(function() {
			insert();
		});
	});
	
	function insert() {
		var param = "userid=" + $("#userid").val() +
						  "&passwd=" + $("#passwd").val() +
						  "&name=" + $("#name").val() +
						  "&email=" + $("#email").val() +
						  "&hp=" + $("#hp").val();
		$.ajax({
			type: "post",
			url: "/jsp02/member_servlet/join.do",
			data: param,
			success: function() {
				list();		// 회원목록 갱신
				// 입력 값 초기화
				$("#userid").val("");
				$("#passwd").val("");
				$("#name").val("");
				$("#email").val("");
				$("#hp").val("");
			}
		});
	}
	
	function list() {
		// 회원 목록을 div에 출력
		$.ajax({
			type: "post",
			url: "/jsp02/member_servlet/list.do",
			success: function(result) {
				// responseText
				console.log(result);
				$("#memberList").html(result);
			}
		});
	}
</script>

</head>
<body>

<h2>회원관리</h2>

아이디: <input id="userid">
비밀번호: <input type="password" id="passwd"><br>

이름: <input id="name">
이메일: <input id="email"><br>

휴대폰: <input id="hp">
<button type="button" id="btnSave">추가</button>

<div id="memberList"></div>

</body>
</html>