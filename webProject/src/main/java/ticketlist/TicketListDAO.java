package ticketlist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TicketListDAO {
	private static TicketListDAO instance = new TicketListDAO();

	public static TicketListDAO getInstance() {
		return instance;
	}
	
	private ArrayList<TicketListDTO> ticketList = null;
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
}
