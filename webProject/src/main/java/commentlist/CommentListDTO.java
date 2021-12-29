package commentlist;

import java.sql.Timestamp;

public class CommentListDTO {
	private int comment_id, talk_id;
	private String user_id, comment_content;
	private Timestamp comment_date;

	public CommentListDTO(int comment_id, int talk_id, String user_id, String comment_content, Timestamp comment_date) {
		this.comment_id = comment_id;
		this.talk_id = talk_id;
		this.user_id = user_id;
		this.comment_content = comment_content;
		this.comment_date = comment_date;
	}

	public CommentListDTO(int talk_id,String user_id, String comment_content) {
		this.talk_id = talk_id;
		this.user_id = user_id;
		this.comment_content = comment_content;
	}

	public String getComment_content() {
		return comment_content;
	}

	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}

	public Timestamp getComment_date() {
		return comment_date;
	}

	public void setComment_date(Timestamp comment_date) {
		this.comment_date = comment_date;
	}

	public int getComment_id() {
		return comment_id;
	}

	public int getTalk_id() {
		return talk_id;
	}

	public String getUser_id() {
		return user_id;
	}

}
