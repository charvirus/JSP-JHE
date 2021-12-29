package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import commentlist.CommentListDAO;
import commentlist.CommentListDTO;

public class CommentAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		CommentListDAO dao = CommentListDAO.getInstance();
		
		String uid = request.getParameter("uid");
		String comment_content = request.getParameter("comment_content");
		int tid = Integer.parseInt(request.getParameter("tid"));
		System.out.println(uid);
		System.out.println(comment_content);
		System.out.println(tid);
		
		CommentListDTO newComment = new CommentListDTO(tid, uid, comment_content);
		
		dao.addComment(newComment);
		String url = "jsp/_11_talkListView.jsp?no=" + tid;
		RequestDispatcher dispatcher = request.getRequestDispatcher(url); // set
		dispatcher.forward(request, response);
	}

}
