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
				String id = rs.getString(2);
				String pw = rs.getString(3);
				String nickname = rs.getString(4);
				Timestamp regdate = Timestamp.valueOf(rs.getString(5));

				userList.add(new UserListDTO(no, id, pw, nickname, regdate));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}

	public ArrayList<UserListDTO> getUserByid(String inpId) {
		try {
			conn = DBManager.getConnection();

			String str = "Select * from userlist where id = ?";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, inpId);
			rs = pstmt.executeQuery();

			userList = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String id = rs.getString(2);
				String pw = rs.getString(3);
				String nickname = rs.getString(4);
				Timestamp regdate = Timestamp.valueOf(rs.getString(5));

				userList.add(new UserListDTO(no, id, pw, nickname, regdate));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}

	public int addUser(UserListDTO user) {
		if (checkUser(user.getUser_id())) {

			try {
				UserListDTO newUser = new UserListDTO(user.getUser_id(), user.getUser_pw(), user.getUser_nickname());

				conn = DBManager.getConnection();

				String str = "insert into userlist(user_id,user_pw,user_nickname) values(?,?,?)";
				pstmt = conn.prepareStatement(str);
				pstmt.setString(1, newUser.getUser_id());
				pstmt.setString(2, newUser.getUser_pw());
				pstmt.setString(3, newUser.getUser_nickname());
				pstmt.executeUpdate();

				userList.add(newUser);
				System.out.println("»ðÀÔ ¼º°ø");
				return userList.size();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("»ðÀÔ ½ÇÆÐ");
			}

		} else {
			System.out.println("ID Áßº¹");
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
		for(UserListDTO user : userList) {
			if(user.getUser_id().equals(id)&&user.getUser_pw().equals(pw)) {
				return true;
			}
		}
		return false;
	}
	
}
