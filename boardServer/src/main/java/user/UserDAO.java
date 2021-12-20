package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

public class UserDAO {
	// DAO : Data Access Object

	// 1. Singletone Pattern
	// ㄴ 데이터에 대한 중앙관리가 한번 되는 프로그램이기 때문에 싱글톤 패턴으로 만들어야함
	

	private static UserDAO instance = new UserDAO();

	public static UserDAO getInstance() {
		return instance;
	}

	// 2. DTO에 대한 객체 배열 (ArrayList)
	private ArrayList<UserDTO> users = null;

	// 3. 실제 데이터베이스에 연동할 객체들 (SQL)
	// ㄴ 1) Connection (DB 연동)
	// ㄴ 2) DB에 쿼리를 날릴 준비
	// ㄴ 3) execute 된 쿼리에 대한 결과값을 가여와줌

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	private Connection getConnection() {
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			//jdbc:mysql://localhost:3306/스키마명?serverTimezone=UTC
			String url = "jdbc:mysql://localhost:3306/board?serverTimezone=UTC"; // DB 주소
			String id = "root";
			String pw = "root";
			conn = DriverManager.getConnection(url,id,pw);
			
			if(conn != null) {
				System.out.println("DB연동성공");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("X");
		}
		return conn;
	}

	
	// 데이터 조회 (객체 배열을 초기화 -> 가져온 데이터에 대해서)
	public ArrayList<UserDTO> getUsers() {
		try {
			conn = getConnection();		// DB 연동

			// 쿼리를 스트링 타입으로 작성
			String str = "select * from users";		// sql 쿼리를 준비
			pstmt = conn.prepareStatement(str);		// 쿼리를 prepareStatement() 메소드를 활용하여 태움
			rs = pstmt.executeQuery();				// 쿼리를 날림과 동시에 rs로 결과값을 받음
			
			users = new ArrayList<>();
			
			while(rs.next()) {	// 행 (row) 단위
				String id = rs.getString(1);
				String pw = rs.getString(2);
				Timestamp regDate = rs.getTimestamp(3);
				
				users.add(new UserDTO(id,pw,regDate));
			}
			
			System.out.println("데이터 불러오기 완료!");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("데이터 불러오기 실패..");
		}
		
		return users;
	}	
	
	public int addUser(UserDTO user) {
		// 중복예회처리 메소드 추가(숙제)
		if(checkUser(user.getId())) {
			try {
				UserDTO newUser = new UserDTO(user.getId(),user.getPw(),new Timestamp(Calendar.getInstance().getTimeInMillis()));

				conn = getConnection();
				
				String str = "insert into users values(?,?,?)"; // ? 자리는 맵핑값을 setter로 처리할 것
				pstmt = conn.prepareStatement(str);
				pstmt.setString(1,newUser.getId());
				pstmt.setString(2,newUser.getPw());
				pstmt.setTimestamp(3,newUser.getRegDate());
				
				pstmt.executeUpdate();	// 완성된 쿼리를 연동된 db에 날림
				
				users.add(newUser);		// 실행중인 상태에서 dao의 객체배열도 업데이트
				
				System.out.println("업데이트 성공");
				return users.size();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("업데이트 실패");
			}		
		}else {
			System.out.println("ID가 중복됩니다.");
		}
		
		return -1;
	}


	private boolean checkUser(String id) {
		users = getUsers();
		for(UserDTO user : users) {
			if(id.equals(user.getId())) {
				return false;
			}
		}
		return true;
	}
	
	public boolean checkLogin(String id, String pw) {
		users = getUsers();
		for(UserDTO user : users) {
			if(user.getId().equals(id)&&user.getPw().equals(pw)) {
				return true;
			}
		}
		
		return false;
	}
	
	public int deleteUser(String id,String pw) {
		
		users = getUsers();
		int delIdx= -1;

		for(int i = 0;i<users.size();i++) {
			if(id.equals(users.get(i).getId()) && pw.equals(users.get(i).getPw())) {
				delIdx = i;
			}
		}
		
		if(delIdx != -1) {
			
			try {
				conn = getConnection();
				
				String sql = "delete from users where id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();	// db 
				
				users.remove(delIdx);	// dao
				return delIdx;
			}catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		return delIdx;
	}
}
