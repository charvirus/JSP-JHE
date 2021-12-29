package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import talklist.TalklistDAO;

public class UpLikeAction implements Action {
	String talk_id = "";

	public UpLikeAction(String no) {
		talk_id = no;
	}

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");

		TalklistDAO dao = TalklistDAO.getInstance();
		dao.upLike(talk_id);
		String url = "jsp/_11_talkListView.jsp?no=" + talk_id;
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
