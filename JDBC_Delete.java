package Package_Java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBC_Delete {

	public static void main(String[] args) {
		try {
			// 1] Register Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2]  Create Connection 
			Connection con = null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anudip", "root", "Harshada@123");
			System.out.println(con);
			//3.create statment
			PreparedStatement ps=con.prepareStatement("delete from Person where  Person_id=?");
			ps.setInt(1,3);
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+"record deleted  sucessfully");
			//5.Close connection
			con.close();
		}catch(Exception e) {
			System.out.println(e);
		}


	}

}
//OUTPUT
/*
 com.mysql.cj.jdbc.ConnectionImpl@43c1b556
1record deleted  sucessfully
*/
