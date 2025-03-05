package Package_Java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBC_Connection {
	public static void main(String args[]) {
		try {
			// 1] Register Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2]  Create Connection 
			Connection con = null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anudip", "root", "Harshada@123");
			System.out.println(con);
			//3] Create Statement
			Statement stmt = con.createStatement();
			//4] Excute Query
			ResultSet rs = stmt.executeQuery("select * from Person");
			while(rs.next()) {
				System.out.println(rs.getInt(1)+" "+ rs.getString(2)+" "+rs.getInt(3));
			}
			// close connection
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}

// OUTPUT
/* 
 com.mysql.cj.jdbc.ConnectionImpl@43c1b556
1 Harshada 21
2 asavari 22
3 Aishwarya 20

*/
