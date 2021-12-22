package movielist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import util.DBManager;

public class MovieListDAO {

	private static MovieListDAO instance = new MovieListDAO();

	public static MovieListDAO getInstance() {
		return instance;
	}

	private ArrayList<MovieListDTO> contents = null;

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public ArrayList<MovieListDTO> getMoviesbyRecentDate() {
		try {
			conn = DBManager.getConnection();

			String str = "select * from movielist order by movie_reldate desc";
			pstmt = conn.prepareStatement(str);
			rs = pstmt.executeQuery();

			contents = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String name = rs.getString(2);
				float score = Float.parseFloat(rs.getString(3));
				int time = Integer.parseInt(rs.getString(4));
				Timestamp relDate = Timestamp.valueOf(rs.getString(5));
				String genre = rs.getString(6);
				String director = rs.getString(7);
				String mainActor = rs.getString(8);

				contents.add(new MovieListDTO(no, name, score, time, relDate, genre, director, mainActor));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return contents;
	}

	public ArrayList<MovieListDTO> getMoviesbyOldDate() {
		try {
			conn = DBManager.getConnection();

			String str = "select * from movielist order by movie_reldate";
			pstmt = conn.prepareStatement(str);
			rs = pstmt.executeQuery();

			contents = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String name = rs.getString(2);
				float score = Float.parseFloat(rs.getString(3));
				int time = Integer.parseInt(rs.getString(4));
				Timestamp relDate = Timestamp.valueOf(rs.getString(5));
				String genre = rs.getString(6);
				String director = rs.getString(7);
				String mainActor = rs.getString(8);

				contents.add(new MovieListDTO(no, name, score, time, relDate, genre, director, mainActor));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return contents;
	}

	public ArrayList<MovieListDTO> getMoviesbyScoreHigh() {
		try {
			conn = DBManager.getConnection();

			String str = "select * from movielist order by movie_score desc";
			pstmt = conn.prepareStatement(str);
			rs = pstmt.executeQuery();

			contents = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String name = rs.getString(2);
				float score = Float.parseFloat(rs.getString(3));
				int time = Integer.parseInt(rs.getString(4));
				Timestamp relDate = Timestamp.valueOf(rs.getString(5));
				String genre = rs.getString(6);
				String director = rs.getString(7);
				String mainActor = rs.getString(8);

				contents.add(new MovieListDTO(no, name, score, time, relDate, genre, director, mainActor));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return contents;
	}

	public ArrayList<MovieListDTO> getMoviesbyScoreLow() {
		try {
			conn = DBManager.getConnection();

			String str = "select * from movielist order by movie_score";
			pstmt = conn.prepareStatement(str);
			rs = pstmt.executeQuery();

			contents = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String name = rs.getString(2);
				float score = Float.parseFloat(rs.getString(3));
				int time = Integer.parseInt(rs.getString(4));
				Timestamp relDate = Timestamp.valueOf(rs.getString(5));
				String genre = rs.getString(6);
				String director = rs.getString(7);
				String mainActor = rs.getString(8);

				contents.add(new MovieListDTO(no, name, score, time, relDate, genre, director, mainActor));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return contents;
	}

	public ArrayList<MovieListDTO> getMoviesbyTimeShort() {
		try {
			conn = DBManager.getConnection();

			String str = "select * from movielist order by movie_time";
			pstmt = conn.prepareStatement(str);
			rs = pstmt.executeQuery();

			contents = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String name = rs.getString(2);
				float score = Float.parseFloat(rs.getString(3));
				int time = Integer.parseInt(rs.getString(4));
				Timestamp relDate = Timestamp.valueOf(rs.getString(5));
				String genre = rs.getString(6);
				String director = rs.getString(7);
				String mainActor = rs.getString(8);

				contents.add(new MovieListDTO(no, name, score, time, relDate, genre, director, mainActor));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return contents;
	}

	public String getMoviesNameById(String movieNo) {
		String name = "";
		try {
			conn = DBManager.getConnection();

			String str = "select movie_name from movielist where movie_no =  ?";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, movieNo);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				name = rs.getString(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return name;
	}
}
