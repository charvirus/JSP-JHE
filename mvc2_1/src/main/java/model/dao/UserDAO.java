package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import model.dto.UserDTO;
import util.DBManager;

public class UserDAO {
	private static UserDAO instance = new UserDAO();

	public static UserDAO getInstance() {
		return instance;
	}

	private ArrayList<UserDTO> userList = null;

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public ArrayList<UserDTO> getUserList() {
		try {
			conn = DBManager.getConnection();		// DB 연동

			// 쿼리를 스트링 타입으로 작성
			String str = "select * from users";		// sql 쿼리를 준비
			pstmt = conn.prepareStatement(str);		// 쿼리를 prepareStatement() 메소드를 활용하여 태움
			rs = pstmt.executeQuery();				// 쿼리를 날림과 동시에 rs로 결과값을 받음
			
			userList = new ArrayList<>();
			
			while(rs.next()) {	// 행 (row) 단위
				String id = rs.getString(1);
				String pw = rs.getString(2);
				Timestamp regDate = rs.getTimestamp(3);
				
				userList.add(new UserDTO(id,pw,regDate));
			}
			
			System.out.println("데이터 불러오기 완료!");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("데이터 불러오기 실패..");
		}
		return userList;
	}

	public boolean addUser(UserDTO user) {
		if (checkUser(user.getId())) {
			try {
				UserDTO newUser = new UserDTO(user.getId(), user.getPw());

				conn = DBManager.getConnection();

				String str = "insert into users(id,pw) values(?,?)";
				pstmt = conn.prepareStatement(str);
				pstmt.setString(1, user.getId());
				pstmt.setString(2, user.getPw());
				pstmt.executeUpdate();
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			System.out.println("아이디 중복");
		}
		return false;
	}

	public boolean checkUser(String id) {
		userList = getUserList();
		for (UserDTO user : userList) {
			if (id.equals(user.getId())) {
				return false;
			}
		}
		return true;
	}

	public boolean checkLogin(String id, String pw) {
		userList = getUserList();
		for (UserDTO user : userList) {
			if (user.getId().equals(id) && user.getPw().equals(pw)) {
				return true;
			}
		}
		return false;
	}
}
