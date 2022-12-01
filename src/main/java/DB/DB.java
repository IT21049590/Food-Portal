package DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
	

	
	public static Connection getconnection()  throws Exception
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/food","root","");
		return con;
	}

}
