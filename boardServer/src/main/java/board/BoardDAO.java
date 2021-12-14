package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

public class BoardDAO {

	private static BoardDAO instance = new BoardDAO();

	public static BoardDAO getInstance() {
		return instance;
	}

	private ArrayList<BoardDTO> contents = null;

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	private Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/board?serverTimezone=UTC";
			String id = "root";
			String pw = "root";
			conn = DriverManager.getConnection(url, id, pw);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public ArrayList<BoardDTO> getBoards() {
		try {
			conn = getConnection();

			String str = "select * from board";
			pstmt = conn.prepareStatement(str);
			rs = pstmt.executeQuery();

			contents = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String id = rs.getString(2);
				String pw = rs.getString(3);
				String title = rs.getString(4);
				String content = rs.getString(5);
				int likes = Integer.parseInt(rs.getString(6));
				Timestamp regDate = Timestamp.valueOf(rs.getString(7));

				contents.add(new BoardDTO(no, id, pw, title, content, likes, regDate));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return contents;
	}

	public ArrayList<BoardDTO> getBoards(int boardNo) {
		try {
			conn = getConnection();

			String str = "select * from board where no=" + boardNo;
			pstmt = conn.prepareStatement(str);
			rs = pstmt.executeQuery();

			contents = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String id = rs.getString(2);
				String pw = rs.getString(3);
				String title = rs.getString(4);
				String content = rs.getString(5);
				int likes = Integer.parseInt(rs.getString(6));
				Timestamp regDate = Timestamp.valueOf(rs.getString(7));

				contents.add(new BoardDTO(no, id, pw, title, content, likes, regDate));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return contents;
	}

	public void addBoards(BoardDTO board) {
		try {
			BoardDTO newBoard = new BoardDTO(board.getId(), board.getPw(), board.getTitle(), board.getContent());
			Timestamp regDate = new Timestamp(Calendar.getInstance().getTimeInMillis());
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String regDate_S = sdf.format(regDate);

			conn = getConnection();

			String str = "Insert into board(id,pw,title,content,regdate) values(?,?,?,?,?)";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, board.getId());
			pstmt.setString(2, board.getPw());
			pstmt.setString(3, board.getTitle());
			pstmt.setString(4, board.getContent());
			pstmt.setString(5, regDate_S);
			pstmt.executeUpdate();

			contents.add(newBoard);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateBoard(BoardDTO board, String no) {
		Timestamp regDate = new Timestamp(Calendar.getInstance().getTimeInMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String regDate_S = sdf.format(regDate);
		try {
			conn = getConnection();
			String str = "Update board set title = ?, content = ?, regdate = ? where no = ?";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, regDate_S);
			pstmt.setString(4, no);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getBoardPW(String no) {
		String getPw = "";

		try {
			conn = getConnection();
			String str = "Select * from board where no = ?";
			
			pstmt = conn.prepareStatement(str);
			pstmt.setInt(1, Integer.parseInt(no));
			rs = pstmt.executeQuery();
			
			if(rs.next())
				getPw = rs.getString(3);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return getPw;
	}
	
	
	public void deleteBoard(String no) {
		try {
			conn = getConnection();
			String str = "delete from board where no = ?";
			
			pstmt = conn.prepareStatement(str);
			pstmt.setInt(1, Integer.parseInt(no));
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
