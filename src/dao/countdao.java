package dao;
import dbcon.DatabaseConnection;
import dto.countdto;
import java.sql.*;
import java.util.*;

public class countdao {

	Connection con;
	ResultSet rs;
	PreparedStatement pst;
	
	public boolean Insertnewcustomer(String custid)
	{
		boolean b= false;
		try
		{
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("INSERT INTO registeredcount VALUES(?,?,?)");
			pst.setString(1, custid);
			pst.setString(2, "customer");
			Timestamp ts = new Timestamp(System.currentTimeMillis());
			pst.setTimestamp(3, ts);
			int count=pst.executeUpdate();
			if(count>0)
			{
				b=true;
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
	}
	public boolean Insertnewmaid(String maidid)
	{
		boolean b= false;
		try
		{
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("INSERT INTO registeredcount VALUES(?,?,?)");
			pst.setString(1, maidid);
			pst.setString(2, "maid");
			Timestamp ts = new Timestamp(System.currentTimeMillis());
			pst.setTimestamp(3, ts);
			int count=pst.executeUpdate();
			if(count>0)
			{
				b=true;
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
	}
	//getting no of registered maids
	public ArrayList<countdto> getcount(String tag)
	{
		ArrayList<countdto> cd = new ArrayList<>();
		
		try
		{
			con=DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from registeredcount where tag = ?");
			pst.setString(1,tag);
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					countdto obj = new countdto();
					obj.setUserid(rs.getString(1));
					obj.setTag(rs.getString(2));
					obj.setDate(rs.getTimestamp(3));
					cd.add(obj);
				}
			}
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		return cd;
	}
	

}
