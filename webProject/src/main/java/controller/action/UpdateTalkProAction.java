package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import talklist.TalklistDAO;

public class UpdateTalkProAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String url = "";

		String no = request.getParameter("no");
		String pw = request.getParameter("pw");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");

		TalklistDAO dao = TalklistDAO.getInstance();

		String getPw = dao.getBoardPW(no);

		if (getPw.equals(pw)) {
			dao.updateTalklist(no, title, contents);
			url = "service?command=watchTalk&no=" + no;
		}else {
			request.getSession().setAttribute("updateResult", 0);
			url = "service?command=updateTalkForm&no="+no;
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
