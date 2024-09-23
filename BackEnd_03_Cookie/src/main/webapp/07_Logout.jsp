<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<!-- 두가지 방법 -->
	<%session.removeAttribute("userid"); %> <!-- 속성제거 -->
	<%-- <%session.invalidate(); %> --%> <!-- 세션 제거 -->
	
	
	<%response.sendRedirect("index.html"); %>
	
	<!-- 페이지 이동 자바스크립트 이용 방법 -->
	<!-- <script>
		alert("로그아웃!!)
		location.href="index.html";
	</script> -->
	
</body>
</html>