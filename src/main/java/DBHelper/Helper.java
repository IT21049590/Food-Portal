package DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DB.DB;
import Model.FeedbackModel;

public class Helper {

	public String saveFeedback(FeedbackModel model) {
		String output;
		try {
			Connection con = DB.getconnection();
			PreparedStatement pst;
			String sql = "INSERT INTO `feedback`( `rating`, `msg`, `email`) VALUES (?,?,?);";

			pst = con.prepareStatement(sql);
			pst.setString(1, model.getRating());
			pst.setString(2, model.getMsg());
			pst.setString(3, model.getEmail());
			int row = pst.executeUpdate();

			if (row > 0) {
				output = "Succesfull";
			} else {
				output = "Error While Inserting !!";

			}
		} catch (Exception ex) {
			output = ex + "";
		}

		return output;
	}
	
	public String update(FeedbackModel model) {
		String output;
		try {
			Connection con = DB.getconnection();
			PreparedStatement pst;
			String sql = "UPDATE `feedback` SET `rating`=?,`msg`=?,`email`=? WHERE feedback_id=?;";

			pst = con.prepareStatement(sql);
			pst.setString(1, model.getRating());
			pst.setString(2, model.getMsg());
			pst.setString(3, model.getEmail());
			pst.setInt(4, model.getId());
			int row = pst.executeUpdate();

			if (row > 0) {
				output = "Succesfull";
			} else {
				output = "Error While Updating !!";

			}
		} catch (Exception ex) {
			output = ex + "";
		}

		return output;
	}
	 //for Login user
    public boolean checkuser(String email,String password)
	{
		boolean st=false;
		try {
			 Connection con=DB.getconnection();
			 PreparedStatement ps=(PreparedStatement) con.prepareStatement("select  * from users where email=? and password=?");
			 ps.setString(1, email);
	         ps.setString(2, password);
	         ResultSet rs=ps.executeQuery();
	         st= rs.next();
	         
	        
	        
	         
		}
		catch(Exception ex)
		{
			 ex.printStackTrace();
		}
		return st;
	}
}
