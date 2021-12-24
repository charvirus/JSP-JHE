package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.UserDAO;

public class LoginAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String url = "";
		
		UserDAO dao = UserDAO.getInstance();
		if(dao.checkLogin(id, pw)) {
			request.getSession().setAttribute("logResult", 1);
			request.getSession().setAttribute("sID", id); 
			url = "/views/main.jsp";
		}else {
			request.getSession().setAttribute("logResult", 0);
			url = "/views/login.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);	// set
		dispatcher.forward(request, response);
		
	}
	
}
