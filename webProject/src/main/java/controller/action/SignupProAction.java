package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userlist.UserListDAO;
import userlist.UserListDTO;

public class SignupProAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String url = "";
		UserListDAO dao = UserListDAO.getInstance();
		String nickName = request.getParameter("nickname");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		UserListDTO newUser = new UserListDTO(id, pw, nickName,name);

		if (dao.addUser(newUser) != -1) {
			url = "jsp/_1_main.jsp";
		} else {
			request.getSession().setAttribute("signUpResult", 0);
			url = "jsp/_7_signUp.jsp";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
