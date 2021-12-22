package ticketlist;

import java.sql.Timestamp;

public class TicketListDTO {
	private int user_id;
	private String movie_name, ticket_bench;
	private Timestamp ticket_date;

	
	
	public int getUser_id() {
		return user_id;
	}

	public TicketListDTO(int user_id, String movie_name, String ticket_bench, Timestamp ticket_date) {
		this.user_id = user_id;
		this.movie_name = movie_name;
		this.ticket_bench = ticket_bench;
		this.ticket_date = ticket_date;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getTicket_bench() {
		return ticket_bench;
	}

	public void setTicket_bench(String ticket_bench) {
		this.ticket_bench = ticket_bench;
	}

	public Timestamp getTicket_date() {
		return ticket_date;
	}

	public void setTicket_date(Timestamp ticket_date) {
		this.ticket_date = ticket_date;
	}

	public String getMovie_name() {
		return movie_name;
	}

}
