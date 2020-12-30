package dao;

import dbcon.DatabaseConnection;
import dto.city;
import java.sql.*;
import java.util.*;

public class cityDao extends city {
	
	Connection con;
	PreparedStatement pst;
	ResultSet rs ;
	
	public ArrayList<city> getallcity()
	{
		ArrayList<city> lst = new ArrayList<city>();
		try
		{
			con = DatabaseConnection.getConnection();
			pst = con.prepareStatement("select * from city");
			rs = pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				while(rs.next())
				{
					city obj = new city();
					obj.setId(rs.getInt(1));
					obj.setName(rs.getString(2));
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
	
	public String getsubcityNamebyCityidAndSubcityid(int cityID, int subCityID)
	{
		String name="";
		try
		{
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("select * from subcity where id = ? and cityid = ?");
			pst.setInt(1,subCityID);
			pst.setInt(2, cityID);
			
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				rs.next();
				name=rs.getString(2);
			}
			
			
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return name;
	}
	public String getcityNamebyCityid(int cityID)
	{
		String name="";
		try
		{
			con=DatabaseConnection.getConnection();
			pst=con.prepareStatement("select * from city where id = ?");
			pst.setInt(1,cityID);
			
			rs=pst.executeQuery();
			if(rs.isBeforeFirst())
			{
				rs.next();
				name=rs.getString(2);
			}
			
			
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return name;
	}
	
	
	
	
	
	

}
