package member;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// servlet mapping: url과 servlet을 연결시키는 코드
@WebServlet("/member_servlet/*")
public class MemberController extends HttpServlet {

	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 사용자가 요청한 주소
		String url = request.getRequestURI().toString();
		// 컨텍스트 패스(웹 프로젝트의 식별자)
		String context = request.getContextPath();
		
		MemberDAO dao = new MemberDAO();
		// A.indexOf(B): A의 내용 중에서 B가 포함된 인덱스 값
		if (url.indexOf("list.do") != -1) {
			Map<String, Object> map = new HashMap<>();
			List<MemberDTO> list = dao.memberList();		// 리스트 리턴
			
			map.put("list", list);		// 맵에 자료 저장				
			map.put("count", list.size());
			// member_list.jsp에서 참조할 수 있도록 자료 저장
			request.setAttribute("map", map);
			
			String page = "/ch06/member_list.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);		// 포워딩
			
		} else if (url.indexOf("join.do") != -1) {			
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String hp = request.getParameter("hp");
			
			// System.out.println("join.do: " + userid + ", " + passwd + ", " + name);
			
			MemberDTO dto = new MemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setName(name);
			dto.setEmail(email);
			dto.setHp(hp);
			
			dao.insert(dto);
			
		} else if (url.indexOf("view.do") != -1) {
			String userid = request.getParameter("userid");
			// System.out.println("clicked id: " + userid);
			
			MemberDTO dto = dao.memberDetail(userid);
			request.setAttribute("dto", dto);
			
			String page = "/ch06/member_view.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		} else if (url.indexOf("update.do") != -1) {
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");			
			String hp = request.getParameter("hp");	
			
			MemberDTO dto = new MemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setName(name);
			dto.setEmail(email);
			dto.setHp(hp);
			// 레코드 수정 처리
			dao.update(dto);
			// 페이지 이동
			response.sendRedirect(context + "/ch06/member.jsp");
			
		} else if (url.indexOf("delete.do") != -1) {
			String userid = request.getParameter("userid");
			// 레코드 삭제 처리
			dao.delete(userid);
			// 페이지 이동
			response.sendRedirect(context + "/ch06/member.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
