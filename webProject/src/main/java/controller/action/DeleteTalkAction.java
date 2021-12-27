package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import talklist.TalklistDAO;

public class DeleteTalkAction implements Action {
	String no = "";

	public DeleteTalkAction(String no) {
		this.no = no;
	}

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		TalklistDAO dao = TalklistDAO.getInstance();
		dao.deleteTalk(no);
		String url = "service?command=talkList";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
