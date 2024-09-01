package portal.dbtask;
import java.sql.*;
public class AdminTask
{

	private static Connection con;
	private static PreparedStatement ps;
	private static ResultSet rs;
	public static ResultSet viewNotice(String sql) {
		try {
			con=DbConnection.openConnection();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return rs;
	}
	public static ResultSet viewNoticeContent(String sql, String noticeid)  {
		try {
			con=DbConnection.openConnection();
			ps=con.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(noticeid));
			rs=ps.executeQuery();
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return rs;
	}
	public static ResultSet viewContact(String strsql)  {
		try {
			con=DbConnection.openConnection();
			ps=con.prepareStatement(strsql);
			
			rs=ps.executeQuery();
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return rs;
	}
	
}
