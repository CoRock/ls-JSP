<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- reference to the external style sheet file -->
<link rel="stylesheet" href="template.css" />

</head>
<body>

<header>
	<!-- semantic tag -->
	<jsp:include page="top.jsp"></jsp:include>
</header>
<div id="content">
	<section id="areaSub">
		<jsp:include page="left.jsp"></jsp:include>
	</section>
	
	<section id="areaMain">
		<jsp:include page='<%= request.getParameter("CONTENTPAGE") %>' />
		<%-- <jsp:include page="${param.CONTENTPAGE}" /> --%>
	</section>
	<footer>
		<jsp:include page="bottom.jsp"></jsp:include>
	</footer>
</div>

</body>
</html>