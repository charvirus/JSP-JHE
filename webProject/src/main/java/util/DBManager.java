package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
	private DBManager() {}
	private static DBManager instance = new DBManager();
	public static DBManager getInstance() {
		return instance;
	}
	
	// ��� DAO �ȿ��� DB ������ �ʿ��� ��,
	// Connection conn = DBManager.getConnection();
	
	// ������ DB(Schema)�ȿ� �ִ� ������ ��,
	// � ���̺��� ���� -> use ��Ű�� ��(SQL ��ɾ� �߰�)
	
	public static Connection getConnection() {
		Connection conn = null;
		
		// DB���� �ڵ�
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/movieboard?serverTimezone=UTC";
			String id = "root";
			String pw = "root";
			
			conn = DriverManager.getConnection(url,id,pw);
			
			if(conn != null) {
				System.out.println("�����ͺ��̽� ���� ����!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("�����ͺ��̽� ���� ����");
		}
		return conn;
		
	}
	
}
