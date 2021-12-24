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
			conn = DBManager.getConnection();		// DB ����

			// ������ ��Ʈ�� Ÿ������ �ۼ�
			String str = "select * from users";		// sql ������ �غ�
			pstmt = conn.prepareStatement(str);		// ������ prepareStatement() �޼ҵ带 Ȱ���Ͽ� �¿�
			rs = pstmt.executeQuery();				// ������ ������ ���ÿ� rs�� ������� ����
			
			userList = new ArrayList<>();
			
			while(rs.next()) {	// �� (row) ����
				String id = rs.getString(1);
				String pw = rs.getString(2);
				Timestamp regDate = rs.getTimestamp(3);
				
				userList.add(new UserDTO(id,pw,regDate));
			}
			
			System.out.println("������ �ҷ����� �Ϸ�!");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("������ �ҷ����� ����..");
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
			System.out.println("���̵� �ߺ�");
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
