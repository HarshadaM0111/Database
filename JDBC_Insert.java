package Package_Java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBC_Insert {

	public static void main(String[] args) {

		try {
			// 1] Register Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2]  Create Connection 
			Connection con = null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anudip", "root", "Harshada@123");
			System.out.println(con);
			//3] Create Statement
			PreparedStatement ps=con.prepareStatement("insert into Person values(?,?,?)");
			ps.setInt(1,5);
			ps.setString(2, "Raj");
			ps.setInt(3,25);
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+"record inserted sucessfully");
			// close connection
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}

	}

}
//output
/*
com.mysql.cj.jdbc.ConnectionImpl@43c1b556
1record inserted sucessfully

*/
