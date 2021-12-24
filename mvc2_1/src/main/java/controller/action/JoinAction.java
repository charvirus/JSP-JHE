package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.UserDAO;
import model.dto.UserDTO;

public class JoinAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String url = "";
		
		
		UserDAO dao = UserDAO.getInstance();
		UserDTO newUser = new UserDTO(id, pw);
		
		if(dao.addUser(newUser)) {
			url = "/views/login.jsp";
		}else{
			url = "/views/join.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);	// set
		dispatcher.forward(request, response);
	}

}
