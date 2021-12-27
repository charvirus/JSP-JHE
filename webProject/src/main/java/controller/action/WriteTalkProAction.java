package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import talklist.TalklistDAO;
import talklist.TalklistDTO;

public class WriteTalkProAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String url = "service?command=talkList";

		String id = (String) request.getSession().getAttribute("log");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String password = request.getParameter("pw");
		TalklistDAO dao = TalklistDAO.getInstance();
		TalklistDTO newTalk = new TalklistDTO(id, password, title, contents);

		dao.addTalklist(newTalk);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
