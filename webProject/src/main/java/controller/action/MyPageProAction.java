package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userlist.UserListDAO;

public class MyPageProAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		UserListDAO dao = UserListDAO.getInstance();
		String url = "";

		String id = (String) request.getSession().getAttribute("log");
		String pw = request.getParameter("pw");
		if (dao.checkLogin(id, pw)) {
			url = "jsp/_15_MyPage.jsp";
		} else {
			request.getSession().setAttribute("myPageResult", 0);
			url = "jsp/_14_MyPageCheck.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
