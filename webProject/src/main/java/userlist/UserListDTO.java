package userlist;

import java.sql.Timestamp;

public class UserListDTO {
	private int user_no;
	private String user_id, user_pw, user_nickname;
	private Timestamp user_regdate;

	public UserListDTO(int user_no, String user_id, String user_pw, String user_nickname, Timestamp user_regdate) {
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nickname = user_nickname;
		this.user_regdate = user_regdate;
	}
	
	public UserListDTO( String user_id, String user_pw, String user_nickname) {
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nickname = user_nickname;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	public int getUser_no() {
		return user_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public Timestamp getUser_regdate() {
		return user_regdate;
	}

}
