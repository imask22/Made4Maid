package dao;
import dbcon.DatabaseConnection;
import java.util.*;
import java.sql.*;
import dto.*;
public class whydenyDao extends whydeny {
	Connection con;
	ResultSet rs;
	PreparedStatement pst;
	
	public boolean add_DenyReason(int post_id,String Desc,String maidid,String custid)
	{
		boolean b=false;
		try
		{
			con=DatabaseConnection.getConnection();
			pst= con.prepareStatement("insert into whydeny values(?,?,?,?)");
			pst.setInt(1, post_id);
			pst.setString(2, Desc);
			pst.setString(3, maidid);
			pst.setString(4, custid);
			
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
	public ArrayList<whydeny> fetchDenyReasonmaid()
	{
		ArrayList<whydeny> lst = new ArrayList<>();
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from whydeny where custid = ?");
			pst.setString(1, "");
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					whydeny obj = new whydeny();
					obj.setPid(rs.getInt(1));
					obj.setWhyDesc(rs.getString(2));
					obj.setMaid(rs.getString(3));
					obj.setCustid(rs.getString(4));
					lst.add(obj);
					
				}
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lst;
	}
	
	
	public ArrayList<whydeny> fetchDenyReasoncustomer()
	{
		ArrayList<whydeny> lst = new ArrayList<>();
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from whydeny where maidid = ?");
			pst.setString(1, "");
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					whydeny obj = new whydeny();
					obj.setPid(rs.getInt(1));
					obj.setWhyDesc(rs.getString(2));
					obj.setMaid(rs.getString(3));
					obj.setCustid(rs.getString(4));
					lst.add(obj);
					
				}
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lst;
	}
	

}
