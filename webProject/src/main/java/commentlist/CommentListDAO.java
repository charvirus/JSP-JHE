package commentlist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import util.DBManager;

public class CommentListDAO {
	private static CommentListDAO instance = new CommentListDAO();

	public static CommentListDAO getInstance() {
		return instance;
	}

	private ArrayList<CommentListDTO> commentList = null;

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public ArrayList<CommentListDTO> getCommentList() {
		try {
			conn = DBManager.getConnection();
			String str = "Select * from commentlist";
			pstmt = conn.prepareStatement(str);
			rs = pstmt.executeQuery();

			commentList = new ArrayList<>();

			while (rs.next()) {
				int id = rs.getInt(1);
				int talk_no = rs.getInt(2);
				String uid = rs.getString(3);
				String comment_contents = rs.getString(4);
				Timestamp date = Timestamp.valueOf(rs.getString(5));

				commentList.add(new CommentListDTO(id, talk_no, uid, comment_contents, date));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return commentList;
	}

	public ArrayList<CommentListDTO> getCommentListByTid(String no) {
		try {
			conn = DBManager.getConnection();
			String str = "Select * from commentlist where talk_no = ?";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();

			commentList = new ArrayList<>();

			while (rs.next()) {
				int id = rs.getInt(1);
				int talk_no = rs.getInt(2);
				String uid = rs.getString(3);
				String comment_contents = rs.getString(4);
				Timestamp date = Timestamp.valueOf(rs.getString(5));

				commentList.add(new CommentListDTO(id, talk_no, uid, comment_contents, date));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return commentList;
	}

	public void addComment(CommentListDTO comment) {
		try {
			conn = DBManager.getConnection();
			String str = "insert into commentList(talk_no,user_id,comment_content) values(?,?,?)";
			pstmt = conn.prepareStatement(str);
			pstmt.setInt(1, comment.getTalk_id());
			pstmt.setString(2, comment.getUser_id());
			pstmt.setString(3,comment.getComment_content());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
