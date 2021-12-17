package movielist;

import java.sql.Timestamp;

public class MovieListDTO {
	private int movie_no, movie_time;
	private String movie_name, movie_genre, movie_director, movie_mainactor;
	private float movie_score;
	Timestamp movie_reldate;

	public MovieListDTO(int movie_no, String movie_name, float movie_score, int movie_time, Timestamp movie_reldate,
			String movie_genre, String movie_director, String movie_mainactor) {
		this.movie_no = movie_no;
		this.movie_time = movie_time;
		this.movie_name = movie_name;
		this.movie_genre = movie_genre;
		this.movie_director = movie_director;
		this.movie_mainactor = movie_mainactor;
		this.movie_score = movie_score;
		this.movie_reldate = movie_reldate;
	}

	public int getMovie_no() {
		return movie_no;
	}

	public int getMovie_time() {
		return movie_time;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public String getMovie_genre() {
		return movie_genre;
	}

	public String getMovie_director() {
		return movie_director;
	}

	public String getMovie_mainactor() {
		return movie_mainactor;
	}

	public float getMovie_score() {
		return movie_score;
	}

	public Timestamp getMovie_reldate() {
		return movie_reldate;
	}

}