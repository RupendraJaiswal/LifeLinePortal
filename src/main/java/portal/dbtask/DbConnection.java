package portal.dbtask;

import java.sql.*;
import java.util.ResourceBundle;
public class DbConnection 
{
	private static Connection con;
	private static ResourceBundle rb;
	public static Connection openConnection ()
	{
		try 
		{
			rb=ResourceBundle.getBundle("portal.dbtask.dbinfo");
			String db_userId= rb.getString("db.username");
			String db_userPass= rb.getString("db.userpass");
			String db_URL= rb.getString("db.url");
		
			/* when we not useing property file
			 * Class.forName("com.mysql.cj.jdbc.Driver");//it is used to create object of
			 * driver class //factory method-> is used to instantiate the class con
			 * =DriverManager.getConnection("jdbc:mysql://localhost:3306/lifeline_db","root"
			 * ,"root");
			 */
			Class.forName("com.mysql.cj.jdbc.Driver");//it is used to create object of driver class
			//factory method-> is used to instantiate the class
			con =DriverManager.getConnection(db_URL,db_userId, db_userPass);
		
		
		} 
		
		catch(ClassNotFoundException|SQLException cse)
		{
			cse.printStackTrace();
		}
		return con;
	}
/*
	public static void main(String[] args)
	{
		
		Connection con= openConnection();
		System.out.println(con);
	}
	*/
	public static void closeConnection()
	{
		try {
			if (con!=null)
				con.close();//close method generate checked exception so we use catch block
		}
		catch(SQLException se){
			se.printStackTrace();
		}
	}
	
}
