package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogoutAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.getSession().removeAttribute("sID");
		
		String url = "/views/main.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);	// set
		dispatcher.forward(request, response);
		
	}

}
