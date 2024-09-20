<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%!
	int count1 = 0;
%>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호출</title>
</head>
<body>

	<%
		int count2 = 0;
	
		out.print("count1: " + (count1++) + "<br>"); // 서버에 서블릿이 올라가있는 동안 유지
		out.print("count2: " + (count2++) + "<br>"); // 서비스 메소드는 새로고침 시 매번 다시 호출
	%>

	<a href="index.html">홈으로</a>
</body>
</html>