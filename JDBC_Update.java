package Package_Java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class JDBC_Update {

	public static void main(String[] args) {
		try {
			// Register 
			Class.forName("com.mysql.jdbc.Driver");
			// Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anudip", "root", "Harshada@123");
			//Create Statement
			PreparedStatement ps = con.prepareStatement("update Person set Person_Name=? where Person_id =?");
			ps.setString(1,"Shweta");
			ps.setInt(2, 5);
			//Excute Statement
			int i= ps.executeUpdate();
			System.out.println(i+"Record Upadated Successfully !! ");
			
			//close connection
			con.close();
			
		} catch(Exception e) 
		{
			System.out.println(e);
		}

}
}
//output
/*
 com.mysql.cj.jdbc.ConnectionImpl@43c1b556
 1Record Upadated Successfully !! */
 */