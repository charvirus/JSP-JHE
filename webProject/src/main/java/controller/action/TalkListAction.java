package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TalkListAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String url = "jsp/_9_talkList.jsp";
		RequestDispatcher dispathcher = request.getRequestDispatcher(url);
		dispathcher.forward(request, response);
	}
	
}
