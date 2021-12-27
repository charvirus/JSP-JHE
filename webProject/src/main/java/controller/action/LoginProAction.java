package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userlist.UserListDAO;

public class LoginProAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		UserListDAO dao = UserListDAO.getInstance();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String url = "";
		
		if (dao.checkLogin(id, pw)) {
			request.getSession().setAttribute("logResult", 1);
			request.getSession().setAttribute("log", id); 
			url="jsp/_1_main.jsp";
		}else {
			request.getSession().setAttribute("logResult", 0);
			url="service?command=login";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url); // set
		dispatcher.forward(request, response);
	}

}
