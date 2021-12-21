package talklist;

import java.sql.Timestamp;

public class TalklistDTO {
	private int talk_no, talk_likes;
	private String user_id, talk_title, talk_content;
	private Timestamp talk_regdate;

	public TalklistDTO(int talk_no, String user_id, String talk_title, String talk_content, int talk_likes,
			Timestamp talk_regdate) {
		this.talk_no = talk_no;
		this.user_id = user_id;
		this.talk_title = talk_title;
		this.talk_content = talk_content;
		this.talk_likes = talk_likes;
		this.talk_regdate = talk_regdate;
	}

	public TalklistDTO(String user_id, String talk_title, String talk_content) {
		this.user_id = user_id;
		this.talk_title = talk_title;
		this.talk_content = talk_content;
	}

	public int getTalk_no() {
		return talk_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public String getTalk_title() {
		return talk_title;
	}

	public void setTalk_title(String talk_title) {
		this.talk_title = talk_title;
	}

	public String getTalk_content() {
		return talk_content;
	}

	public void setTalk_content(String talk_content) {
		this.talk_content = talk_content;
	}

	public int getTalk_likes() {
		return talk_likes;
	}

	public void setTalk_likes(int talk_likes) {
		this.talk_likes = talk_likes;
	}

	public Timestamp getTalk_regdate() {
		return talk_regdate;
	}

}
