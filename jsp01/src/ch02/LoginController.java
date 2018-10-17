package ch02;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.MemberDAO;

/**
 * Servlet: 서버에서 실행되는 자바 프로그램
 */
// @WebServlet("/ch02_servlet/*")
@WebServlet("/ch02_servlet/login.do")
public class LoginController extends HttpServlet {

	// private static final long serialVersionUID = 1L;
	
	// get 방식 호출
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		System.out.println(request.getRequestURL());
		System.out.println(request.getRequestURI());
		
		String uri = request.getRequestURI();
		
		// 문자열.indexOf("찾을내용"): 내용이 있으면 인덱스, 없으면 -1
		System.out.println(uri.indexOf("login.do"));
		System.out.println(uri.indexOf("logout.do"));
		
		if (uri.indexOf("login.do") != -1) {
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			System.out.println(userid);
			System.out.println(passwd);
			
			MemberDAO dao = new MemberDAO();
			String name = dao.loginCheck(userid, passwd);	// check login
			String message = "";
			String page = "";		// page address you will transfer
			
			if (name == null) {	// login failed
				message = "아이디 또는 비밀번호가 일치하지 않습니다.";
				message = URLEncoder.encode(message, "utf-8");
				page = "/ch02_servlet/sessionTestForm.jsp?message=" + message;
			} else {
				// login success
				message = name + " 님 환영합니다.";
				
				HttpSession session = request.getSession();		// create a session object
				session.setAttribute("userid", userid);				// save attributes to session
				session.setAttribute("message", message);
				page = "/ch02_servlet/session_success.jsp";
			}
			System.out.println(message);
			response.sendRedirect(request.getContextPath() + page);
		} else if (uri.indexOf("logout.do") != -1) {
			// 세션 변수에 저장된 값들을 제거
			HttpSession session = request.getSession();
			session.invalidate();
			
			// 주소창에는 한글, 특수문자를 넘길 수 없으므로 인코딩을 해야 함
			// URLEncoder.encode("인코딩할 문자열", "언어셋");
			String message = URLEncoder.encode("로그아웃 되었습니다.", "utf-8");
			// 페이지를 로그인 화면으로 이동
			response.sendRedirect(request.getContextPath()
					+ "/ch02_servlet/sessionTestForm.jsp?message=" + message);
			// 01;08;22
		}		
	}

	// post 방식 호출
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
