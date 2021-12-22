package wishlist;

import java.sql.Timestamp;

public class WishListDTO {
	private int wish_no,movie_no;
	private String user_id, movie_name;
	private Timestamp add_date;

	public WishListDTO(int wish_no, String user_id, int movie_no, String movie_name, Timestamp add_date) {
		this.wish_no = wish_no;
		this.user_id = user_id;
		this.movie_no = movie_no;
		this.movie_name = movie_name;
		this.add_date = add_date;
	}
	
	public WishListDTO(String user_id,  int movie_no,String movie_name) {
		this.user_id = user_id;
		this.movie_no = movie_no;
		this.movie_name = movie_name;
	}

	public int getWish_no() {
		return wish_no;
	}

	public void setWish_no(int wish_no) {
		this.wish_no = wish_no;
	}

	public String getUser_id() {
		return user_id;
	}
	
	public int getMovie_no() {
		return movie_no;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public Timestamp getAdd_date() {
		return add_date;
	}

}
