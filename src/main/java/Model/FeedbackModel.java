package Model;

public class FeedbackModel {
	String rating;
	String msg;
	String email;
	int id;
	
	public FeedbackModel(String rating, String msg, String email, int id) {
		super();
		this.rating = rating;
		this.msg = msg;
		this.email = email;
		this.id = id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public FeedbackModel(String rating, String msg, String email) {
		
		this.rating = rating;
		this.msg = msg;
		this.email = email;
	}
	
	

}
