package com.ssafy.practice;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ServletParameter
 */
@WebServlet("/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	resp.setContentType("text/html;characterset=UTF-8");
    	doProcess(req, resp);
    }
    
    @Override
    	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    		doGet(req, resp);
    	}
    

    private void doProcess(HttpServletRequest req, HttpServletResponse resp) {
		String action = req.getParameter("action");
		switch (action) {
		case "regist":
			// 등록 작업
			// 인간의 대한 정보가 요청 통로 안에 몽땅 들어있다
			break;
		case "gugu":
			// 구구단
			break;
		}

	}
}
