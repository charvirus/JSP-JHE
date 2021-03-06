package userlist;

import java.sql.Timestamp;

public class UserListDTO {
	private int user_no, cnt_talk_title, cnt_movie_name;
	private String user_id, user_pw, user_nickname, user_name;
	private Timestamp user_regdate;

	public UserListDTO(int user_no, String user_id, String user_pw, String user_nickname, String user_name,
			Timestamp user_regdate) {
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nickname = user_nickname;
		this.user_name = user_name;
		this.user_regdate = user_regdate;
	}

	public UserListDTO(String user_id, String user_pw, String user_nickname, String user_name) {
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nickname = user_nickname;
		this.user_name = user_name;
	}

	public UserListDTO(String user_name, String user_nickname, String user_id, int cnt_talk_title, int cnt_movie_name,
			Timestamp user_regdate) {
		this.user_name = user_name;
		this.user_nickname = user_nickname;
		this.user_id = user_id;
		this.cnt_talk_title = cnt_talk_title;
		this.cnt_movie_name = cnt_movie_name;
		this.user_regdate = user_regdate;

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

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
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

	public int getCnt_talk_title() {
		return cnt_talk_title;
	}

	public int getCnt_movie_name() {
		return cnt_movie_name;
	}

}
