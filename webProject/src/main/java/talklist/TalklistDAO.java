package talklist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import util.DBManager;

public class TalklistDAO {
	private static TalklistDAO instance = new TalklistDAO();

	public static TalklistDAO getInstance() {
		return instance;
	}

	private ArrayList<TalklistDTO> talkList = null;

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public ArrayList<TalklistDTO> getTalkList() {
		try {
			conn = DBManager.getConnection();
			String str = "Select * from talklist";
			pstmt = conn.prepareStatement(str);
			rs = pstmt.executeQuery();

			talkList = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String id = rs.getString(2);
				String title = rs.getString(3);
				String content = rs.getString(4);
				String password = rs.getString(5);
				int likes = Integer.parseInt(rs.getString(6));
				Timestamp regDate = Timestamp.valueOf(rs.getString(7));

				talkList.add(new TalklistDTO(no, id, password, title, content, likes, regDate));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return talkList;
	}

	public ArrayList<TalklistDTO> getTalklistDetails(String no) {
		try {
			conn = DBManager.getConnection();
			String str = "select * from talklist where talk_no = " + no;
			pstmt = conn.prepareStatement(str);
			rs = pstmt.executeQuery();

			talkList = new ArrayList<>();

			while (rs.next()) {
				int tno = Integer.parseInt(rs.getString(1));
				String uid = rs.getString(2);
				String title = rs.getString(3);
				String content = rs.getString(4);
				String password = rs.getString(5);
				int likes = Integer.parseInt(rs.getString(6));
				Timestamp regDate = Timestamp.valueOf(rs.getString(7));

				talkList.add(new TalklistDTO(tno, uid,password, title, content, likes, regDate));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return talkList;
	}

	public void addTalklist(TalklistDTO talk) {
		try {
			talkList = new ArrayList<>();

			conn = DBManager.getConnection();
			
			String str = "insert into talklist(user_id,talk_password,talk_title,talk_content) " + "values(?,?,?,?)";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, talk.getUser_id());
			pstmt.setString(2,talk.getTalk_password());
			pstmt.setString(3, talk.getTalk_title());
			pstmt.setString(4, talk.getTalk_content());
			pstmt.executeUpdate();
			
			talkList.add(talk);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateTalklist(String no, String title, String content) {
		try {
			conn = DBManager.getConnection();
			String str = "update talklist set talk_title = ?,talk_content = ? where talk_no = ?";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, no);
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getBoardPW(String no) {
		String getPw = "";
		int tempNo = Integer.parseInt(no);
		try {
			conn = DBManager.getConnection();
			String str = "Select * from talklist where talk_no = ?";
			
			pstmt = conn.prepareStatement(str);
			pstmt.setInt(1, tempNo);
			rs = pstmt.executeQuery();
			
			if(rs.next())
				getPw = rs.getString(5);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return getPw;
	}
	
	public void deleteTalk(String id) {
		try {
			conn = DBManager.getConnection();
			String str = "delete from talklist where talk_no = ?";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
