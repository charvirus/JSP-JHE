package userlist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import util.DBManager;

public class UserListDAO {
	private static UserListDAO instance = new UserListDAO();

	public static UserListDAO getInstance() {
		return instance;
	}

	private ArrayList<UserListDTO> userList = null;

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public ArrayList<UserListDTO> getUserList() {
		try {
			conn = DBManager.getConnection();

			String str = "Select * from userlist";
			pstmt = conn.prepareStatement(str);
			rs = pstmt.executeQuery();

			userList = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String name = rs.getString(2);
				String id = rs.getString(3);
				String pw = rs.getString(4);
				String nickname = rs.getString(5);
				Timestamp regdate = Timestamp.valueOf(rs.getString(6));

				userList.add(new UserListDTO(no, id, pw, nickname, name, regdate));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}

	public ArrayList<UserListDTO> getUserByid(String inpId) {
		try {
			conn = DBManager.getConnection();

			String str = "Select * from userlist where user_id = ?";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, inpId);
			rs = pstmt.executeQuery();

			userList = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String name = rs.getString(2);
				String id = rs.getString(3);
				String pw = rs.getString(4);
				String nickname = rs.getString(5);
				Timestamp regdate = Timestamp.valueOf(rs.getString(6));

				userList.add(new UserListDTO(no, id, pw, nickname, name, regdate));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}

	public ArrayList<UserListDTO> getUserMyPageInfo(String inpId) {
		try {
			conn = DBManager.getConnection();

			String str = "select user_name,user_nickname, user_id,\r\n"
					+ "(select count(*) from talklist where user_id = \"brandon413\")as '게시글 수',\r\n"
					+ "(select count(*) from wishlist where user_id = \"brandon413\")as '찜한 영화 수'," + "user_regdate\r\n"
					+ "from userlist \r\n" + "where user_id =  ?";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, inpId);
			rs = pstmt.executeQuery();

			userList = new ArrayList<>();

			while (rs.next()) {
				String name = rs.getString(1);
				String nickname = rs.getString(2);
				String id = rs.getString(3);
				int talk_title_cnt = Integer.parseInt(rs.getString(4));
				int movie_name_cnt = Integer.parseInt(rs.getString(5));
				Timestamp regdate = Timestamp.valueOf(rs.getString(6));

				userList.add(new UserListDTO(name,nickname, id, talk_title_cnt, movie_name_cnt, regdate));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}

	public int addUser(UserListDTO user) {
		if (checkUser(user.getUser_id())) {

			try {
				UserListDTO newUser = new UserListDTO(user.getUser_id(), user.getUser_pw(), user.getUser_nickname(),user.getUser_name());

				conn = DBManager.getConnection();

				String str = "insert into userlist(user_id,user_pw,user_nickname,user_name) values(?,?,?,?)";
				pstmt = conn.prepareStatement(str);
				pstmt.setString(1, newUser.getUser_id());
				pstmt.setString(2, newUser.getUser_pw());
				pstmt.setString(3, newUser.getUser_nickname());
				pstmt.setString(4, newUser.getUser_name());
				pstmt.executeUpdate();

				userList.add(newUser);
				System.out.println("삽입 성공");
				return userList.size();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("삽입 실패");
			}

		} else {
			System.out.println("ID 중복");
		}
		return -1;
	}

	public boolean checkUser(String id) {
		userList = getUserList();
		for (UserListDTO user : userList) {
			if (id.equals(user.getUser_id())) {
				return false;
			}
		}
		return true;
	}

	public boolean checkLogin(String id, String pw) {
		userList = getUserList();
		for (UserListDTO user : userList) {
			if (user.getUser_id().equals(id) && user.getUser_pw().equals(pw)) {
				return true;
			}
		}
		return false;
	}

}
