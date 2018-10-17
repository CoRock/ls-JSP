<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	dl : definition list, 정의목록
	dt : definition title, 제목
	dd : definition description, 설명
-->

<form name="form1" method="post" action="ifTest.jsp">
	<dl>	<!-- Definition List(정의목록) -->
		<dd>이름: <input name="name"></dd>
		<dd>색상:
			<select name="color">
				<option value="blue">파랑</option>
				<option value="green">초록</option>
				<option value="red">빨강</option>				
			</select>
		</dd>
		<dd>	<!-- Definition Description(설명) -->
			<input type="range" name="range" min="1" max="100"
					onchange="document.form1.rangeout.value=this.value">
			<output name="rangeout" for="range">5</output>
		</dd>
		<dd><input type="submit" value="확인"></dd>
	</dl>
</form>

</body>
</html>