package wishlist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import util.DBManager;

public class WishListDAO {
	private static WishListDAO instance = new WishListDAO();

	public static WishListDAO getInstance() {
		return instance;
	}

	private ArrayList<WishListDTO> wishList = null;

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public ArrayList<WishListDTO> getWishList() {

		try {
			conn = DBManager.getConnection();

			String str = "Select * from wishlist";
			pstmt = conn.prepareStatement(str);
			rs = pstmt.executeQuery();

			wishList = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String id = rs.getString(2);
				int movieNo = Integer.parseInt(rs.getString(3));
				String movieName = rs.getString(4);
				Timestamp addDate = Timestamp.valueOf(rs.getString(5));

				wishList.add(new WishListDTO(no, id, movieNo,movieName, addDate));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return wishList;
	}

	public ArrayList<WishListDTO> getWishListByUid(String uid) {

		try {
			conn = DBManager.getConnection();

			String str = "Select * from wishlist where user_id = ?";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();

			wishList = new ArrayList<>();

			while (rs.next()) {
				int no = Integer.parseInt(rs.getString(1));
				String id = rs.getString(2);
				int movieNo = Integer.parseInt(rs.getString(3));
				String movieName = rs.getString(4);
				Timestamp addDate = Timestamp.valueOf(rs.getString(5));

				wishList.add(new WishListDTO(no, id, movieNo,movieName, addDate));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return wishList;

	}

	public int getWishListCountByUid(String uid) {
		int cnt = -1;
		try {
			conn = DBManager.getConnection();

			String str = "Select count(*) from wishlist where user_id = ?";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();

			wishList = new ArrayList<>();

			while (rs.next()) {
				cnt = Integer.parseInt(rs.getString(1));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}

	public void addWishList(WishListDTO wish) {
		if (checkWishList(wish.getMovie_no(),wish.getUser_id())) {
			try {
				
				WishListDTO newWish = new WishListDTO(wish.getUser_id(),wish.getMovie_no(), wish.getMovie_name());
				
				conn = DBManager.getConnection();

				String str = "insert into wishlist(user_id,movie_no,movie_name) values(?,?,?)";
				pstmt = conn.prepareStatement(str);
				pstmt.setString(1, newWish.getUser_id());
				pstmt.setInt(2, newWish.getMovie_no());
				pstmt.setString(3, newWish.getMovie_name());
				pstmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public boolean checkWishList(int movie_no, String uid) {
		wishList = getWishList();
		for (WishListDTO wish : wishList) {
			if (movie_no == wish.getMovie_no() && wish.getUser_id().equals(uid)) {
				return false;
			}
		} 
		return true;
	}

}
