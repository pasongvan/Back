<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	
	// id, pw를 이용 => 실제 유저인지 확인
	// 혹은 Manager를 통해 유저 목록에서 확인 가능
	
	// 조건문 확인(임시)
	if(id.equals("ssafy") && pw.equals("1234")) {
		// 로그인 성공 (=> 세션에 저장)
		// JSP에서는 session 기본 객체 이미 존재
		session.setAttribute("userid", id); // pw는 세션에 넘기면 안됨!!!
		
		
		// Servlet에서는 session을 어떻게?
		// 쿠키 목록을 전부 가져와서
		// JSESSIONID 쿠키 가져와서
		// 세션 ID 가지고 온다
		// => request.getSession(); 한번에!
		HttpSession mySession = request.getSession();
		
		// Main.jsp 페이지 이동
		// 리다이렉트 방식으로 해야
		// 포워딩: 로그인 폼 => 메인 연결 => password까지 함께 전송
		response.sendRedirect("08_Main.jsp");
	}
	else {
		// 로그인 실패
		response.sendRedirect("07_LoginForm.jsp");
	}
%>