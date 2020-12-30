package dao;
import dbcon.DatabaseConnection;
import java.util.*;
import dto.time;
import javafx.scene.chart.PieChart.Data;

import java.sql.*;
public class timeDao extends time{
	ResultSet rs;
	PreparedStatement pst;
	Connection con;
	public ArrayList<time> getTimeBySubcatId(int subcatid)
	{
		ArrayList<time> lst = new ArrayList<>();
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from time where subcatid = ?");
			pst.setInt(1,subcatid);
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					time td = new time();
					td.setMaidtime(rs.getString(1));
					td.setSubcat(rs.getInt(2));
					lst.add(td);
				}
				
			}
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lst;
		
	}
	public boolean inserttime(String maidtime ,String id,boolean isoccupied)
	{
		boolean b =false;
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("insert into time VALUES(?,?,?)");
			pst.setString(1, maidtime);
			pst.setString(2, id);
			pst.setBoolean(3, true);
			int count = pst.executeUpdate();
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
	
	
	public boolean insertTimebySubcatid(ArrayList<String> maidtime ,int subcatid)
	{
		boolean b=false;
		try
		{
			con = DatabaseConnection.getConnection();
			
			if(maidtime!=null)
			{
			for(String s:maidtime)
			{
				pst = con.prepareStatement("insert into time values(?,?)");
				pst.setString(1, s);
				pst.setInt(2,subcatid);
				int count = pst.executeUpdate();
				if(count>0)
				{
					b=true;
				}
				
			}
			
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
		
	}

}
