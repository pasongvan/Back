<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>드라마 반복</title>
</head>
<body>
	<%
		String[] dramaList = {"파스타", "왔다장보리", "눈물의여왕", "태조왕건"};
		pageContext.setAttribute("dramaList", dramaList);
	%>
	
	<h3>c:forEach</h3>
	<ol>
		<c:forEach items="${dramaList}" var="drama">
			<li>${drama}</li>
		</c:forEach>
	</ol>
	
	<hr>
	
	<c:forEach items="${dramaList}" var="drama" varStatus="status" begin="1" end="3" step="2">
		<div>${status.index} : ${drama}</div>
	</c:forEach>
	
	<hr>
	
	<c:forEach items="${dramaList}" var="drama" varStatus="status" begin="1" end="3" step="2">
		<div>${status.count} : ${drama}</div>
	</c:forEach>

</body>
</html>