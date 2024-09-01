package portal.dbtask;
import java.sql.*;
import  java.util.*;
import portal.beans.*;


public class DonorTask {
	private   static Connection con;
	private  static PreparedStatement ps;
	private static ResultSet rs;
	private  static ArrayList<Donor>donorlist= new ArrayList<Donor>();
	
	public static ArrayList<Donor> cityWiseDonors(String sql,String cityname)
	{
		Donor d=null;
		if(!donorlist.isEmpty())
			donorlist.clear();
		con =DbConnection.openConnection();
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, cityname);
			rs=ps.executeQuery();
			while(rs.next())
			{
				String name=rs.getString("name");
				String email=rs.getString("email");
				int age=rs.getInt("age");
				String gender=rs.getString("gender");
				String bloodgroup=rs.getString("bloodgroup");
				String phone=rs.getString("phone");
				String city=rs.getString("city");
				d=new Donor(name, email, phone, gender, bloodgroup, city, age);
				donorlist.add(d);
				
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			if(rs!=null||ps!=null)
			{
				try {
					rs.close();
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return donorlist;
	}
	
	public static ResultSet getData(String sql,String id)
	{
		con =DbConnection.openConnection();
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return rs;
	}
	
	
	public static ResultSet donor_views(String sql)
	{
		con =DbConnection.openConnection();
		try {
			ps=con.prepareStatement(sql);
		
			rs=ps.executeQuery();
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return rs;
	}

}
